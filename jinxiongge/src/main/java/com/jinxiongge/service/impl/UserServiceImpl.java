package com.jinxiongge.service.impl;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.dao.inter.UserDao;
import com.jinxiongge.exception.CommonException;
import com.jinxiongge.exception.ErrorCode;
import com.jinxiongge.model.User;
import com.jinxiongge.result.model.RtResult;
import com.jinxiongge.service.inter.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	private  Logger log = Logger.getLogger(UserServiceImpl.class);

	private UserDao userDao;

	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public RtResult register(User user)  throws CommonException{
		RtResult result = new RtResult();
		try {
			Integer count = userDao.save(user);
			if (count > 0) {
				result.setCode(0);
				result.setMessage("注册用户成功");
				result.setData(user);
			} else {
				result.setCode(ErrorCode.USER_CODE);
				result.setMessage("注册用户失败,请确保用户名或手机号未被占用!");
				result.setData(user);
			}
			log.info("注册用户信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.USER_CODE, "注册用户失败，请确保用户名或手机号未被占用!",e);
		}
		return result;
	}
	
	
	@Override
	public RtResult login(String telname) throws CommonException {
		RtResult result = new RtResult();
		try {
			User user=userDao.getByTelOrUsername(telname);
			if(user!=null){
				result.setCode(0);
				result.setMessage("存在用户:"+telname);
				result.setData(user);
			}else{
				result.setCode(ErrorCode.USER_CODE);
				result.setMessage("不存在用户"+telname);
			}
			log.info("用户查找信息:" + result);
			
		} catch (Exception e) {
			throw new CommonException(ErrorCode.USER_CODE, "登入查找:"+telname+" 用户时失败",e);
		}
		return result;
	}

	
	@Override
	public RtResult queryByUid(int uid) throws CommonException {
		RtResult result = new RtResult();
		try {
			User user=userDao.getById(uid);
			if(user!=null){
				result.setCode(0);
				result.setMessage("查找到用户!");
				result.setData(user);
			}else{
				result.setCode(ErrorCode.USER_CODE);
				result.setMessage("未查找到用户! uid="+uid);
			}
			log.info("用户查找信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.USER_CODE, "查找id:"+uid+" 用户时失败",e);
		}
		return result;
	}

	/**分页案例
	 *  new PageBounds();//默认构造函数不提供分页，返回ArrayList
		new PageBounds(int limit);//取TOPN操作，返回ArrayList
		new PageBounds(Order... order);//只排序不分页，返回ArrayList
		new PageBounds(int page, int limit);//默认分页，返回PageList
		new PageBounds(int page, int limit, Order... order);//分页加排序，返回PageList
		new PageBounds(int page, int limit, List<Order> orders, boolean containsTotalCount);//使用containsTotalCount来决定查不查询totalCount，即返回ArrayList还是PageList
	 */
	@Override
	public RtResult commonPage(Map<String, Object> params, PageBounds pageBounds) throws CommonException {
		RtResult result = new RtResult();
		try {
			PageList<User>  pageList = userDao.findPageBy( params, pageBounds);
			 if(pageList!=null || pageList.size()>0){
					result.setCode(0);
					result.setMessage("条件查找到用户!");
					result.setData(pageList);
				}else{
					result.setCode(ErrorCode.USER_CODE);
					result.setMessage("未查找到符合条件的用户!");
				}
				log.info("用户查找信息:" + result);
			
		} catch (Exception e) {
			throw new CommonException(ErrorCode.USER_CODE, "分页条件查找用户失败",e);
		}
		return result;
	}

	

	@Override
	public RtResult deleteByUid(int uid) throws CommonException {
		RtResult result = new RtResult();
		try {
			Integer count=userDao.deleteById(uid);
			if(count!=null&&count>0){
				result.setCode(0);
				result.setMessage("成功删除用户 uid:"+uid);
			}else{
				result.setCode(ErrorCode.USER_CODE);
				result.setMessage("未查找到用户! uid="+uid);
			}
			log.info("用户查找信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.USER_CODE, "删除id:"+uid+" 用户时失败",e);
		}
		return result;
	}

	@Override
	public RtResult update(User user) throws CommonException {
		RtResult result = new RtResult();
		try {
			Integer count=userDao.update(user);
			if(count>0){
				result.setCode(0);
				result.setMessage("成功修改用户");
				result.setData(user);
			}else{
				result.setCode(ErrorCode.USER_CODE);
				result.setMessage("修改用户失败");
			}
			log.info("用户查找信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.USER_CODE, "更新用户时失败",e);
		}
		return result;
	}

	@Override
	public RtResult getCountBy(User user) throws CommonException {
		RtResult result = new RtResult();
		try {
			Integer count=userDao.getCountBy(user);
			result.setCode(0);
			result.setMessage("满足条件的用户有:"+count);
			log.info("满足条件用户数量:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.USER_CODE, "查询满足条件用户数量失败",e);
		}
		return result;
	}

}
