package weixin.shop.goods.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import weixin.cms.controller.WeixinCmsSiteController;
import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.shop.advertisement.entity.ShopAdvertisementEntity;
import weixin.shop.advertisement.service.ShopAdvertisementServiceI;
import weixin.shop.advertisement.service.WxShopAdvertisementService;
import weixin.shop.customer.entity.ShopCustomerEntity;
import weixin.shop.customer.service.WxCustomerService;

/**
 * 微信
 * @author 邓文杰
 *
 */

@Scope("prototype")
@Controller
@RequestMapping("/wxShopGoodsController")
public class WxShopGoodsController extends BaseController {
	
	private static final Logger logger = Logger
			.getLogger(WeixinCmsSiteController.class);
	
	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	@Autowired
	private WxCustomerService wxCustomerService;
	
	@Autowired
	private WxShopAdvertisementService wxShopAdvertisementService;
	
	/**
	 * 页面调整引擎
	 * 
	 * @param request
	 * @param response
	 * @param page
	 *            模板页
	 * @param id
	 *            数据ID
	 * @param accountid
	 *            微信公众号ID
	 */
	@RequestMapping(params = "goShop")
	public ModelAndView goShop(@RequestParam(value="code", required = false) String code,
			@RequestParam(value="state", required = false) String state,HttpServletRequest request) {
		System.out.println("<<<<<<<<<<<<<<<state:"+state+"  code:"+code);
		WeixinAccountEntity account = weixinAccountService.findByToUsername(state);
		ShopCustomerEntity shopCustomerEntity=new ShopCustomerEntity();
		shopCustomerEntity = wxCustomerService.getCustomerWithCodeAndWeixinAccount(code, account);
		List<ShopAdvertisementEntity> list=wxShopAdvertisementService.getHomeAd(account, ShopAdvertisementEntity.AD_TYPE_SMALL);
		for(int i=0;i<list.size();i++){
			System.out.println("<<<<<<<<<<<ad:"+"ad"+(i+2)+list.get(i).getImgurl());
			request.setAttribute("ad"+(i+2), list.get(i));
		}
		ShopAdvertisementEntity ad1=wxShopAdvertisementService.getHomeAd(account, ShopAdvertisementEntity.AD_TYPE_BIG).get(0);
		request.setAttribute("ad1", ad1);
		request.setAttribute("customer", shopCustomerEntity);
		//request.setAttribute("goodsList", goodsService.getGoodsListWithUserCustomer(customer));
		request.setAttribute("shopTitle", "商城首页");
		return new ModelAndView("weixin/shop/mobile/index");
	}
	
	

}
