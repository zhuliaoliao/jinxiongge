package com.jinxiongge.model;

/**
 * @author zhull
 *
 */
public class Manager {
	
	//字段与数据库一致
	private int mid;
	private String username;
	private String pwd;
	
	
	public Manager() {
		super();
	}


	public int getMid() {
		return mid;
	}


	public void setMid(int mid) {
		this.mid = mid;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	@Override
	public String toString() {
		return "Manager [mid=" + mid + ", username=" + username + ", pwd="
				+ pwd + "]";
	}


}
