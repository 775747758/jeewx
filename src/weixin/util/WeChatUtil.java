package weixin.util; 

import org.jeecgframework.core.util.LogUtil;

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
		LogUtil.info("<<<<<<account:"+account.getAccountappid()+":"+account.getAccountappsecret());
		SnsToken snsToken=SnsAPI.oauth2AccessToken(account.getAccountappid(), account.getAccountappsecret(), code);
		LogUtil.info("<<<<<<getAccess_token:"+snsToken.getAccess_token());
		LogUtil.info("<<<<<<getOpenid:"+snsToken.getOpenid());
		return SnsAPI.userinfo(snsToken.getAccess_token(),snsToken.getOpenid(), "zh_CN");
	}
	
	/**
	 * @param code 链接中的code
	 * @param account 微信账号信息
	 * @return
	 */
	public static String  getOpenIdFromOauth2(String code,WeixinAccountEntity account){
		LogUtil.info("<<<<<<account:"+account.getAccountappid()+":"+account.getAccountappsecret());
		SnsToken snsToken=SnsAPI.oauth2AccessToken(account.getAccountappid(), account.getAccountappsecret(), code);
		LogUtil.info("<<<<<<getAccess_token:"+snsToken.getAccess_token());
		LogUtil.info("<<<<<<getOpenid:"+snsToken.getOpenid());
		return snsToken.getOpenid();
	}
	
	

}
