package com.jinxiongge.interceptor;

import java.sql.Connection;
import java.util.Properties;

import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.jinxiongge.dao.inter.UserDao;
 
@Intercepts( {
       @Signature(method = "findByCity", type = UserDao.class, args = {
              String.class, PageBounds.class}),
       @Signature(method = "prepare", type = StatementHandler.class, args = { Connection.class }) })
public class MyInterceptor implements Interceptor {
 
	public MyInterceptor(){
		System.out.println("##########################333333333333333333333");
	}
    public Object intercept(Invocation invocation) throws Throwable {
    	 System.out.println("Invocation.proceed()222222222222222222");
       Object result = invocation.proceed();
       System.out.println("Invocation.proceed()1111111111111111111111111111");
       return result;
    }
 
    public Object plugin(Object target) {
       return Plugin.wrap(target, this);
    }
 
    public void setProperties(Properties properties) {
       String prop1 = properties.getProperty("prop1");
       String prop2 = properties.getProperty("prop2");
       System.out.println(prop1 + "------" + prop2);
    }
 
}