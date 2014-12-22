package com.jinxiongge.model;

/**
 * @author zhull
 *
 */
public class User {
	
	//字段与数据库一致
	private int uid;
	private String username;
	private String truename;
	private String pwd;
	private String birthday;
	private String sex;
	private String city;
	private String address;
	private String email;
	private String postcode;
	private String tel;
	private int grade;
	private String cardtype;
	private String cardno;
	private String createtime;
	private String lastlogintime;
	private String freeze;
	
	
	public User() {
		super();
	}


	public int getUid() {
		return uid;
	}


	public void setUid(int uid) {
		this.uid = uid;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getTruename() {
		return truename;
	}


	public void setTruename(String truename) {
		this.truename = truename;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}



	public String getBirthday() {
		return birthday;
	}


	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPostcode() {
		return postcode;
	}


	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public int getGrade() {
		return grade;
	}


	public void setGrade(int grade) {
		this.grade = grade;
	}


	public String getCardtype() {
		return cardtype;
	}


	public void setCardtype(String cardtype) {
		this.cardtype = cardtype;
	}


	public String getCardno() {
		return cardno;
	}


	public void setCardno(String cardno) {
		this.cardno = cardno;
	}


	public String getCreatetime() {
		return createtime;
	}


	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}


	public String getLastlogintime() {
		return lastlogintime;
	}


	public void setLastlogintime(String lastlogintime) {
		this.lastlogintime = lastlogintime;
	}


	public String getFreeze() {
		return freeze;
	}


	public void setFreeze(String freeze) {
		this.freeze = freeze;
	}


	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", truename="
				+ truename + ", pwd=" + pwd + ", birthday=" + birthday + ", sex=" + sex
				+ ", city=" + city + ", address=" + address + ", email="
				+ email + ", postcode=" + postcode + ", tel=" + tel
				+ ", grade=" + grade + ", cardtype=" + cardtype + ", cardno="
				+ cardno + ", createtime=" + createtime + ", lastlogintime="
				+ lastlogintime + ", freeze=" + freeze + "]";
	}
	
	
	
	
	
}
