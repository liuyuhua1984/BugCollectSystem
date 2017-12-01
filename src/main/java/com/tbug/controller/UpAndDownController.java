package com.tbug.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tbug.model.Bugs;
import com.tbug.service.BugsService;
import com.tbug.utils.ShowPage;
import com.tbug.utils.ToolUtils;

@Controller
public class UpAndDownController extends BaseController {

	@Autowired
	private BugsService bugsService;
	
	private final static String SUFFIX=".txt";
	@RequestMapping(value="/upload_file",method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> uploadFile(HttpSession session, HttpServletRequest request,@RequestParam(value = "folder", defaultValue = "jz") String folder) {

		Map<String, String> map = new HashMap<String, String>();

		String userId = request.getParameter("openId");//openId
		String playerId = request.getParameter("playerId");//玩家id
		String data = request.getParameter("data");//记录的内容
		String name = request.getParameter("name");//角色名字
		String desc = request.getParameter("descs");//问题描述
		
		if (folder == null || folder.equals("")) {// 上传文件夹为空
			map.put("res", "-1");
			map.put("msg", "上传文件夹为空");
			logger.error("上传文件夹为空:" + folder);
			return map;
		}

		if (userId == null || userId.equals("")) {// 玩家帐号为空
			map.put("res", "-2");
			logger.error("玩家帐号为空:" + userId);
			map.put("msg", "玩家帐号为空");
			return map;
		}

//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
//		String myDate = sdf.format(new Date(System.currentTimeMillis()));


		// 得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
		String savePath = session.getServletContext().getRealPath("/upload/" + folder + File.separator);

		File tFile = new File(savePath);
		if (!tFile.exists()) {
			// 创建临时目录
			tFile.mkdirs();
		}
		FileOutputStream out = null;
		try {
			long curTime = System.currentTimeMillis();
			
			Bugs bugs = new Bugs();
			bugs.setPlayerName(name);
			bugs.setOpenId(userId);
			bugs.setPlayerId(playerId);
			bugs.setDescs(desc);
			bugs.setFolder(folder);
			bugs.setCreateTime(new Date(curTime));
			
			bugsService.insert(bugs);
			
			File file = new File(savePath + File.separator + bugs.getId()+SUFFIX);

			if (!file.exists()) {
				file.createNewFile();
			}

			out = new FileOutputStream(file, true);
			out.write((data + "\r\n").getBytes("utf-8"));

			out.flush();
		
	
			
			map.put("res", "1");
			map.put("msg", "上传成功");
			logger.error("文件上传成功::" + folder);

		} catch (Exception e) {
			e.printStackTrace();
			map.put("res", "-4");
			map.put("msg", "文件上传异常");
			logger.error("文件上传异常", e);
			return map;
		} finally {
			if (out != null) {
				try {
					out.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return map;
	}

	/**
	 * @param session
	 * @param request
	 * @param response
	 */
	@RequestMapping("/download_file")
	public void downLoadFile(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		
		//File.separator + userId+"_"+playerId+"_"+name+"_"+curTime+SUFFIX
		String bugsId = request.getParameter("id");
		Bugs bugs =	bugsService.findById(Long.parseLong(bugsId));

		String fileSaveRootPath = session.getServletContext()
				.getRealPath("/upload/" + bugs.getFolder() + File.separator );

		try {
			File file = new File(fileSaveRootPath + File.separator + bugs.getId()+SUFFIX);

			if (file.exists()) {
				// 设置响应头，控制浏览器下载该文件
				response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(bugs.getOpenId()+"_"+bugs.getPlayerId()+"_"+bugs.getPlayerName()+SUFFIX, "UTF-8"));
				// 读取要下载的文件，保存到文件输入流
				FileInputStream in = new FileInputStream(file);
				// 创建输出流
				OutputStream out = response.getOutputStream();
				// 创建缓冲区
				byte buffer[] = new byte[1024];
				int len = 0;
				// 循环将输入流中的内容读取到缓冲区当中
				while ((len = in.read(buffer)) > 0) {
					// 输出缓冲区的内容到浏览器，实现文件下载
					out.write(buffer, 0, len);
				}
				// 关闭文件输入流
				in.close();
				// 关闭输出流
				out.close();
			} else {
				response.getWriter().write("文件不存在!!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("下载异常::", e);
		}
	
	}
	
	
	/**
	 * getProxyMyList:(). <br/>
	 * TODO().<br/>
	 * 我的代理
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/bug_list")
	public ModelAndView getBugList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage, String startDate, String endDate, String openId, String playerId,String playerName,String descs,@RequestParam(value = "folder", defaultValue = "jz")String folder) {
		ModelAndView view = new ModelAndView("/BugsList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);

		
		List<Bugs> list = new ArrayList<Bugs>();
		Date dStartDate = null;
		Date dEndDate = null;
		if (!ToolUtils.isStringNull(startDate)) {
			
			dStartDate = ToolUtils.getStartDateOneDay(startDate);
			if (ToolUtils.isStringNull(endDate)) {
				endDate = ToolUtils.getDateStringFromat(new Date(System.currentTimeMillis()));
			}
			
			dEndDate = ToolUtils.getEndDateOneDay(endDate);
		}
		list = bugsService.getBugs( dStartDate, dEndDate,openId, playerId, playerName, descs,folder);
		
		PageInfo<Bugs> pageInfo = new PageInfo<Bugs>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		// view.addObject("startDate", startDate);
		// view.addObject("endDate", endDate);
		// view.addObject("phone", phone);
		// view.addObject("inivteCode", inviteCode);
		return view;
	
	}

}
