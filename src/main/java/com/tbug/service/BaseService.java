package com.tbug.service;

/** 
 * ClassName:BaseService <br/> 
 * Function: TODO (). <br/> 
 * 基础service
 * Date:     2017年6月14日 下午3:27:10 <br/> 
 * @author   lyh 
 * @version   
 * @see       
 */
public interface BaseService<T> {
	
	void insert(T t);
	
	void update(T t);
	
	void delete(long id);
	
	 T findById(long id);
	 
}
  