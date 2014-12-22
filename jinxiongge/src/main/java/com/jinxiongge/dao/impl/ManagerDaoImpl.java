package com.jinxiongge.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jinxiongge.common.base.dao.impl.MybatisBaseGenericDAOImpl;
import com.jinxiongge.dao.inter.ManagerDao;
import com.jinxiongge.model.Manager;

@Transactional  
@Repository("managerDao")  
public class ManagerDaoImpl extends MybatisBaseGenericDAOImpl<Manager, Integer>implements ManagerDao {

	@Override
	public Manager login(String username) {
		return (Manager) selectOne("login", username);
	}

}
