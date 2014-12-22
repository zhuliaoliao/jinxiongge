package com.jinxiongge.exception;
/**
 * 服务异常基类.
 *
 * @author zll
 */
@SuppressWarnings("serial")
public class CommonException extends RuntimeException {
	private int code = 1;//默认1(大于0的都是错误编码)
	
	public CommonException() {
	}
	
	public CommonException(int code, String message) {
		super(message);		
		this.code = code;
	}
	
	public CommonException(int code, String message, Throwable cause) {
		super(message, cause);
		this.code = code;
	}

	public CommonException(Throwable cause) {
		super(cause);
	}

	public int getCode() {
		return code;
	}	
}

