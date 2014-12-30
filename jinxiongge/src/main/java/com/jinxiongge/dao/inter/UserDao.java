package com.jinxiongge.dao.inter;

import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.model.User;

public interface UserDao {
	/**
	 * 添加用户
	 * @param user
	 * @return
	 */
	Integer save(User user);
	
	/**
	 * 修改用户
	 * @param user
	 * @return
	 */
	Integer update(User user);
	
	/**
	 * 根据uid查找用户
	 * @param uid
	 * @return
	 */
	User getById(Integer uid);
	
	/**
	 * 根据手机或用户名查找用户
	 * @param uid
	 * @return
	 */
	User getByTelOrUsername(String telname);
	
	/**
	 * 根据uid删除用户
	 * @param uid
	 * @return
	 */
	Integer deleteById(int uid);
	
	/**
	 * 获取满足条件的用户数量
	 * @param uid
	 * @return
	 */
	Integer getCountBy(User user);
	
	/**
	 * @param params 参数
	 * @param pageBounds RowBounds
	 * @return
	 */
	PageList<User> findPageBy(Map<String, Object> params, PageBounds pageBounds);

	Integer freeze(Map<String, Object> params);
	

}
