package weixin.mshop.wechat.util;

import java.math.BigDecimal;

public class NumberUtil {
	
	/*
	 * 比较两个double值
	 * 在数字上小于、等于或大于 val 时，返回 -1、0 或 1。
	 */
	public static int compare(double a,double b){
		BigDecimal data1 = new BigDecimal(a); 
		BigDecimal data2 = new BigDecimal(b); 
		return data1.compareTo(data2);
	}

}
