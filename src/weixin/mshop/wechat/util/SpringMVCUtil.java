package weixin.mshop.wechat.util;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;


public class SpringMVCUtil {
	
	public static void print(String result,HttpServletResponse response) {
		String fullContentType = "text/plain" + ";charset=UTF-8";
		response.setContentType(fullContentType);
		try {
			response.getWriter().write(result);
			response.getWriter().flush();
		} catch (IOException e) {
			throw new RuntimeException(e.getMessage(), e);
		}
	}

}
