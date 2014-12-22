package com.jinxiongge.service.inter;

import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.jinxiongge.exception.CommonException;
import com.jinxiongge.model.User;
import com.jinxiongge.result.model.RtResult;

public interface UserService {

	/**
	 * 注册用户
	 * @param user
	 * @return
	 */
	RtResult register(User user) throws CommonException;
	
	/**
	 * 查找用户
	 * @param uid
	 * @return
	 */
	RtResult queryByUid(int uid) throws CommonException;
	
	
	/**
	 * 登陆用户
	 * @param param
	 * @return
	 */
	RtResult login(String  telname) throws CommonException;
	
	/**
	 * 删除用户
	 * @param uid
	 * @return
	 */
	RtResult deleteByUid(int uid) throws CommonException;
	
	/**
	 * 更新用户，附上原数据
	 * @param Goods
	 * @return
	 */
	RtResult update(User user) throws CommonException;
	
	/**
	 * 条件查询用户数量
	 * @param Goods
	 * @return
	 */
	RtResult getCountBy(User user) throws CommonException;
	
	/**
	 * 用户分页
	 * @param 
	 * @return
	 */
	RtResult commonPage(Map<String, Object> params, PageBounds pageBounds) throws CommonException;
}
