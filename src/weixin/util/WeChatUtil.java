package weixin.util; 

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.popular.api.SnsAPI;
import weixin.popular.bean.SnsToken;
import weixin.popular.bean.User;


/** 
 * @author 作者 : 邓文杰
 * @version 创建时间：2015-9-24 下午2:00:09 
 * 类说明 
 */
public class WeChatUtil {
	
	
	/**
	 * @param code 链接中的code
	 * @param account 微信账号信息
	 * @return
	 */
	public static User getUserFromOauth2(String code,WeixinAccountEntity account){
		SnsToken snsToken=SnsAPI.oauth2AccessToken(account.getAccountappid(), account.getAccountappsecret(), code);
		return SnsAPI.userinfo(snsToken.getAccess_token(),snsToken.getOpenid(), "zh_CN");
	}

}
