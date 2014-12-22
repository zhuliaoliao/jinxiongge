package com.jinxiongge.service.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinxiongge.dao.inter.ManagerDao;
import com.jinxiongge.exception.CommonException;
import com.jinxiongge.model.Manager;
import com.jinxiongge.result.model.RtResult;
import com.jinxiongge.service.inter.ManagerService;

@Service("managerService")
public class ManagerServiceImpl implements ManagerService {

	private  Logger log = Logger.getLogger(ManagerServiceImpl.class);

	private ManagerDao managerDao;
	@Autowired
	public void setManagerDao(ManagerDao managerDao) {
		this.managerDao = managerDao;
	}
	
	@Override
	public RtResult login(String username)  throws CommonException{
		RtResult result = new RtResult();
		try {
			Manager manager=managerDao.login(username);
			if(manager!=null){
				result.setCode(0);
				result.setMessage("存在管理员:"+username);
				result.setData(manager);
			}else{
				result.setCode(41);
				result.setMessage("不存在管理员"+username);
			}
			log.info("用户查找信息:" + result);
			
		} catch (Exception e) {
			throw new CommonException(40, "查询管理员失败",e);
		}
		return result;
	}
	

	
}
