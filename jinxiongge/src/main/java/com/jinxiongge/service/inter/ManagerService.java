package com.jinxiongge.service.inter;

import com.jinxiongge.exception.CommonException;
import com.jinxiongge.result.model.RtResult;

public interface ManagerService {

	/**
	 * 登陆用户
	 * @param param
	 * @return
	 */
	RtResult login(String  username) throws CommonException;
	
}
