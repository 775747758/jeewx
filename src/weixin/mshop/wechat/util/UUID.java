package weixin.mshop.wechat.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;

public class UUID {

	/**
	 * 得到唯一的13位标识(配合session使用)
	 */
	public static final String getUUID13(HttpServletRequest request) {
		String num=(String)request.getSession().getAttribute("incrementNum");
		StringBuffer idBuffer = new StringBuffer();
		String incrementNum=getIncrement(num);
		request.getSession().setAttribute("incrementNum", incrementNum);
		idBuffer.append(new SimpleDateFormat("yyMMddHHmmss").format(new Date())).append(incrementNum);
		return idBuffer.toString();
	}
	
	//获得自增长的0-9的字符串
	public static String getIncrement(String num){
		if(StringUtils.isBlank(num)){
			num="0";
		}
		int number=Integer.parseInt(num);
		if(number>=9){
			number=0;
		}else{
			number++;
		}
        return number+"";
	}
}
