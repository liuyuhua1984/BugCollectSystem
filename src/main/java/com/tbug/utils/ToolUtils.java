package com.tbug.utils;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/**
 * 工具类
 * 
 * @author lyh1984
 */
public class ToolUtils {
	
	/**
	 * 分隔字符串
	 * 
	 * @param srcStr
	 * @param separate "分隔符"
	 * @return
	 */
	public static String[] split(String srcStr, String separate) {
		List<String> list = new ArrayList<String>();
		if (srcStr != null) {
			int i = 0;
			int j = 0;
			while ((i = srcStr.indexOf(separate, i)) != -1) {
				list.add(srcStr.substring(j, i));
				j = i + separate.length();
				i = j;
			}
			
			list.add(srcStr.substring(j, srcStr.length()));
		}
		
		String str[] = new String[list.size()];
		for (int i = 0; i < str.length; i++) {
			str[i] = list.get(i);
		}
		return str;
	}
	
	/**
	 * 解析配置表字符串,先按照 split_point 分解，在以 split_star 分解
	 * 
	 * @param srcStr
	 * @param split_point
	 * @param split_star
	 * @return
	 */
	public static int[][] splitStr(String srcStr, String split_point, String split_star) {
		int[][] tmp = null;
		String str[] = ToolUtils.split(srcStr, split_point);
		if (str != null) {
			tmp = new int[str.length][];
			for (int i = 0; i < str.length; i++) {
				String tmp_1[] = ToolUtils.split(str[i], split_star);
				tmp[i] = new int[tmp_1.length];
				for (int j = 0; j < tmp_1.length; j++) {
					tmp[i][j] = Integer.parseInt(tmp_1[j]);
				}
			}
		}
		return tmp;
	}
	
	/**
	 * 解析配置表字符串,先按照 split_point 分解，在以 split_star 分解
	 * 
	 * @param srcStr
	 * @param split_point
	 * @param split_star
	 * @return
	 */
	public static float[][] splitStrFloat(String srcStr, String split_point, String split_star) {
		float[][] tmp = null;
		String str[] = ToolUtils.split(srcStr, split_point);
		if (str != null) {
			tmp = new float[str.length][];
			for (int i = 0; i < str.length; i++) {
				String tmp_1[] = ToolUtils.split(str[i], split_star);
				tmp[i] = new float[tmp_1.length];
				for (int j = 0; j < tmp_1.length; j++) {
					tmp[i][j] = Float.parseFloat(tmp_1[j]);
				}
			}
		}
		return tmp;
	}
	
	/**
	 * 判断是不是同一天
	 * 
	 * @param lastFecthTime
	 * @return
	 */
	public static boolean isSameDay(Timestamp stamp) {
		
		Date d = new Date(System.currentTimeMillis());
		SimpleDateFormat f = new SimpleDateFormat("yyyyMMdd");
		String dString = f.format(d);
		
		Date currentTime = stamp;
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String dateString = format.format(currentTime);
		
		if (dateString.equals(dString)) {
			return true;
		}
		return false;
	}
	
	/**
	 * 通过一个固定的时间和当前时间相比 得到天数
	 * 
	 * @param lastFecthTime
	 * @return
	 */
	public static int getDays(Timestamp stamp) {
		long nowTime = (System.currentTimeMillis() - stamp.getTime()) / 1000;// 得到秒
		nowTime /= 60;// 得到分
		nowTime /= 60;// 得到小时
		nowTime /= 24;// 得到天
		// Date d = new Date(System.currentTimeMillis());
		// SimpleDateFormat f = new SimpleDateFormat("yyyyMMdd");
		// String dString = f.format(d);
		//
		// Date currentTime = stamp;
		// SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		// String dateString = format.format(currentTime);
		return (int) nowTime;
	}
	
	/**
	 * dateFormat:(). <br/>
	 * TODO("将字符串转换为毫秒时间").<br/>
	 * 
	 * @author lyh
	 * @param dateStr
	 * @return
	 */
	public static long dateFormat(String dateStr) {
		SimpleDateFormat sdfl = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		try {
			date = sdfl.parse(dateStr);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		if (date != null) {
			return date.getTime();
		} else {
			return 0;
		}
	}
	
	/**
	 * overDayAndHour:(). <br/>
	 * TODO().<br/>
	 * 是否是第二天,并超过规定的小时
	 * 
	 * @author lyh
	 * @param stamp
	 * @return true 表示超过了规定时间
	 */
	public static boolean overDayAndHour(Timestamp stamp, int hour) {
		// 当前时间
		Calendar c = Calendar.getInstance();
		// 上次更新时间
		Calendar l = Calendar.getInstance();
		l.setTimeInMillis(stamp.getTime());
		if ((c.getTimeInMillis() - stamp.getTime()) / 1000 / 60 / 60 >= 24) {
			return true;
		}
		
		// 判断是否是同一天
		if (c.get(Calendar.DAY_OF_YEAR) == l.get(Calendar.DAY_OF_YEAR)) {
			if (l.get(Calendar.HOUR_OF_DAY) >= hour) {
				return false;
			}
		}
		
		// 判断是否超过规定的小时
		if (c.get(Calendar.HOUR_OF_DAY) < hour) {
			return false;
		}
		
		return true;
	}
	
	/**
	 * overDayAndMinute:(). <br/>
	 * TODO(是否是第二天,并超过规定的小时和规定分钟).<br/>
	 * 
	 * @author yst
	 * @param stamp
	 * @param hour
	 * @param minute
	 * @return true 表示超过了规定时间
	 */
	public static boolean overDayAndMinute(Timestamp stamp, int hour, int minute) {
		Calendar c = Calendar.getInstance();
		Calendar l = Calendar.getInstance();
		l.setTimeInMillis(stamp.getTime());
		if ((c.getTimeInMillis() - stamp.getTime()) / 1000 / 60 / 60 >= 24) {
			return true;
		}
		
		// 判断是否是同一天
		if (c.get(Calendar.DAY_OF_YEAR) == l.get(Calendar.DAY_OF_YEAR)) {
			if (l.get(Calendar.HOUR_OF_DAY) >= hour) {
				return false;
			}
		}
		
		// 判断是否超过规定的小时
		if (c.get(Calendar.HOUR_OF_DAY) < hour) {
			return false;
		}
		
		// 判断是否超过规定的分钟
		if (c.get(Calendar.HOUR_OF_DAY) < minute) {
			return false;
		}
		
		return true;
	}
	
	/**
	 * 分隔字符串
	 * 
	 * @param srcStr
	 * @param separate "分隔符"
	 * @return
	 */
	public static int[] splitStringToInt(String srcStr, String separate) {
		List<String> list = new ArrayList<String>();
		if (srcStr != null) {
			int i = 0;
			int j = 0;
			while ((i = srcStr.indexOf(separate, i)) != -1) {
				list.add(srcStr.substring(j, i));
				j = i + separate.length();
				i = j;
			}
			
			list.add(srcStr.substring(j, srcStr.length()));
		}
		
		int str[] = new int[list.size()];
		for (int i = 0; i < str.length; i++) {
			str[i] = Integer.parseInt(list.get(i));
		}
		return str;
	}
	
	/**
	 * 分隔字符串
	 * 
	 * @param srcStr
	 * @param separate "分隔符"
	 * @return
	 */
	public static String[] splitStringToString(String srcStr, String separate) {
		List<String> list = new ArrayList<String>();
		if (srcStr != null) {
			int i = 0;
			int j = 0;
			while ((i = srcStr.indexOf(separate, i)) != -1) {
				list.add(srcStr.substring(j, i));
				j = i + separate.length();
				i = j;
			}
			list.add(srcStr.substring(j, srcStr.length()));
		}
		
		String str[] = new String[list.size()];
		for (int i = 0; i < str.length; i++) {
			str[i] = list.get(i);
		}
		return str;
	}
	
	/**
	 * 分隔字符串
	 * 
	 * @param srcStr
	 * @param separate "分隔符"
	 * @return
	 */
	public static short[] splitStringToShort(String srcStr, String separate) {
		List<String> list = new ArrayList<String>();
		if (srcStr != null) {
			int i = 0;
			int j = 0;
			while ((i = srcStr.indexOf(separate, i)) != -1) {
				list.add(srcStr.substring(j, i));
				j = i + separate.length();
				i = j;
			}
			
			list.add(srcStr.substring(j, srcStr.length()));
		}
		
		short str[] = new short[list.size()];
		for (int i = 0; i < str.length; i++) {
			str[i] = Short.parseShort(list.get(i));
		}
		return str;
	}
	
	/**
	 * 分隔字符串
	 * 
	 * @param srcStr
	 * @param separate "分隔符"
	 * @return
	 */
	public static byte[] splitStringToByte(String srcStr, String separate) {
		List<String> list = new ArrayList<String>();
		if (srcStr != null) {
			int i = 0;
			int j = 0;
			while ((i = srcStr.indexOf(separate, i)) != -1) {
				list.add(srcStr.substring(j, i));
				j = i + separate.length();
				i = j;
			}
			
			list.add(srcStr.substring(j, srcStr.length()));
		}
		
		byte str[] = new byte[list.size()];
		for (int i = 0; i < str.length; i++) {
			str[i] = Byte.parseByte(list.get(i));
		}
		return str;
	}
	
	/**
	 * 分隔字符串
	 * 
	 * @param srcStr
	 * @param separate "分隔符"
	 * @return
	 */
	public static long[] splitStringToLong(String srcStr, String separate) {
		List<String> list = new ArrayList<String>();
		if (srcStr != null) {
			int i = 0;
			int j = 0;
			while ((i = srcStr.indexOf(separate, i)) != -1) {
				list.add(srcStr.substring(j, i));
				j = i + separate.length();
				i = j;
			}
			
			list.add(srcStr.substring(j, srcStr.length()));
		}
		
		long str[] = new long[list.size()];
		for (int i = 0; i < str.length; i++) {
			str[i] = Long.parseLong(list.get(i));
		}
		return str;
	}
	
	/**
	 * 判断 字符串是否没有值和空
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isStringNull(String str) {
		if (str != null && !str.equals("")) {
			return false;
		}
		return true;
	}
	
	/**
	 * isSameTime:(). <br/>
	 * TODO("判断两个时间是否在同一分钟").<br/>
	 * 
	 * @author lxx
	 * @param curCalendar
	 * @param oldCalendar
	 * @return
	 */
	public static boolean isSameTimeByMinute(Timestamp curTimestamp, Timestamp oldTimestamp) {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmm");
		
		String currentTimeString = format.format(curTimestamp);
		
		String oldTimeString = format.format(oldTimestamp);
		
		if (currentTimeString.equals(oldTimeString)) {
			return true;
		}
		return false;
	}
	
	/**
	 * getDay:(). <br/>
	 * TODO("通过两个毫秒数计算之间相差的天数").<br/>
	 * 
	 * @author lxx
	 * @param maxTimeMillis
	 * @param minTimeMillis
	 * @return
	 */
	public static int getDay(long maxTimeMillis, long minTimeMillis) {
		int day = 0;
		if (maxTimeMillis >= minTimeMillis) {
			day = (int) ((maxTimeMillis - minTimeMillis) / 1000 / 60 / 60 / 24);
		}
		return day;
	}
	
	/**
	 * dateFormat:(). <br/>
	 * TODO(将时间转换为指定格式的字符串).<br/>
	 * 
	 * @author lxx
	 * @param pattern 格式
	 * @param obj
	 * @return
	 */
	public static String dateFormat(String pattern, Object obj) {
		return new SimpleDateFormat(pattern).format(obj);
	}
	
	/**
	 * nowAndTomorrow:(). <br/>
	 * TODO("指定的时间的明天的 00:00:00 点的毫秒数").<br/>
	 * 
	 * @author lxx
	 * @param currentTimeMillis
	 * @return
	 */
	public static long nowAndTomorrow(long currentTimeMillis) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(currentTimeMillis);
		calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH), calendar.get(Calendar.DATE) + 1, 0, 0, 0);
		calendar.set(Calendar.MILLISECOND, 0);
		return calendar.getTimeInMillis();
	}
	
	/**
	 * isSameDay:(). <br/>
	 * TODO("判断两个时间是不是同一天").<br/>
	 * 
	 * @author lxx
	 * @param stamp1
	 * @param stamp2
	 * @return
	 */
	public static boolean isSameDay(Timestamp stamp1, Timestamp stamp2) {
		
		Date d = stamp1;
		SimpleDateFormat f = new SimpleDateFormat("yyyyMMdd");
		String dString = f.format(d);
		
		Date currentTime = stamp2;
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String dateString = format.format(currentTime);
		
		if (dateString.equals(dString)) {
			return true;
		}
		return false;
	}
	
	/**
	 * 将字符串格式的日期转换为日期对象-"HH:mm:ss"
	 * 
	 * @Title:TODO
	 * @Description:TODO
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static Date formatDate(String date) throws ParseException {
		return new SimpleDateFormat("HH:mm:ss").parse(date);
	}
	
	/**
	 * 获取日期的时
	 * 
	 * @Title:TODO
	 * @Description:TODO
	 * @param date
	 * @return
	 */
	public static int getHour(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.HOUR_OF_DAY);
	}
	
	/**
	 * 获取日期的分
	 * 
	 * @Title:TODO
	 * @Description:TODO
	 * @param date
	 * @return
	 */
	public static int getMinute(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.MINUTE);
	}
	
	/**
	 * 获取日期的秒
	 * 
	 * @Title:TODO
	 * @Description:TODO
	 * @param date
	 * @return
	 */
	public static int getSecond(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.SECOND);
	}
	
	/**
	 * 获取星期几
	 * 
	 * @Title:TODO
	 * @Description:TODO
	 * @param date
	 * @return
	 */
	public static int getWeek(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.DAY_OF_WEEK);
	}
	
	/**
	 * date 转换为时间串
	 * 
	 * @param date
	 * @return
	 */
	public static String getDateString(java.util.Date date) {
		String str = "";
		try {
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			str = format.format(date);
		} catch (Exception e) {
		}
		return str;
	}
	
	public static String getNowDate() {
		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar now = Calendar.getInstance();
		return s.format(now.getTime()).toString();
	}
	
	public static String getNowDate(String format) {
		SimpleDateFormat s = new SimpleDateFormat(format);
		Calendar now = Calendar.getInstance();
		return s.format(now.getTime()).toString();
	}
	
	/**
	 * 大陆号码或香港号码均可
	 */
	public static boolean isPhoneLegal(String str) throws PatternSyntaxException {
		return isChinaPhoneLegal(str) || isHKPhoneLegal(str);
	}
	
	/**
	 * isNum:(). <br/>
	 * TODO().<br/>
	 * 判断是否是数据
	 * 
	 * @author lyh
	 * @param num
	 * @return
	 */
	public static boolean isNum(String num) {
		String reg = "^[1-9]\\d*$";
		Pattern p = Pattern.compile(reg);
		Matcher m = p.matcher(num);
		return m.matches();
	}
	
	/** 
	 * isNumAndLetter:(). <br/> 
	 * TODO().<br/> 
	 * 数字和字母
	 * @author lyh 
	 * @param num
	 * @param len
	 * @return 
	 */  
	public static boolean isNumAndLetter(String num,int min,int max) {
		String reg = "^[0-9A-Za-z]+$";
		Pattern p = Pattern.compile(reg);
		Matcher m = p.matcher(num);
		return m.find();
	}
	
	 /** 
	 * isContainChinese:(). <br/> 
	 * TODO().<br/> 
	 * 中文
	 * @author lyh 
	 * @param str
	 * @return 
	 */  
	public static boolean isContainChinese(String str) {

		        Pattern p = Pattern.compile("[\u4e00-\u9fa5]");
		        Matcher m = p.matcher(str);
		        if (m.find()) {
		            return true;
		        }
		        return false;
		    }
	/**
	 * 大陆手机号码11位数，匹配格式：前三位固定格式+后8位任意数 此方法中前三位格式有： 13+任意数 15+除4的任意数 18+除1和4的任意数 17+除9的任意数 147
	 */
	public static boolean isChinaPhoneLegal(String str) throws PatternSyntaxException {
		String regExp = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";
		Pattern p = Pattern.compile(regExp);
		Matcher m = p.matcher(str);
		return m.matches();
	}
	
	/**
	 * 香港手机号码8位数，5|6|8|9开头+7位任意数
	 */
	public static boolean isHKPhoneLegal(String str) throws PatternSyntaxException {
		String regExp = "^(5|6|8|9)\\d{7}$";
		Pattern p = Pattern.compile(regExp);
		Matcher m = p.matcher(str);
		return m.matches();
	}
	
	/**
	 * splitStringToMap:(). <br/>
	 * TODO().<br/>
	 * 分隔字符串到map
	 * 
	 * @author lyh
	 * @param srcString
	 * @param separatorOne
	 * @param mapSeparator
	 * @return
	 */
	public static Map<String, String> splitStringToMap(String srcStr, String separatorOne, String mapSeparator) {
		Map<String, String> map = new HashMap<String, String>();
		List<String> list = new ArrayList<String>();
		if (srcStr != null) {
			int i = 0;
			int j = 0;
			while ((i = srcStr.indexOf(separatorOne, i)) != -1) {
				list.add(srcStr.substring(j, i));
				j = i + separatorOne.length();
				i = j;
			}
			
			list.add(srcStr.substring(j, srcStr.length()));
		}
		for (String str : list) {
			int i = 0;
			if ((i = str.indexOf(mapSeparator, i)) != -1) {
				map.put(str.substring(0, i), str.substring(i + separatorOne.length(), str.length()));
			}
		}
		return map;
	}
	
	
	/**
	 * 返回普通sql日期
	 * 
	 * @param dates
	 * @return
	 */
	public static Date getSqlDate(String dates) {
		Date sqlDate = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			java.util.Date date = sdf.parse(dates);
			sqlDate = new Date(date.getTime());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sqlDate;
	}
	
	
	/** 
	 * getDateStringFromat:(). <br/> 
	 * TODO().<br/> 
	 *年月日字符串格式
	 * @author lyh 
	 * @param date
	 * @return 
	 */  
	public static String getDateStringFromat(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}
	
	
	/**
	 * 字符串时间 转换为Date
	 * 
	 * @param dates
	 * @return
	 */
	public static Date getDateByStr(String dates) {
		Date sqlDate = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			java.util.Date date = sdf.parse(dates);
			sqlDate = new Date(date.getTime());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sqlDate;
	}
	
	/**
	 * 字符串时间 转换为Date
	 * 
	 * @param dates
	 * @return
	 */
	public static Date getDateByStr2(String dates) {
		Date sqlDate = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			java.util.Date date = sdf.parse(dates);
			sqlDate = new Date(date.getTime());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sqlDate;
	}
	
	/**
	 * 返回当前精确sql日期
	 * 
	 * @return
	 */
	public static Timestamp getSqlTime() {
		Timestamp sqlDate = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			java.util.Date date = sdf.parse(getNowDate("yyyy-MM-dd HH:mm:ss"));
			sqlDate = new Timestamp(date.getTime());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sqlDate;
	}
	
	/**
	 * 字符串转换成日期
	 * 
	 * @param str
	 * @return date
	 */
	public static Date StrToDate(String str) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		try {
			date = format.parse(str);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return date;
	}
	
	/** 
	 * getStartDateOneDay:(). <br/> 
	 * TODO().<br/> 
	 * 一天的开始时间(从0点开始)
	 * @author lyh 
	 * @param strymd年月日
	 * @return 
	 */  
	public static Date getStartDateOneDay(String strymd){
		strymd+=" 00:00:00";
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		try {
			date = format.parse(strymd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return date;
	}
	
	/** 
	 * getEndDateOneDay:(). <br/> 
	 * TODO().<br/> 
	 * 
	 * @author lyh 
	 * @param strym一天结束时间
	 * @return 
	 */  
	public static Date getEndDateOneDay(String strymd){
		strymd+=" 23:59:59";
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		try {
			date = format.parse(strymd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return date;
	}
}
