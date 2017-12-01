package com.tbug.service;

import java.util.Date;
import java.util.List;

import com.tbug.model.Bugs;

public interface  BugsService extends BaseService<Bugs> {


	/**获取bugs记录列表
	 * @param startDate开始日期
	 * @param endDate 结束日期
	 * @param openId玩家账号
	 * @param playerId 玩家Id
	 * @param name玩家称
	 * @param desc描述
	 * @return
	 */
	List<Bugs> getBugs(Date startDate,Date endDate,String openId,String playerId,String name,String desc,String folder);
}
