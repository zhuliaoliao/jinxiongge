package test.mybatis;

import java.util.Date;

import org.apache.commons.lang3.time.DateFormatUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jinxiongge.common.util.JinXiongGeUtil;
import com.jinxiongge.model.User;
import com.jinxiongge.service.inter.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml"})
public class UserTest {

	private UserService userservice;
//	,"classpath:mybatis.xml" 
	
	@Autowired
	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}



	@Test
	public void add() {
		User user = new User();
		user.setUsername("wkaao");
		user.setTruename("hhhhh");
		user.setPwd("123");
		user.setTel("123");
		System.out.println("testRegister:::" + userservice.register(user));
	}
	
	
	@Test
	public void testfindByUid() {
		System.out.println("testfindByUid:::" + userservice.queryByUid(11));
		
	}

	
	@Test
	public void findByPage() {
//		System.out.println("findByPage:::" + userservice.queryPage());
		
	}
	public static void main(String[] args) {
		System.out.println();
//		DateFormatUtils.format(new Date(), "yyyy-MM-dd HH:mm:ss");
//		DateUtil.convertStringToDate(DateUtil.getDateTime("yyyy-MM-dd HH:mm:ss", new Date()));
		System.out.println(DateFormatUtils.format(new Date(), "yyyy-MM-dd HH:mm:ss"));
		
	}
}
