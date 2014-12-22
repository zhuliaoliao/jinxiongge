package com.jinxiongge.common.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang3.time.DateFormatUtils;

public class JinXiongGeUtil {

	/**
	 * String 数组按separator分隔为 String
	 * @param strArray
	 * @param separator
	 * @return
	 */
	public static String stringArrayJoin( String[] strArray, String separator ) {
	    StringBuffer strbuf = new StringBuffer();
	    for( int i = 0; i < strArray.length; i++ ) {
	        strbuf.append( separator ).append( strArray[i] );
	    }
	    return strbuf.deleteCharAt( 0 ).toString();
	}
	
	
	/**
	 * 
	 * @param date
	 * @return yyyy-MM-dd HH:mm:ss格式
	 */
	public static Date StandardString2Date(String date){
		try {
			return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null; 
	}
	
	public static String StandardDate2String(Date date){
		return DateFormatUtils.format(date, "yyyy-MM-dd HH:mm:ss");
	}
	
	
}
