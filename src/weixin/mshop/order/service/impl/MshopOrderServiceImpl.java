package weixin.mshop.order.service.impl;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.LinkedHashMap;
import java.util.ResourceBundle;
import java.util.UUID;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.LogUtil;
import org.jeewx.api.core.exception.WexinReqException;
import org.jeewx.api.wxsendmsg.JwSendMessageAPI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.util.WeixinUtil;
import weixin.mshop.order.entity.MshopOrderEntity;
import weixin.mshop.order.service.MshopOrderServiceI;
import weixin.mshop.ordergoods.entity.MshopOrdergoodsEntity;
import weixin.mshop.storeadmin.entity.MshopStoreadminEntity;
import weixin.popular.bean.templatemessage.TemplateMessage;
import weixin.popular.bean.templatemessage.TemplateMessageItem;
import weixin.popular.util.JsonUtil;
import weixin.util.DateUtils;

@Service("mshopOrderService")
@Transactional
public class MshopOrderServiceImpl extends CommonServiceImpl implements MshopOrderServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((MshopOrderEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((MshopOrderEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((MshopOrderEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopOrderEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopOrderEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopOrderEntity t){
	 	return true;
 	}
 	
 	public void confirmSend(MshopOrderEntity mshopOrder) throws WexinReqException{
 		//1、更新数据库
 		this.updateBySqlString("update weixin_mshop_order set status="+MshopOrderEntity.ORDER_STATE_UNRECEIVE+"  where id='"+mshopOrder.getId()+"'");
 		//this.updateBySqlString("update weixin_mshop_order set status="+MshopOrderEntity.ORDER_STATE_UNRECEIVE+", express_name=\'"+mshopOrder.getExpressName()+"\' ,express_num=\'"+mshopOrder.getExpressNum()+"\'  where id="+mshopOrder.getId());
 		//2、通知客户已发货
 		//String accessToken=weixinAccountService.getAccessToken(mshopOrder.getWeixinAccountid());
 		//JwSendMessageAPI.messagePrivate(accessToken, mshopOrder.getCustomer().getOpenid(), "亲！您在"+DateUtils.formatTime(mshopOrder.getCreateDate())+"下单购买的货物已经发货了，请去个人中心查看详情！");
 		notifyOrderSend(mshopOrder);
 	}
 	
 	public void confirmToStore(MshopOrderEntity mshopOrder) {
 		this.updateBySqlString("update weixin_mshop_order set status="+MshopOrderEntity.ORDER_STATE_UNEVALUATE+"  where id='"+mshopOrder.getId()+"'");
 		//this.updateBySqlString("update weixin_mshop_order set status="+MshopOrderEntity.ORDER_STATE_UNRECEIVE+", express_name=\'"+mshopOrder.getExpressName()+"\' ,express_num=\'"+mshopOrder.getExpressNum()+"\'  where id="+mshopOrder.getId());
 		
 	}
 	
 	public int getOrderNumByStoreId(String storeId){
 		return new Long(  getCountForJdbc("SELECT COUNT(1) FROM weixin_mshop_order WHERE  id_store='"+storeId+"'")).intValue(); 
 	}
 	
 	
 	/*
	 * 通知用户，已发货
	 */
	public void notifyOrderSend(MshopOrderEntity order) {
		// 准备数据
		LinkedHashMap<String, TemplateMessageItem> data = new LinkedHashMap<String, TemplateMessageItem>();
		TemplateMessageItem first = new TemplateMessageItem("亲！"+order.getStore().getStoreName()+"已经给您发货了！", "#000000");
		TemplateMessageItem item1 = new TemplateMessageItem(order.getCode(), "#000000");
		TemplateMessageItem item2 =new TemplateMessageItem("已发货", "#000000");
		StringBuffer remark=new StringBuffer();
		remark.append("其他订单信息\r\n");
		remark.append("订单号："+order.getCode()+"\r\n");
		remark.append("送达时间："+order.getReceiveTime());
		remark.append("商品数量："+order.getTotalCount()+"\r\n");
		if(order.getFreight()>0){
			remark.append("配送费用："+order.getFreight()+"元\r\n");
		}else{
			remark.append("配送费用："+"免邮\r\n");
		}
		remark.append("订单金额："+order.getTotalPrice()+"元(包含邮费)\r\n");
		remark.append("订单商品：");
		for(MshopOrdergoodsEntity orderGoods:order.getOrderGoodsList()){
			remark.append(orderGoods.getGoodsName()+"x"+orderGoods.getCount()+"|");
		}
		TemplateMessageItem remarkItem =new TemplateMessageItem(remark.toString().substring(0,remark.toString().length()-1), "#000000");
		data.put("first", first);
		data.put("OrderSn", item1);
		data.put("OrderStatus", item2);
		data.put("remark", remarkItem);
		TemplateMessage templateMessage = new TemplateMessage();
		templateMessage.setTemplate_id("2OEvDscbpJ3UbKOLwmp2nshJHhrFeI5KDv1XOAJ7Njo");// 设置模板ID，必须要在微信公众平台管理后台添加才可以(新订单通知)
		templateMessage.setData(data);
		templateMessage.setTouser(order.getCustomer().getOpenid());
		ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
		templateMessage.setUrl(bundler.getString("domain")+ "/mshopWechatController.do?orderList&customerId"+order.getCustomer().getId());
		String messageJson = JsonUtil.toJSONString(templateMessage);
	 	WeixinUtil.httpRequest("https://api.weixin.qq.com/cgi-bin/message/template/send?access_token="+weixinAccountService.getAccessToken("gh_fa5214e8f012"), "POST", messageJson);
	}
 	
 	
 	@Autowired
	private WeixinAccountServiceI weixinAccountService;
 	
 	
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,MshopOrderEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{create_name}",String.valueOf(t.getCreateName()));
 		sql  = sql.replace("#{create_date}",String.valueOf(t.getCreateDate()));
 		sql  = sql.replace("#{update_name}",String.valueOf(t.getUpdateName()));
 		sql  = sql.replace("#{update_date}",String.valueOf(t.getUpdateDate()));
 		sql  = sql.replace("#{code}",String.valueOf(t.getCode()));
 		sql  = sql.replace("#{status}",String.valueOf(t.getStatus()));
 		sql  = sql.replace("#{address}",String.valueOf(t.getAddress()));
 		sql  = sql.replace("#{receiver_name}",String.valueOf(t.getReceiverName()));
 		sql  = sql.replace("#{phone}",String.valueOf(t.getPhone()));
 		sql  = sql.replace("#{id_customer}",String.valueOf(t.getIdCustomer()));
 		sql  = sql.replace("#{total_count}",String.valueOf(t.getTotalCount()));
 		sql  = sql.replace("#{total_price}",String.valueOf(t.getTotalPrice()));
 		sql  = sql.replace("#{freight}",String.valueOf(t.getFreight()));
 		sql  = sql.replace("#{message}",String.valueOf(t.getMessage()));
 		sql  = sql.replace("#{id_store}",String.valueOf(t.getIdStore()));
 		sql  = sql.replace("#{accountid}",String.valueOf(t.getAccountid()));
 		sql  = sql.replace("#{weixin_accountid}",String.valueOf(t.getWeixinAccountid()));
 		sql  = sql.replace("#{id_order_goods}",String.valueOf(t.getIdOrderGoods()));
 		sql  = sql.replace("#{express_name}",String.valueOf(t.getExpressName()));
 		sql  = sql.replace("#{express_num}",String.valueOf(t.getExpressNum()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}