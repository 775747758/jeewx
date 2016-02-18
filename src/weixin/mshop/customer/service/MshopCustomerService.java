package weixin.mshop.customer.service;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.util.LogUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.mshop.customer.entity.WxMshopCustomerEntity;
import weixin.popular.api.UserAPI;
import weixin.popular.bean.User;
import weixin.util.WeChatUtil;

@Service
@Transactional
public class MshopCustomerService {
	
	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	
	@Autowired
	private WxMshopCustomerServiceI wxMshopCustomerService;

	
	public WxMshopCustomerEntity getCustomerWithId(String id,String fromUserName,String toUserName) {
		WeixinAccountEntity account = weixinAccountService.getEntity(WeixinAccountEntity.class,fromUserName);
		WxMshopCustomerEntity customer = wxMshopCustomerService.get(WxMshopCustomerEntity.class, id);
		//为了防止用户更改昵称和头像，需要每次都获取
		weixin.popular.bean.User wpUser=UserAPI.userInfo(weixinAccountService.getAccessToken(account.getId()), toUserName);
		customer.setHeadimgurl(wpUser.getHeadimgurl());
		return customer;
	}
	
	
	
	/**
	 * 根据code、用户微信平台号获取客户id
	 * @param code
	 * @param userWeChatNum
	 * @return
	 */
	public WxMshopCustomerEntity getCustomerWithCodeAndWeixinAccount(String code,WeixinAccountEntity account) {
		//防止null
		WxMshopCustomerEntity customer = new WxMshopCustomerEntity();
		if(StringUtils.isNotBlank(code)){
			//根据code和微信账户信息获取当前访问公众平台客户信息
			//User user=WeChatUtil.getUserFromOauth2(code,account);
			String openID=WeChatUtil.getOpenIdFromOauth2(code,account);
			customer=getCustomerWithfromUserNameAndtoUserName(openID, account.getWeixin_accountid());
			//customer.setNickname(user.getNickname());
			//customer.setHeadimgurl(user.getHeadimgurl());
			customer.setUpdateDate(new Date());
			customer.setUpdateName("auto");
			//虽然每次取出customer都会重新设置昵称和头像，但是为了防止有的时候忘了重新设置，所以还是更新一下吧！
			wxMshopCustomerService.updateEntitie(customer);
		}
		return customer;
	}
	
	
	
	/**
	 * 在用户首次关注微信公众平台的时候初始化，保存实体
	 * @param toUserName 微信公众号的原始ID
	 * @param fromUserName 用户的openid
	 */
	public void initCustomer(String toUserName, String fromUserName){
		WeixinAccountEntity account = weixinAccountService.findByToUsername(toUserName);
		//先查看此用户是否已经关注,如果没有关注就添加到数据库
		if(getCustomerWithfromUserNameAndtoUserName(fromUserName, toUserName)==null) {
			WxMshopCustomerEntity customer = new WxMshopCustomerEntity();
			String accessToken=weixinAccountService.getAccessToken(toUserName);
			User user=UserAPI.userInfo(accessToken, fromUserName);
			customer.setCity(user.getCity());
			customer.setProvince(user.getProvince());
			customer.setSex(user.getSex());
			customer.setNickname(user.getNickname());
			customer.setHeadimgurl(user.getHeadimgurl());
			customer.setOpenid(fromUserName);
			customer.setWeixinAccountid(account.getWeixin_accountid());
			customer.setAccountid(account.getId());
			customer.setCreateDate(new Date());
			customer.setCreateName("auto");
			wxMshopCustomerService.save(customer);
		}
	}
	
	
	
	/**
	 * 根据客户openID和公众平台原始ID查询客户
	 * @param fromUserName 客户openID
	 * @param toUserName 公众平台原始ID
	 * @return
	 */
	public WxMshopCustomerEntity getCustomerWithfromUserNameAndtoUserName(String fromUserName,String toUserName) {
		CriteriaQuery cq = new CriteriaQuery(WxMshopCustomerEntity.class);
		cq.eq("openid",fromUserName);
		cq.eq("weixinAccountid",toUserName);//原始ID
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		List<WxMshopCustomerEntity> list=wxMshopCustomerService.getListByCriteriaQuery(cq, false);
		return list.isEmpty()?null:list.get(0);
	}
	
}