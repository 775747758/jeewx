package weixin.mshop.wechat.service;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.util.LogUtil;
import org.jeecgframework.core.util.UUIDGenerator;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.logicalcobwebs.proxool.admin.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.sf.json.JSONObject;
import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.util.WeixinUtil;
import weixin.mshop.advertisement.entity.MshopAdvertisementEntity;
import weixin.mshop.advertisement.service.MshopAdvertisementServiceI;
import weixin.mshop.cart.entity.MshopCartEntity;
import weixin.mshop.cart.service.MshopCartServiceI;
import weixin.mshop.customer.entity.WxMshopCustomerEntity;
import weixin.mshop.customer.service.WxMshopCustomerServiceI;
import weixin.mshop.dispatch.entity.WeixinDispatchEntity;
import weixin.mshop.dispatch.service.WeixinDispatchServiceI;
import weixin.mshop.evaluate.entity.MshopEvaluateEntity;
import weixin.mshop.evaluate.service.MshopEvaluateServiceI;
import weixin.mshop.goods.entity.MshopGoodsEntity;
import weixin.mshop.goods.service.MshopGoodsServiceI;
import weixin.mshop.order.entity.MshopOrderEntity;
import weixin.mshop.order.service.MshopOrderServiceI;
import weixin.mshop.ordergoods.entity.MshopOrdergoodsEntity;
import weixin.mshop.ordergoods.service.MshopOrdergoodsServiceI;
import weixin.mshop.store.entity.MshopStoreEntity;
import weixin.mshop.store.service.MshopStoreServiceI;
import weixin.mshop.storeadmin.entity.MshopStoreadminEntity;
import weixin.mshop.storeadmin.service.MshopStoreadminServiceI;
import weixin.mshop.wechat.pay.PayPackage;
import weixin.mshop.wechat.util.NumberUtil;
import weixin.mshop.wechat.util.PayUtil;
import weixin.mshop.wechat.util.UUID;
import weixin.mshop.wechat.vo.MshopCartVo;
import weixin.mshop.wechat.vo.MshopOrderVo;
import weixin.popular.api.MessageAPI;
import weixin.popular.bean.templatemessage.TemplateMessage;
import weixin.popular.bean.templatemessage.TemplateMessageItem;
import weixin.popular.bean.templatemessage.TemplateMessageResult;
import weixin.popular.support.TokenManager;
import weixin.popular.util.JsonUtil;
import weixin.util.DateUtils;

/**
 * @author 作者 : 邓文杰
 * @version 创建时间：2015-9-30 下午3:05:51 类说明
 */
@Service("MShopWechatService")
@Transactional
public class MShopWechatService {

	public List<MshopGoodsEntity> getHomeGoods(WeixinAccountEntity account) {
		CriteriaQuery cq = new CriteriaQuery(MshopGoodsEntity.class);
		cq.eq("accountid", account.getId());
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		// cq.eq("statement",MshopGoodsEntity.GOODS_STATE_HOME);//首页商品
		cq.add();
		return mshopGoodsService.getListByCriteriaQuery(cq, false);
	}

	public List<MshopAdvertisementEntity> getHomeAd(WeixinAccountEntity account) {
		return mshopAdvertisementService.findByProperty(MshopAdvertisementEntity.class, "weixinAccountid", account.getWeixin_accountid());
	}

	public List<MshopGoodsEntity> getGoodsByCategory(String accountid, String categoryId) {
		CriteriaQuery cq = new CriteriaQuery(MshopGoodsEntity.class);
		cq.eq("accountid", accountid);
		cq.eq("idCategory", categoryId);
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		return mshopGoodsService.getListByCriteriaQuery(cq, false);
	}

	public List<MshopStoreEntity> getRecommendStore(String accountid) {
		CriteriaQuery cq = new CriteriaQuery(MshopStoreEntity.class);
		cq.eq("accountid", accountid);
		cq.eq("status", MshopStoreEntity.STORE_STATE_NORMAL);// 店铺必须为正常营业的
		cq.eq("isRecommend", MshopStoreEntity.RECOMMEND);// 店铺必须是后台设置的推荐店铺
		cq.addOrder("orders", SortDirection.asc);
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		return mshopStoreService.getListByCriteriaQuery(cq, false);
	}

	public void addToCart(MshopCartEntity cart) {
		CriteriaQuery cq = new CriteriaQuery(MshopCartEntity.class);
		cq.eq("idGoods", cart.getIdGoods());
		cq.eq("idCustomer", cart.getIdCustomer());
		if (StringUtils.isNotBlank(cart.getSpec())) {
			cq.eq("spec", cart.getSpec());
		}
		cq.setProjection(Property.forName("count"));
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		List<Object> list = mshopCartService.getListByCriteriaQuery(cq, false);

		// cq.getDetachedCriteria().setProjection(Projections.projectionList().add(Projections.rowCount()));
		// String cout=mshopCartService.getListByCriteriaQuery(cq,
		// false).get(0).toString();
		// 如果购物车中此规格商品数量为0，那么添加到购物车
		if (list.isEmpty()) {
			MshopGoodsEntity goods = mshopGoodsService.get(MshopGoodsEntity.class, cart.getIdGoods());
			if (goods != null) {
				cart.setCreateDate(new Date());
				cart.setGoodsName(goods.getName());
				cart.setImgurl(goods.getImgurl());
				cart.setPrice(goods.getRealPrice());
				cart.setIdStore(goods.getIdStore());
				cart.setCount(1);
				mshopCartService.save(cart);
			}
		} else {// 如果购物车中数量大于0，就不添加到购物车而是将购物车中此商品数量+1
				// 获取总行数
			String cout = list.get(0).toString();
			int count = Integer.parseInt(cout) + 1;
			if (StringUtils.isNotBlank(cart.getSpec())) {
				mshopCartService.updateBySqlString("update weixin_mshop_cart set count='" + count + "' where id_goods='" + cart.getIdGoods() + "' and id_customer='" + cart.getIdCustomer() + "' and spec='" + cart.getSpec() + "'");
			} else {
				mshopCartService.updateBySqlString("update weixin_mshop_cart set count='" + count + "' where id_goods='" + cart.getIdGoods() + "' and id_customer='" + cart.getIdCustomer() + "'");
			}

		}
	}

	public void removeFromCart(MshopCartEntity cart) {
		CriteriaQuery cq = new CriteriaQuery(MshopCartEntity.class);
		cq.eq("idGoods", cart.getIdGoods());
		cq.eq("idCustomer", cart.getIdCustomer());
		cq.add();
		MshopCartEntity realCart = (MshopCartEntity) mshopCartService.getListByCriteriaQuery(cq, false).get(0);
		if (realCart != null) {
			if (realCart.getCount().intValue() > 1) {
				realCart.setCount(realCart.getCount().intValue() - 1);
				mshopCartService.updateBySqlString("update weixin_mshop_cart set count='" + realCart.getCount() + "' where id='" + realCart.getId() + "'");
			} else {
				mshopCartService.delete(realCart);
			}
		}
	}

	public void removeFromCartWithSpec(String goodsId, String customerId, String spec) {
		CriteriaQuery cq = new CriteriaQuery(MshopCartEntity.class);
		cq.eq("idGoods", goodsId);
		cq.eq("idCustomer", customerId);
		if (StringUtils.isNotBlank(spec)) {
			cq.eq("spec", spec);
		}
		cq.setProjection(Property.forName("count"));
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		List<Object> list = mshopCartService.getListByCriteriaQuery(cq, false);
		if (!list.isEmpty()) {
			// 获取总行数
			String cout = list.get(0).toString();
			int count = Integer.parseInt(cout) - 1;
			if (count <= 0) {
				MshopCartEntity cart = new MshopCartEntity();
				cart.setIdCustomer(customerId);
				cart.setIdGoods(goodsId);
				cart.setSpec(spec);
				mshopCartService.delete(cart);
			} else {
				mshopCartService.updateBySqlString("update weixin_mshop_cart set count='" + count + "' where id_goods='" + goodsId + "' and id_customer='" + customerId + "' and spec='" + spec + "'");
			}
		}
	}

	public String getCartCountBySpec(String idGoods, String idCustomer, String spec) {
		CriteriaQuery cq = new CriteriaQuery(MshopCartEntity.class);
		cq.eq("idGoods", idGoods);
		cq.eq("idCustomer", idCustomer);
		cq.eq("spec", spec);
		cq.setProjection(Property.forName("count"));
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		List<Object> list = mshopCartService.getListByCriteriaQuery(cq, false);
		if (list.isEmpty()) {
			return "0";
		} else {
			return list.get(0).toString();
		}
	}

	// String sql="select new
	// MshopCartEntity(cart.id,cart.count,cart.goodsName,cart.price,cart.spec,cart.idGoods,cart.imgurl)
	// from MshopCartEntity cart where id=111";
	// String sql="select distinct store from MshopStoreVo store inner join
	// fetch store.cartList";//可以一条sql语句查出

	public MshopCartVo getCartVo(String customerId, String storeId) {
		List<MshopCartEntity> cartList = getCartList(customerId, storeId);
		// 计算vo的价格
		int count = 0;
		double price = 0;
		for (MshopCartEntity cart : cartList) {
			count = count + cart.getCount().intValue();
			price = price + (cart.getGoods().getRealPrice() * cart.getCount().intValue());
		}
		MshopCartVo vo = new MshopCartVo();
		vo.setCartList(cartList);
		vo.setCustomer(mshopCustomerService.get(WxMshopCustomerEntity.class, customerId));
		vo.setPrice(Double.parseDouble(String.format("%.2f", price)));
		vo.setCount(count);
		return vo;
	}

	public WeixinDispatchEntity getDispatch() {
		return (WeixinDispatchEntity) weixinDispatchService.getList(WeixinDispatchEntity.class).get(0);
	}

	public MshopOrderEntity submitOrder(String customerId, String storeId, String distributionMode, HttpServletRequest request, String remark, String receiveTime) {
		// 1、新建一个Order实体类
		MshopOrderEntity order = new MshopOrderEntity();
		// 2、查询客户实体和店铺实体
		WxMshopCustomerEntity customer = mshopCustomerService.get(WxMshopCustomerEntity.class, customerId);
		MshopStoreEntity store = mshopStoreService.get(MshopStoreEntity.class, storeId);
		// 3、设置公众号信息及状态和客户ID
		order.setAccountid(store.getAccountid());
		order.setWeixinAccountid(store.getWeixinAccountid());
		order.setStatus(MshopOrderEntity.ORDER_STATE_UNPAYMENT);
		order.setIdCustomer(customerId);
		order.setCustomer(customer);
		order.setIdStore(storeId);
		order.setReceiverName(customer.getRealName());
		order.setPhone(customer.getPhone());
		order.setNickname(customer.getNickname());
		order.setCreateDate(new Date());
		order.setMessage(remark);
		order.setReceiveTime(receiveTime);
		// 写死（外卖类别）
		if ("4028813a50faa03d0150faa0deaf0001".equals(store.getIdType())) {
			order.setDistributionMode(distributionMode);
		} else {// 除外卖类商店订单全都默认快递配送
			order.setDistributionMode(MshopOrderEntity.DISTRIBUTION_MODE_NORMAL);
		}
		// 4、获取session中的自增长数字并设置到session中
		String uuid13 = UUID.getUUID13(request);
		order.setCode(uuid13);// 13位订单号
		// 5、设置订单地址（如果用户没有设置，会先跳到地址填写界面）
		order.setAddress(customer.getAddress() + "  " + customer.getAddressDetail());
		// 6、设置order总数量以及总价格以及邮费，并生成订单商品表
		int count = 0;
		double price = 0;
		List<MshopOrdergoodsEntity> orderGoodsList = new ArrayList<MshopOrdergoodsEntity>();
		for (MshopCartEntity cart : getCartList(customerId, storeId)) {
			// 因为购物车表中的价格不是最新的，所以每次都要重新获取
			count = count + cart.getCount().intValue();
			price = price + (cart.getGoods().getRealPrice() * cart.getCount().intValue());
			MshopOrdergoodsEntity orderGoods = new MshopOrdergoodsEntity();
			orderGoods.setIdGoods(cart.getIdGoods());
			orderGoods.setCount(cart.getCount());
			orderGoods.setOriginalPrice(cart.getGoods().getOriginalPrice());
			orderGoods.setGoodsName(cart.getGoodsName());
			orderGoods.setRealPrice(cart.getGoods().getRealPrice());
			orderGoods.setImgurl(cart.getGoods().getImgurl());
			orderGoodsList.add(orderGoods);
		}
		// 到店消费不需要邮费
		if (distributionMode.equals(MshopOrderEntity.DISTRIBUTION_MODE_TO)) {
			order.setFreight(0d);
		} else {// 除外卖类商店订单全都默认快递配送
			WeixinDispatchEntity dispatch = getDispatch();
			if (NumberUtil.compare(price, dispatch.getLimitMoney()) >= 0) {
				order.setFreight(0d);
			} else {
				order.setFreight(dispatch.getExpressPrice());
			}
		}
		order.setTotalCount(count);
		double totalPrice = order.getFreight() + price;
		// 四舍五入
		BigDecimal b = new BigDecimal(totalPrice);
		order.setTotalPrice(b.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());// 保留两位小数
		// 7.保存订单并且返回ID
		String orderId = (String) mshopOrderService.save(order);
		System.out.println("<<<<<<<<<<<<<<<orderIdorderIdorderId:"+orderId);
		// 8、保存所有的订单商品
		saveOrderGoods(orderGoodsList, orderId);
		// 9、清空该用户在此店铺的购物车
		mshopCartService.deleteCart(order.getIdCustomer(), order.getIdStore());
		return order;
	}

	/*
	 * 当支付回调时更新订单
	 */
	public void confirmOrder(String orderId) {
		//mshopOrderService.updateBySqlString("update weixin_mshop_order set status="+MshopOrderEntity.ORDER_STATE_UNSEND+" where id='"+orderId+"'");
		MshopOrderEntity order = mshopOrderService.get(MshopOrderEntity.class, orderId);
		//mshopOrderService.updateBySqlString("update weixin_mshop_order set status="+MshopOrderEntity.ORDER_STATE_UNSEND+" where id='"+orderId+"'");
		// 因为微信会多次调用此接口，第一次调用的时候更改状态
		if (MshopOrderEntity.ORDER_STATE_UNPAYMENT.equals(order.getStatus())) {
			// 1、更新订单状态
			order.setStatus(MshopOrderEntity.ORDER_STATE_UNSEND);
			mshopOrderService.updateBySqlString("update weixin_mshop_order set status="+MshopOrderEntity.ORDER_STATE_UNSEND+" where id='"+orderId+"'");
			// 2、清空该用户在此店铺的购物车
			// mshopCartService.deleteCart(order.getIdCustomer(),
			// order.getIdStore());
			// 3、更新商品销量
			// 先将sell_count为null的改为0
			StringBuffer sb = new StringBuffer("update weixin_mshop_goods set sell_count=0 where sell_count is null;");
			mshopGoodsService.updateBySqlString(sb.toString());
			// 再加1
			sb = new StringBuffer("update weixin_mshop_goods set sell_count=sell_count+1 where id in (");
			for (MshopOrdergoodsEntity orderGoods : order.getOrderGoodsList()) {
				sb.append("\'").append(orderGoods.getIdGoods()).append("\'").append(",");
			}
			sb = new StringBuffer(sb.substring(0, sb.length() - 1));
			sb.append(")");
			mshopGoodsService.updateBySqlString(sb.toString());
			// 4、通知管理员(模板消息)
			notifyNewOrder(order);
		}
	}

	public MshopOrderVo getOrderVo(String customerId) {
		ResourceBundle bundlerWX = ResourceBundle.getBundle("weixin");
		MshopOrderVo vo = new MshopOrderVo();
		List<MshopOrderEntity> unpaymentOrderList = new ArrayList<MshopOrderEntity>();
		List<MshopOrderEntity> unsendOrderList = new ArrayList<MshopOrderEntity>();
		List<MshopOrderEntity> unreceiveOrderList = new ArrayList<MshopOrderEntity>();
		List<MshopOrderEntity> unevaluateOrderList = new ArrayList<MshopOrderEntity>();
		List<MshopOrderEntity> realAllOrderList = new ArrayList<MshopOrderEntity>();
		CriteriaQuery cq = new CriteriaQuery(MshopOrderEntity.class);
		cq.eq("idCustomer", customerId);
		cq.addOrder("createDate", SortDirection.desc);
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		List<MshopOrderEntity> allOrderList = mshopOrderService.getListByCriteriaQuery(cq, false);

		for (MshopOrderEntity order : allOrderList) {
			if (MshopOrderEntity.ORDER_STATE_UNPAYMENT.equals(order.getStatus())) {
				int days = Integer.parseInt(bundlerWX.getString("autoRemoveUnPaymentOrder"));
				// 检查是否超过设定的时间，超过时间的就删除掉
				if (!isExpire(order.getCreateDate(), days)) {
					unpaymentOrderList.add(order);
					realAllOrderList.add(order);
				} else {
					mshopOrderService.deleteEntityById(MshopOrderEntity.class, order.getId());
				}
			}
			if (MshopOrderEntity.ORDER_STATE_UNSEND.equals(order.getStatus())) {
				unsendOrderList.add(order);
				realAllOrderList.add(order);
			}
			if (MshopOrderEntity.ORDER_STATE_UNRECEIVE.equals(order.getStatus())) {
				int days = Integer.parseInt(bundlerWX.getString("autoConfirmOrder"));
				// 检查是否超过设定的时间，超过时间的就删除掉
				if (!isExpire(order.getCreateDate(), days)) {
					unreceiveOrderList.add(order);
					realAllOrderList.add(order);
				} else {
					// 超期自动确认
					confirmReceive(order.getId());
					// 添加到待评价列表中
					unevaluateOrderList.add(order);
					order.setStatus(MshopOrderEntity.ORDER_STATE_UNEVALUATE);
					realAllOrderList.add(order);
				}

			}
			if (MshopOrderEntity.ORDER_STATE_UNEVALUATE.equals(order.getStatus())) {
				int days = Integer.parseInt(bundlerWX.getString("autoEvaluate"));
				// 检查是否超过设定的时间，超过时间的就删除掉
				if (!isExpire(order.getCreateDate(), days)) {
					unevaluateOrderList.add(order);
					realAllOrderList.add(order);
				} else {
					order.setStatus(MshopOrderEntity.ORDER_STATE_FINSHED);
					MshopEvaluateEntity evaluate = new MshopEvaluateEntity();
					evaluate.setContent("评价方未及时作出评价，系统默认好评！");
					evaluate.setLevel(MshopEvaluateEntity.LEVEL_4);
					evaluate.setIdCustomer(order.getIdCustomer());
					evaluate.setIdOrder(order.getId());
					evaluate.setIdStore(order.getIdStore());
					// 自动好评
					evaluate(evaluate);
					realAllOrderList.add(order);
				}

			}
			if (MshopOrderEntity.ORDER_STATE_FINSHED.equals(order.getStatus())) {
				realAllOrderList.add(order);
			}
		}
		vo.setAllOrderList(realAllOrderList);
		vo.setUnpaymentOrderList(unpaymentOrderList);
		vo.setUnsendOrderList(unsendOrderList);
		vo.setUnreceiveOrderList(unreceiveOrderList);
		vo.setUnevaluateOrderList(unevaluateOrderList);
		return vo;
	}

	public String getWeChatPaymentJsonWithOrder(MshopOrderEntity order, HttpServletRequest request) {
		ResourceBundle bundlerWX = ResourceBundle.getBundle("weixin");
		PayPackage payPackage = generatePayPackage(order, request);
		String prepay_id = PayUtil.getPrepayId(payPackage, request, bundlerWX.getString("apisecret"));// 获取预订单号
		System.out.println("<<<<<<<<<<prepay_id：" + prepay_id);
		return PayUtil.generatePayJsRequestJson(payPackage, prepay_id, bundlerWX.getString("apisecret"));// 使用预订单号生成支付请求JSON
	}

	public PayPackage generatePayPackage(MshopOrderEntity order, HttpServletRequest request) {
		WeixinAccountEntity account = weixinAccountService.findByToUsername(order.getWeixinAccountid());
		ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
		ResourceBundle bundlerWX = ResourceBundle.getBundle("weixin");
		int totalPrice = (int) (order.getTotalPrice() * 100);
		PayPackage payPackage = new PayPackage();
		payPackage.setAppid(account.getAccountappid());// "wx7d3163ae41640c60"
		payPackage.setOpenid(order.getCustomer().getOpenid());// "oWmNgtzh2pNegFPmfb9CRtgYyIcQ"
		payPackage.setMch_id(bundlerWX.getString("mchid"));// "10018564"
		payPackage.setNotify_url(bundler.getString("domain") + "/mshopWechatController/mchNotify.do?orderId=" + order.getId());// 这里notify_url是
																																// 支付完成后微信发给该链接信息，可以判断会员是否支付成功，改变订单状态等。
		payPackage.setTrade_type("JSAPI");
		payPackage.setOut_trade_no(order.getCode());
		payPackage.setSpbill_create_ip(request.getRemoteAddr());// 订单生成的机器 IP
		payPackage.setNonce_str(UUIDGenerator.generate());
		payPackage.setBody(account.getAccountname());
		payPackage.setAttach("微信支付");
		payPackage.setTotal_fee(totalPrice + "");
		return payPackage;
	}

	/*
	 * 循环订单商品列表，将orderId设置进去，最后保存到数据库
	 */
	public void saveOrderGoods(List<MshopOrdergoodsEntity> orderGoodsList, String orderID) {
		for (MshopOrdergoodsEntity orderGoods : orderGoodsList) {
			orderGoods.setIdOrder(orderID);
		}
		mshopOrdergoodsService.batchSave(orderGoodsList);
	}

	/*
	 * 获取客户在某店铺的购物车列表
	 */
	public List<MshopCartEntity> getCartList(String customerId, String storeId) {
		CriteriaQuery cq = new CriteriaQuery(MshopCartEntity.class);
		cq.eq("idStore", storeId);
		cq.eq("idCustomer", customerId);
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		return mshopCartService.getListByCriteriaQuery(cq, false);
	}

	public void removeOrder(String orderId) {
		if (StringUtils.isNotBlank(orderId)) {
			// 1、删除此订单(会级联删除)--已经取消级联删除
			mshopOrderService.deleteEntityById(MshopOrderEntity.class, orderId);
			// 2、删除此订单的订单商品
			mshopOrdergoodsService.deleteOrderGoodsByOrderId(orderId);
		}
	}

	public void confirmReceive(String orderId) {
		mshopOrderService.updateBySqlString("update weixin_mshop_order set status=" + MshopOrderEntity.ORDER_STATE_UNEVALUATE + " where id='" + orderId+"'");
	}

	public void evaluate(String storeId, String orderId, String customerId, String level, String content) {
		MshopOrderEntity order=mshopOrderService.get(MshopOrderEntity.class, orderId);
		if(MshopOrderEntity.ORDER_STATE_UNEVALUATE.equals(order.getStatus())){
			MshopEvaluateEntity evaluation = new MshopEvaluateEntity();
			evaluation.setIdCustomer(customerId);
			evaluation.setIdOrder(orderId);
			evaluation.setIdStore(storeId);
			evaluation.setLevel(level);
			evaluation.setContent(content);
			evaluation.setCreateDate(new Date());
			// 1、保存评价
			evaluateService.save(evaluation);
			// 2、修改订单状态
			mshopOrderService.updateBySqlString("update weixin_mshop_order set status=" + MshopOrderEntity.ORDER_STATE_FINSHED + " where id= '" + evaluation.getIdOrder()+"'");
		}
	}

	public void evaluate(MshopEvaluateEntity evaluation) {
		// 1、保存评价
		evaluateService.save(evaluation);
		// 2、修改订单状态
		mshopOrderService.updateBySqlString("update weixin_mshop_order set status=" + MshopOrderEntity.ORDER_STATE_FINSHED + " where id= " + evaluation.getIdOrder());

	}

	public List<MshopStoreEntity> searchStore(String keyword) {
		CriteriaQuery cq = new CriteriaQuery(MshopStoreEntity.class);
		cq.add(Restrictions.like("storeName", "%" + keyword + "%"));
		// cq.like("storeName", keyword);//不是模糊搜索
		cq.eq("status", MshopStoreEntity.STORE_STATE_NORMAL);
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		return mshopStoreService.getListByCriteriaQuery(cq, false);
	}

	public List<MshopGoodsEntity> searchGoods(String keyword) {
		CriteriaQuery cq = new CriteriaQuery(MshopGoodsEntity.class);
		cq.add(Restrictions.like("name", "%" + keyword + "%"));
		cq.eq("statement", MshopGoodsEntity.GOODS_STATE_NORMAL);
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		return mshopGoodsService.getListByCriteriaQuery(cq, false);
	}

	public boolean isExpire(Date createDate, int days) {
		Calendar nowCalendar = Calendar.getInstance();
		nowCalendar.setTime(new Date());
		Calendar createCalendar = Calendar.getInstance();
		createCalendar.setTime(createDate);
		// 相差的小时
		int hoursDiff = DateUtils.dateDiff('h', nowCalendar, createCalendar);
		return hoursDiff > (days * 24);
	}

	public boolean isOnbusiness(String storeId) {
		MshopStoreEntity store = mshopStoreService.get(MshopStoreEntity.class, storeId);
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
		String currendTime = sdf.format(new java.util.Date());
		String startTime = sdf.format(store.getStartTime());
		String endTime = sdf.format(store.getEndTime());
		if (DateUtils.compareTime(currendTime, startTime) == 1 && DateUtils.compareTime(currendTime, endTime) == -1) {
			return true;
		}
		return false;
	}

	public void updateAddress(WxMshopCustomerEntity customer) {
		WxMshopCustomerEntity realCustomer = mshopCustomerService.get(WxMshopCustomerEntity.class, customer.getId());
		realCustomer.setRealName(customer.getRealName());
		realCustomer.setPhone(customer.getPhone());
		realCustomer.setAddress(customer.getAddress());
		realCustomer.setAddressDetail(customer.getAddressDetail());
		mshopCustomerService.updateEntitie(realCustomer);
	}

	public List<MshopCartEntity> getCartListByGoods() {
		return null;
	}

	/*
	 * 通知工作人员，订单已经支付
	 */
	public void notifyNewOrder(MshopOrderEntity order) {
		// 准备数据
		LinkedHashMap<String, TemplateMessageItem> data = new LinkedHashMap<String, TemplateMessageItem>();
		TemplateMessageItem item1 = new TemplateMessageItem(DateUtils.getDataString(new SimpleDateFormat("yyyy-MM-dd HH:mm")), "#000000");
		TemplateMessageItem item2 =null;
		if(MshopOrderEntity.DISTRIBUTION_MODE_NORMAL.equals(order.getDistributionMode())){
			item2 = new TemplateMessageItem("快递配送", "#000000");
		}else{
			item2 = new TemplateMessageItem("到店消费", "#000000");
		}
		TemplateMessageItem item3 = new TemplateMessageItem(order.getReceiverName()+"|"+order.getPhone(), "#000000");
		TemplateMessageItem item4 = new TemplateMessageItem("配送地址", "#000000");
		TemplateMessageItem item5 = new TemplateMessageItem(order.getAddress() + "", "#000000");
		TemplateMessageItem item6 = new TemplateMessageItem( "您收到了一条新的订单["+order.getStore().getStoreName()+"]。", "#000000");
		StringBuffer remark=new StringBuffer();
		remark.append("送达时间："+order.getReceiveTime()+"\r\n");
		remark.append("订单号："+order.getCode()+"\r\n");
		remark.append("商品数量："+order.getTotalCount()+"\r\n");
		remark.append("订单金额："+order.getTotalPrice()+"元\r\n");
		remark.append("订单商品：");
		for(MshopOrdergoodsEntity orderGoods:order.getOrderGoodsList()){
			remark.append(orderGoods.getGoodsName()+"x"+orderGoods.getCount()+"|");
		}
		TemplateMessageItem item7 = new TemplateMessageItem(remark.toString().substring(0,remark.toString().length()-1), "#000000");
		data.put("first", item6);
		data.put("tradeDateTime", item1);
		data.put("orderType", item2);
		data.put("customerInfo", item3);
		data.put("orderItemName", item4);
		data.put("orderItemData", item5);
		data.put("remark", item7);
		TemplateMessage templateMessage = new TemplateMessage();
		templateMessage.setTemplate_id("1yfbyI8_4sJ6mWajR5Zo3IgFLWanegKYeIQ1ECI1Opk");// 设置模板ID，必须要在微信公众平台管理后台添加才可以(新订单通知)
		templateMessage.setData(data);
		// 通知总后台管理员
		for (MshopStoreadminEntity admin : mshopStoreadminService.getHeadAdmins()) {
			LogUtil.info("<<<<<<<<<<<<admin：" + admin.getName());
			templateMessage.setTouser(admin.getOpenid());
			String messageJson = JsonUtil.toJSONString(templateMessage);
		 	WeixinUtil.httpRequest("https://api.weixin.qq.com/cgi-bin/message/template/send?access_token="+weixinAccountService.getAccessToken("gh_fa5214e8f012"), "POST", messageJson);
			//TemplateMessageResult result = MessageAPI.messageTemplateSend(weixinAccountService.getAccessToken("gh_fa5214e8f012"), templateMessage);
		}
		//通知店铺后台管理员
		for (MshopStoreadminEntity admin : mshopStoreadminService.getStoreAdmins(order.getIdStore())) {
			LogUtil.info("<<<<<<<<<<<<admin：" + admin.getName());
			templateMessage.setTouser(admin.getOpenid());
			String messageJson = JsonUtil.toJSONString(templateMessage);
		 	WeixinUtil.httpRequest("https://api.weixin.qq.com/cgi-bin/message/template/send?access_token="+weixinAccountService.getAccessToken("gh_fa5214e8f012"), "POST", messageJson);
		}
	}

	@Autowired
	private MshopEvaluateServiceI evaluateService;
	@Autowired
	private MshopGoodsServiceI mshopGoodsService;
	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	@Autowired
	private MshopAdvertisementServiceI mshopAdvertisementService;
	@Autowired
	private MshopCartServiceI mshopCartService;
	@Autowired
	private MshopStoreServiceI mshopStoreService;
	@Autowired
	private WxMshopCustomerServiceI mshopCustomerService;
	@Autowired
	private WeixinDispatchServiceI weixinDispatchService;
	@Autowired
	private MshopOrderServiceI mshopOrderService;
	@Autowired
	private MshopOrdergoodsServiceI mshopOrdergoodsService;
	@Autowired
	private MshopStoreadminServiceI mshopStoreadminService;

}
