package weixin.mshop.wechat.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.http.NoHttpResponseException;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import weixin.cms.controller.WeixinCmsSiteController;
import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.util.MessageUtil;
import weixin.mshop.advertisement.entity.MshopAdvertisementEntity;
import weixin.mshop.cart.entity.MshopCartEntity;
import weixin.mshop.cart.service.MshopCartServiceI;
import weixin.mshop.customer.entity.WxMshopCustomerEntity;
import weixin.mshop.customer.service.MshopCustomerService;
import weixin.mshop.customer.service.WxMshopCustomerServiceI;
import weixin.mshop.dispatch.entity.WeixinDispatchEntity;
import weixin.mshop.dispatch.service.WeixinDispatchServiceI;
import weixin.mshop.evaluate.entity.MshopEvaluateEntity;
import weixin.mshop.goods.entity.MshopGoodsEntity;
import weixin.mshop.goods.service.MshopGoodsServiceI;
import weixin.mshop.goodtype.service.MshopGoodtypeServiceI;
import weixin.mshop.order.entity.MshopOrderEntity;
import weixin.mshop.order.service.MshopOrderServiceI;
import weixin.mshop.store.entity.MshopStoreEntity;
import weixin.mshop.store.service.MshopStoreServiceI;
import weixin.mshop.type.entity.MshopTypeEntity;
import weixin.mshop.type.service.MshopTypeServiceI;
import weixin.mshop.wechat.service.MShopWechatService;
import weixin.mshop.wechat.util.CookieUtil;
import weixin.mshop.wechat.util.NumberUtil;
import weixin.mshop.wechat.util.SpringMVCUtil;
import weixin.mshop.wechat.vo.MshopCartVo;
import weixin.util.DateUtils;

/**
 * @author 作者 : 邓文杰
 * @version 创建时间：2015-9-30 下午3:00:40 类说明
 */
@Scope("prototype")
@Controller
@RequestMapping("/mshopWechatController")
public class MshopWechatController extends BaseController {
	private static final Logger logger = Logger.getLogger(WeixinCmsSiteController.class);

	/**
	 * 商城主页
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
	public ModelAndView goShop(@RequestParam(value = "code", required = false) String code, @RequestParam(value = "state", required = false) String state,
			HttpServletRequest request, HttpServletResponse response, @RequestParam(value = "customerId", required = false) String customerId) {
		WeixinAccountEntity account = weixinAccountService.findByToUsername(state);
		WxMshopCustomerEntity customer = null;
		if (StringUtils.isNotBlank(customerId)) {
			customer = wxMshopCustomerService.get(WxMshopCustomerEntity.class, customerId);
			account = weixinAccountService.findByToUsername(customer.getWeixinAccountid());
		} else {
			if (CookieUtil.getCookieByName(request, "openId" + state) == null) {
				customer = mshopCustomerService.getCustomerWithCodeAndWeixinAccount(code, account);
				CookieUtil.addCookie(response, "openId" + state, customer.getOpenid(), 1000 * 60 * 5);
			} else {// 用户第二回点击直接，直接使用cookie中的openid
				String openId = CookieUtil.getCookieByName(request, "openId" + state).getValue();
				customer = mshopCustomerService.getCustomerWithfromUserNameAndtoUserName(openId, state);
			}
		}
		List<MshopAdvertisementEntity> list = mShopWechatService.getHomeAd(account);
		List<MshopStoreEntity> recommendList = mShopWechatService.getRecommendStore(account.getId());
		WeixinDispatchEntity dispatch = (WeixinDispatchEntity) dispatchService.getList(WeixinDispatchEntity.class).get(0);
		request.setAttribute("adList", list);
		request.setAttribute("customer", customer);
		request.setAttribute("recommendStoreList", recommendList);
		request.setAttribute("dispatch", dispatch);
		request.setAttribute("shopTitle", "商城首页");
		return new ModelAndView("weixin/mshop/mobile/index");
	}

	/**
	 * go订单列表
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "orderList")
	public ModelAndView orderList(HttpServletResponse response, HttpServletRequest request, @RequestParam(value = "customerId", required = false) String customerId,
			@RequestParam(value = "code", required = false) String code, @RequestParam(value = "state", required = false) String state) {
		String customerId_ = null;
		if (StringUtils.isNotBlank(customerId)) {
			customerId_ = customerId;
		} else {
			WxMshopCustomerEntity customer = null;
			if (CookieUtil.getCookieByName(request, "openId" + state) == null) {
				WeixinAccountEntity account = weixinAccountService.findByToUsername(state);
				customer = mshopCustomerService.getCustomerWithCodeAndWeixinAccount(code, account);
				customerId_ = customer.getId();
				CookieUtil.addCookie(response, "openId" + state, customer.getOpenid(), 1000 * 60 * 5);
			} else {// 用户第二回点击直接，直接使用cookie中的openid
				String openId = CookieUtil.getCookieByName(request, "openId" + state).getValue();
				customer = mshopCustomerService.getCustomerWithfromUserNameAndtoUserName(openId, state);
				customerId_ = customer.getId();
			}
		}
		request.setAttribute("orderVo", mShopWechatService.getOrderVo(customerId_));
		request.setAttribute("customerId", customerId_);
		return new ModelAndView("weixin/mshop/mobile/orderList");
	}

	/**
	 * 个人中心
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
	@RequestMapping(params = "goUserCenter")
	public ModelAndView goUserCenter(@RequestParam(value = "code", required = false) String code, @RequestParam(value = "state", required = false) String state,
			HttpServletRequest request, @RequestParam(value = "customerId", required = false) String customerId, HttpServletResponse response) {
		WxMshopCustomerEntity customer = null;
		if (StringUtils.isNotBlank(customerId)) {
			customer = wxMshopCustomerService.get(WxMshopCustomerEntity.class, customerId);
		} else {
			if (CookieUtil.getCookieByName(request, "openId" + state) == null) {
				WeixinAccountEntity account = weixinAccountService.findByToUsername(state);
				customer = mshopCustomerService.getCustomerWithCodeAndWeixinAccount(code, account);
				CookieUtil.addCookie(response, "openId" + state, customer.getOpenid(), 1000 * 60 * 5);
			} else {// 用户第二回点击直接，直接使用cookie中的openid
				String openId = CookieUtil.getCookieByName(request, "openId" + state).getValue();
				customer = mshopCustomerService.getCustomerWithfromUserNameAndtoUserName(openId, state);
			}
		}
		request.setAttribute("customer", customer);
		return new ModelAndView("weixin/mshop/mobile/userCenter");
	}

	/**
	 * 点击首页上面的四个菜单，进入相应类别的店铺列表
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "goStoreList")
	public ModelAndView goStoreList(HttpServletRequest request, @RequestParam(value = "customerId", required = false) String customerId) {
		String accountid = request.getParameter("accountid");
		String typeId = request.getParameter("typeId");
		List<MshopStoreEntity> list = mShopStoreService.getStoreListByTypeId(accountid, typeId);
		request.setAttribute("storeList", list);
		request.setAttribute("accountid", accountid);
		request.setAttribute("customerId", customerId);
		request.setAttribute("type", mshopTypeService.get(MshopTypeEntity.class, typeId).getName());
		return new ModelAndView("weixin/mshop/mobile/storeList");
	}

	/**
	 * 点击店铺：进入商品列表
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "goStore")
	public ModelAndView goStore(HttpServletRequest request, @RequestParam(value = "storeId", required = false) String storeId,
			@RequestParam(value = "customerId", required = false) String customerId) {
		List<MshopCartEntity> cartList=new ArrayList<MshopCartEntity>();
		MshopStoreEntity store = mShopStoreService.get(MshopStoreEntity.class, storeId);
		request.setAttribute("customerId", customerId);
		request.setAttribute("store", store);
		double totalPrice = 0d;
		int totalCount = 0;
		for (MshopCartEntity cart : store.getCartList()) {
			BigDecimal realPrice = new BigDecimal(cart.getGoods().getRealPrice() * cart.getCount());
			BigDecimal price = new BigDecimal(totalPrice).add(realPrice);
			totalCount = totalCount + cart.getCount();
			// 保留两位小数
			totalPrice = price.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
			if(customerId.equals(cart.getIdCustomer())){
				cartList.add(cart);
			}
		}
		request.setAttribute("cartList", cartList);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("orderCount", mshopOrderService.getOrderNumByStoreId(storeId));
		return new ModelAndView("weixin/mshop/mobile/store");
	}

	/**
	 * 加入到购物车
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "addToCart")
	@ResponseBody
	public AjaxJson addToCart(MshopCartEntity cart) {
		AjaxJson j = new AjaxJson();
		MshopStoreEntity store = mShopStoreService.get(MshopStoreEntity.class, cart.getIdStore());
		if (store != null) {
			Date startTime = store.getStartTime();
			Date endTime = store.getEndTime();
			Date nowTime = new Date();
			// 判断是否在营业时间范围
			System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<now time:"+DateUtils.formatShortTimeDetail(nowTime));
			if (DateUtils.compareTime(DateUtils.formatShortTimeDetail(nowTime), DateUtils.formatShortTimeDetail(startTime)) == 1
					&& DateUtils.compareTime(DateUtils.formatShortTimeDetail(nowTime), DateUtils.formatShortTimeDetail(endTime))
					== -1) {
				mShopWechatService.addToCart(cart);
				j.setSuccess(true);
				return j;
			}
		}
		j.setSuccess(false);
		return j;
	}

	/**
	 * 从购物车中删除
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "removeFromCart")
	@ResponseBody
	public AjaxJson removeFromCart(MshopCartEntity cart) {
		// 删除不能直接用cartId删除，因为当删除之后，页面再点添加，再删除，页面中的cartId就不是最新的了
		AjaxJson j = new AjaxJson();
		mShopWechatService.removeFromCart(cart);
		return j;
	}

	/**
	 * 从购物车中删除有规格的
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "removeFromCartWithSpec")
	@ResponseBody
	public AjaxJson removeFromCartWithSpec(@RequestParam(value = "goodsId", required = false) String goodsId,
			@RequestParam(value = "customerId", required = false) String customerId, @RequestParam(value = "spec", required = false) String spec) {
		AjaxJson j = new AjaxJson();
		mShopWechatService.removeFromCartWithSpec(goodsId, customerId, spec);
		return j;
	}

	/**
	 * go购物车
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "goCart")
	public ModelAndView goCart(HttpServletRequest request, @RequestParam(value = "storeId", required = false) String storeId,
			@RequestParam(value = "customerId", required = false) String customerId) {
		MshopCartVo vo = mShopWechatService.getCartVo("4028813a5089715201508971c5690000", "4028813a505a70d901505a721b000002");
		request.setAttribute("vo", vo);
		request.setAttribute("storeId", storeId);
		request.setAttribute("customerId", customerId);
		return new ModelAndView("weixin/mshop/mobile/cart");
	}

	/**
	 * go有规格的商品购物车
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "goGoodsCart")
	public ModelAndView goGoodsCart(HttpServletRequest request, @RequestParam(value = "storeId", required = false) String storeId,
			@RequestParam(value = "customerId", required = false) String customerId, @RequestParam(value = "goodId", required = false) String goodId) {
		List<MshopCartEntity> cartList=new ArrayList<MshopCartEntity>();
		MshopGoodsEntity goods = mshopGoodsService.get(MshopGoodsEntity.class, goodId);
		MshopStoreEntity store = mShopStoreService.get(MshopStoreEntity.class, storeId);
		double totalPrice = 0d;
		int totalCount = 0;
		for (MshopCartEntity cart : store.getCartList()) {
			BigDecimal realPrice = new BigDecimal(cart.getGoods().getRealPrice() * cart.getCount());
			BigDecimal price = new BigDecimal(totalPrice).add(realPrice);
			totalCount = totalCount + cart.getCount();
			// 保留两位小数
			totalPrice = price.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
			if(customerId.equals(cart.getIdCustomer())){
				cartList.add(cart);
			}
		}
		request.setAttribute("cartList", cartList);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("storeId", storeId);
		request.setAttribute("customerId", customerId);
		request.setAttribute("goods", goods);
		List<String> specList = new ArrayList<String>();
		Map<String, String> map = new HashMap<String, String>();
		for (String spec : goods.getAllSpecs().split("\\+")) {
			specList.add(spec);
			map.put("spec", mShopWechatService.getCartCountBySpec(goodId, customerId, spec));
		}
		request.setAttribute("map", map);
		request.setAttribute("specList", specList);
		return new ModelAndView("weixin/mshop/mobile/spec");
	}

	/**
	 * go店铺简介
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "goStoreDescription")
	public ModelAndView goStoreDescription(HttpServletRequest request, @RequestParam(value = "storeId", required = false) String storeId) {
		MshopStoreEntity store = mShopStoreService.get(MshopStoreEntity.class, storeId);
		request.setAttribute("storeDescription", store.getDescriptions());
		return new ModelAndView("weixin/mshop/mobile/storeDescription");
	}

	/**
	 * go地址信息
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "goAddressDetail")
	public ModelAndView goAddressDetail(HttpServletRequest request, @RequestParam(value = "customerId", required = false) String customerId,
			 @RequestParam(value = "storeId", required = false) String storeId,
			@RequestParam(value = "method", required = false) String method) {
		WxMshopCustomerEntity customer = wxMshopCustomerService.get(WxMshopCustomerEntity.class, customerId);
		request.setAttribute("customer", customer);
		request.setAttribute("storeId", storeId);
		if ("update".equals(method)) {
			request.setAttribute("method", "update");
		} else {
			request.setAttribute("method", "save");
		}
		return new ModelAndView("weixin/mshop/mobile/addressDetail");
	}

	/**
	 * 保存或更新地址信息
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "saveAddress", method = RequestMethod.POST)
	@ResponseBody
	public AjaxJson saveAddress(WxMshopCustomerEntity customer) {
		AjaxJson j = new AjaxJson();
		mShopWechatService.updateAddress(customer);
		return j;
	}

	/**
	 * go下单页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "goOrderInput", method = RequestMethod.GET)
	public ModelAndView goOrderInput(HttpServletRequest request, @RequestParam(value = "customerId", required = false) String customerId,
			@RequestParam(value = "storeId", required = false) String storeId) {
		WxMshopCustomerEntity customer = wxMshopCustomerService.get(WxMshopCustomerEntity.class, customerId);
		MshopStoreEntity store = mShopStoreService.get(MshopStoreEntity.class, storeId);
		MshopCartVo cartVo = mShopWechatService.getCartVo(customerId, storeId);
		request.setAttribute("customer", customer);
		request.setAttribute("store", store);
		request.setAttribute("cartVo", cartVo);
		WeixinDispatchEntity dispatch = mShopWechatService.getDispatch();
		if (NumberUtil.compare(cartVo.getPrice(), dispatch.getLimitMoney()) >= 0) {
			request.setAttribute("freight", 0);
		} else {
			request.setAttribute("freight", dispatch.getExpressPrice());
		}
		request.setAttribute("dispatch", dispatch);
		return new ModelAndView("weixin/mshop/mobile/orderInput");
	}

	/**
	 * 提交订单并发起支付
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "submitOrder", method = RequestMethod.GET)
	@ResponseBody
	public void submitOrder(HttpServletRequest request, @RequestParam(value = "customerId", required = false) String customerId,
			@RequestParam(value = "receiveTime", required = false) String receiveTime,
			@RequestParam(value = "distributionMode", required = false) String distributionMode, @RequestParam(value = "remark", required = false) String remark,
			@RequestParam(value = "storeId", required = false) String storeId, HttpServletResponse response) {
		AjaxJson j = new AjaxJson();
		// 生成订单
		MshopOrderEntity order = mShopWechatService.submitOrder(customerId, storeId, distributionMode, request, remark,receiveTime);
		// 生成支付请求json
		String json = mShopWechatService.getWeChatPaymentJsonWithOrder(order, request);
		SpringMVCUtil.print(json, response);
		// j.setMsg(json);
		// return j;
	}

	@RequestMapping(params = "testPay")
	public ModelAndView testPay() {
		return new ModelAndView("weixin/mshop/mobile/store-back");
	}

	/**
	 * 支付回调 (接收微信支付结果通用通知)
	 */
	@RequestMapping(value = "/mchNotify")
	@ResponseBody
	public void mchNotify(HttpServletResponse response, HttpServletRequest request) {
		try {
			// MchPayNotify
			// mchPayNotify=XMLConverUtil.convertToObject(MchPayNotify.class,
			// getRequest().getInputStream());
			// System.out.println("mchPayNotify:"+mchPayNotify.getIs_subscribe());
			Map<String, String> requestMap = MessageUtil.parseXml(request);
			String orderId = requestMap.get("orderId");
			System.out.println("<<<支付回调orderId:" + orderId);
			mShopWechatService.confirmOrder(orderId);
			SpringMVCUtil.print("<xml><return_code><![CDATA[SUCCESS" + "]]></return_code><return_msg><![CDATA[" + "]]></return_msg></xml>", response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 跳转至支付失败页面
	 * 
	 * @param goodsId
	 * @return
	 */
	@RequestMapping(params = "paymentFail", method = RequestMethod.GET)
	public ModelAndView paymentFail(HttpServletRequest request, @RequestParam(value = "customerId", required = false) String customerId) {
		System.out.println("<<<<<<<<<<<<<<<<<<<<<<<asdjifaf");
		request.setAttribute("customerId", customerId);
		return new ModelAndView("weixin/mshop/mobile/paymentFail");
	}

	/**
	 * 跳转至支付成功页面
	 * 
	 * @param goodsId
	 * @return
	 */
	@RequestMapping(params = "paymentSuccess", method = RequestMethod.GET)
	public ModelAndView paymentSuccess(HttpServletRequest request, @RequestParam(value = "orderId", required = false) String orderId,
			@RequestParam(value = "customerId", required = false) String customerId) {
		request.setAttribute("customerId", customerId);
		return new ModelAndView("weixin/mshop/mobile/paymentSuccess");
	}

	/**
	 * 取消订单
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "removeOrder")
	@ResponseBody
	public AjaxJson removeOrder(@RequestParam(value = "orderId", required = false) String orderId) {
		AjaxJson j = new AjaxJson();
		mShopWechatService.removeOrder(orderId);
		return j;
	}

	/**
	 * 付款（支付失败的订单再次付款）
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "pay")
	@ResponseBody
	public void pay(@RequestParam(value = "orderId", required = false) String orderId, HttpServletResponse response, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtils.isNotBlank(orderId)) {
			MshopOrderEntity order = mshopOrderService.get(MshopOrderEntity.class, orderId);
			// 生成支付请求json
			String json = mShopWechatService.getWeChatPaymentJsonWithOrder(order, request);
			// return j;
			SpringMVCUtil.print(json, response);
		}
	}

	/**
	 * 确认收货
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "confirmReceive")
	@ResponseBody
	public void confirmReceive(@RequestParam(value = "orderId", required = false) String orderId, HttpServletResponse response, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtils.isNotBlank(orderId)) {
			mShopWechatService.confirmReceive(orderId);
		}
	}

	/**
	 * 去评价
	 * 
	 * @param goodsId
	 * @return
	 */
	@RequestMapping(params = "goEvaluate")
	public ModelAndView goEvaluate(HttpServletRequest request, @RequestParam(value = "storeId", required = false) String storeId,
			@RequestParam(value = "orderId", required = false) String orderId, @RequestParam(value = "customerId", required = false) String customerId) {
		request.setAttribute("customerId", customerId);
		request.setAttribute("storeId", storeId);
		request.setAttribute("orderId", orderId);
		return new ModelAndView("weixin/mshop/mobile/publishEvaluation");
	}

	/**
	 * 提交评价
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "doEvaluate", method = RequestMethod.POST)
	@ResponseBody
	public void doEvaluate(HttpServletRequest request, @RequestParam(value = "level", required = false) String level,
			@RequestParam(value = "content", required = false) String content, @RequestParam(value = "storeId", required = false) String storeId,
			@RequestParam(value = "orderId", required = false) String orderId, @RequestParam(value = "customerId", required = false) String customerId) {
		AjaxJson j = new AjaxJson();
		if (StringUtils.isNotBlank(storeId) && StringUtils.isNotBlank(orderId) && StringUtils.isNotBlank(customerId)) {
			mShopWechatService.evaluate(storeId, orderId, customerId, level, content);
		}
	}

	@RequestMapping(params = "test")
	@ResponseBody
	public AjaxJson test(){
		AjaxJson j = new AjaxJson();
		//MshopOrderEntity order = mshopOrderService.get(MshopOrderEntity.class, "402880ef522426f80152242eac2d0001");
		//mshopOrderService.updateBySqlString("update weixin_mshop_order set status="+MshopOrderEntity.ORDER_STATE_UNSEND+" where id='"+"402880ef522426f80152242eac2d0001"+"'");
		mShopWechatService.confirmOrder("402880ef522426f80152242eac2d0001");
		return j;
	}

	/**
	 * go帮助页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "goHelp")
	public ModelAndView goHelp(HttpServletRequest request, @RequestParam(value = "customerId", required = false) String customerId) {
		request.setAttribute("customerId", customerId);
		return new ModelAndView("weixin/mshop/mobile/help");
	}

	/**
	 * go搜索界面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "goSearch")
	public ModelAndView goSearch(HttpServletRequest request, @RequestParam(value = "customerId", required = false) String customerId) {
		request.setAttribute("customerId", customerId);
		return new ModelAndView("weixin/mshop/mobile/search");
	}

	/**
	 * do搜索
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "doSearch")
	public ModelAndView doSearch(HttpServletRequest request, @RequestParam(value = "customerId", required = false) String customerId,
			@RequestParam(value = "type", required = false) String type, @RequestParam(value = "keyword", required = false) String keyword) {
		// List<MshopStoreEntity> list=null;
		if (StringUtils.isNotBlank(keyword) && StringUtils.isNotBlank(type)) {
			if ("store".equals(type)) {
				// list=mShopWechatService.searchStore(keyword);
				// list.addAll(list);
				request.setAttribute("result", mShopWechatService.searchStore(keyword));
			} else {// 搜索商品
				request.setAttribute("result", mShopWechatService.searchGoods(keyword));
			}
		}
		request.setAttribute("type", type);
		request.setAttribute("keyword", keyword);
		request.setAttribute("customerId", customerId);
		return new ModelAndView("weixin/mshop/mobile/search");
	}
	
	@RequestMapping(params = "checkStoreStatus")
	@ResponseBody
	public AjaxJson checkStoreStatus(@RequestParam(value = "storeId", required = false) String storeId) {
		AjaxJson j = new AjaxJson();
		MshopStoreEntity store = mShopStoreService.get(MshopStoreEntity.class,storeId);
		if (store != null) {
			Date startTime = store.getStartTime();
			Date endTime = store.getEndTime();
			Date nowTime = new Date();
			// 判断是否在营业时间范围
			if (DateUtils.compareTime(DateUtils.formatShortTimeDetail(nowTime), DateUtils.formatShortTimeDetail(startTime)) == 1
					&& DateUtils.compareTime(DateUtils.formatShortTimeDetail(nowTime), DateUtils.formatShortTimeDetail(endTime))

					== -1) {
				j.setSuccess(true);
				return j;
			}
		}
		j.setSuccess(false);
		return j;
	}

	/*
	 * @RequestMapping(params = "goCategoryGoods") public ModelAndView
	 * goCategoryGoods(HttpServletRequest request){ String accountid =
	 * request.getParameter("accountid"); String categoryId =
	 * request.getParameter("categoryId"); String sortName =
	 * request.getParameter("sortName"); String category =
	 * request.getParameter("category"); String sortType=
	 * "ASC".equals(request.getParameter("sortType"))?"DESC":"ASC";
	 * if(StringUtils.isBlank(accountid)||StringUtils.isBlank(categoryId)){
	 * //TODO跳转到有问题页面 } if(ShopGoodsEntity.GOODS_SORT_DATE.equals(sortName)){
	 * 
	 * } //List<ShopGoodsEntity>
	 * goodsList=mShopWechatService.getGoodsByCategory(accountid, categoryId);
	 * //request.setAttribute("goodsList", goodsList);
	 * request.setAttribute("sortName", sortName);
	 * request.setAttribute("sortType",sortType);
	 * request.setAttribute("accountid", accountid);
	 * request.setAttribute("category", category); return new
	 * ModelAndView("weixin/shop/mobile/category-goods"); }
	 */

	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	@Autowired
	private MshopCustomerService mshopCustomerService;
	@Autowired
	private MShopWechatService mShopWechatService;
	@Autowired
	private MshopStoreServiceI mShopStoreService;
	@Autowired
	private MshopGoodtypeServiceI mshopGoodtypeService;
	@Autowired
	private MshopCartServiceI mshopCartService;
	@Autowired
	private WxMshopCustomerServiceI wxMshopCustomerService;
	@Autowired
	private MshopOrderServiceI mshopOrderService;
	@Autowired
	private MshopGoodsServiceI mshopGoodsService;
	@Autowired
	private WeixinDispatchServiceI dispatchService;
	@Autowired
	private MshopTypeServiceI mshopTypeService;

}
