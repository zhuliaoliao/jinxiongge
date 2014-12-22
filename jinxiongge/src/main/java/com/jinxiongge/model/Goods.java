package com.jinxiongge.model;

import java.util.Arrays;

/**
 * @author zhull
 *
 */
/**
 * @author XY
 *
 */
public class Goods {

	// 字段与数据库一致
	private int gid;
	private String goodsname;
	private String introduce;
	private double price;
	private double nowprice;
	private byte[] picture;
	private String createtime;
	private String updatetime;
	private String specialprice;// 是否特价 yes是，no不是
	private int havebuy;// 已出售数
	private int dianzan;// 点赞数

	
	public Goods() {
		super();
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getNowprice() {
		return nowprice;
	}

	public void setNowprice(double nowprice) {
		this.nowprice = nowprice;
	}

	public byte[] getPicture() {
		return picture;
	}

	public void setPicture(byte[] picture) {
		this.picture = picture;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getSpecialprice() {
		return specialprice;
	}

	public void setSpecialprice(String specialprice) {
		this.specialprice = specialprice;
	}

	public String getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}

	public int getHavebuy() {
		return havebuy;
	}

	public void setHavebuy(int havebuy) {
		this.havebuy = havebuy;
	}

	public int getDianzan() {
		return dianzan;
	}

	public void setDianzan(int dianzan) {
		this.dianzan = dianzan;
	}

	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", goodsname=" + goodsname
				+ ", introduce=" + introduce + ", price=" + price
				+ ", nowprice=" + nowprice + ", picture="
				+ Arrays.toString(picture) + ", createtime=" + createtime
				+ ", updatetime=" + updatetime + ", specialprice="
				+ specialprice + ", havebuy=" + havebuy + ", dianzan="
				+ dianzan + "]";
	}

}
