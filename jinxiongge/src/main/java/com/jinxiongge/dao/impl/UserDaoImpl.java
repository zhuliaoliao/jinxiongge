package com.jinxiongge.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.common.base.dao.impl.MybatisBaseGenericDAOImpl;
import com.jinxiongge.dao.inter.UserDao;
import com.jinxiongge.model.User;


@Transactional  
@Repository("userDao")  
public class UserDaoImpl extends MybatisBaseGenericDAOImpl<User, Integer> implements UserDao {
	
	
	public UserDaoImpl() {
		super();
	}
	
	
	@Override
	public Integer save(User ob) {
		return super.save(ob);
	}
	
	@Override
	public Integer update(User ob) {
		return super.update(ob);
	}
	
	@Override
	public User getById(Integer uid) {
		return super.getById(uid);
	}


	@Override
	public PageList<User> findPageBy(Map<String, Object> params, PageBounds pageBounds) {
	    return commonPage("findPageBy", params, pageBounds);
	    
	}

	@Override
	public User getByTelOrUsername(String telname) {
		return (User) selectOne("login", telname);
	}


	@Override
	public Integer deleteById(int uid) {
		return super.deleteById(uid);
	}


	@Override
	public Integer getCountBy(User user) {
		return super.getCountBy(user);
	}



}
