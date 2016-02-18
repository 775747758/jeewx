package weixin.idea.extend.function.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.jeecgframework.core.util.ApplicationContextUtil;

import weixin.cms.dao.CmsAdDao;
import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.entity.message.resp.Article;
import weixin.guanjia.core.entity.message.resp.NewsMessageResp;
import weixin.guanjia.core.entity.message.resp.TextMessageResp;
import weixin.guanjia.core.util.MessageUtil;
import weixin.idea.extend.function.KeyServiceI;
import weixin.popular.api.SnsAPI;

/**
 * 微商城
 * @author zhangdaihao
 *
 */
public class WeixinShopService implements KeyServiceI {

	@Override
	public String excute(String content, TextMessageResp defaultMessage,
			HttpServletRequest request) {
		WeixinAccountServiceI weixinAccountService = (WeixinAccountServiceI) ApplicationContextUtil.getContext().getBean("weixinAccountService");
		WeixinAccountEntity account = weixinAccountService.findByToUsername(defaultMessage.getFromUserName());
		ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
		List<Article> articleList = new ArrayList<Article>();
		Article article = new Article();
		article.setTitle("微商城1");
		article.setDescription("");
		article.setPicUrl(bundler.getString("domain")+ "/webpage/weixin/shop/images/index.jpg");
		System.out.println("<<<<<<<<<<<pictrl:"+bundler.getString("domain")+ "/webpage/weixin/shop/images/index.png");
		// 此userid后期需要通过高级接口获取到微信帐号，此处先以加密后的ID为参数进行传递
		String oauth2Url=SnsAPI.connectOauth2Authorize(account.getAccountappid(), bundler.getString("domain")+ "/shopWechatController.do?goShop", true, defaultMessage.getFromUserName());
		System.out.println("<<<<<<<<<<<oauth2Url:"+oauth2Url);
		article.setUrl(oauth2Url);
		articleList.add(article);
		NewsMessageResp newsMessage = new NewsMessageResp();
		newsMessage.setToUserName(defaultMessage.getToUserName());
		newsMessage.setFromUserName(defaultMessage.getFromUserName());
		newsMessage.setCreateTime(new Date().getTime());
		newsMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_NEWS);
		newsMessage.setArticleCount(articleList.size());
		newsMessage.setArticles(articleList);
		return MessageUtil.newsMessageToXml(newsMessage);
	}

	@Override
	public String getKey() {
		return "88452387微商城，88452387商城";
	}

}
