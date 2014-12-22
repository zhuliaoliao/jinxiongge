package com.jinxiongge.result.model;

/**
 * 统一信息回馈
 * @author zhuliaoliao
 *
 */
public class RtResult {

	private String message;//回馈信息
	private int code;//回馈序号，0表示成功
	private Object data;//统一对象
	private Object status;//url标示
	
	
	
	public Object getStatus() {
		return status;
	}
	public void setStatus(Object status) {
		this.status = status;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	@Override
	public String toString() {
		return "RtResult [message=" + message + ", code=" + code + ", data="
				+ data + ", status=" + status + "]";
	}

	
}
