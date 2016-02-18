package weixin.mshop.order.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

import weixin.mshop.customer.entity.WxMshopCustomerEntity;
import weixin.mshop.ordergoods.entity.MshopOrdergoodsEntity;
import weixin.mshop.store.entity.MshopStoreEntity;
import weixin.mshop.type.entity.MshopTypeEntity;

/**   
 * @Title: Entity
 * @Description: 多店版订单表
 * @author onlineGenerator
 * @date 2015-11-19 19:43:32
 * @version V1.0   
 *
 */
@Entity
@Table(name = "weixin_mshop_order", schema = "")
@SuppressWarnings("serial")
public class MshopOrderEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**创建人名称*/
	private java.lang.String createName;
	/**创建日期*/
	private java.util.Date createDate;
	/**修改人名称*/
	private java.lang.String updateName;
	/**修改日期*/
	private java.util.Date updateDate;
	/**订单号*/
	@Excel(exportName="订单号")
	private java.lang.String code;
	/**状态*/
	@Excel(exportName="状态")
	private java.lang.String status;
	/**地址*/
	@Excel(exportName="地址")
	private java.lang.String address;
	/**收件人*/
	@Excel(exportName="收件人")
	private java.lang.String receiverName;
	/**收件人手机号*/
	@Excel(exportName="收件人手机号")
	private java.lang.String phone;
	/**客户ID*/
	@Excel(exportName="客户ID")
	private java.lang.String idCustomer;
	/**总商品数*/
	@Excel(exportName="总商品数")
	private java.lang.Integer totalCount;
	/**总价格 含邮费*/
	@Excel(exportName="总价格 含邮费")
	private java.lang.Double totalPrice;
	/**邮费*/
	@Excel(exportName="邮费")
	private java.lang.Double freight;
	/**买家留言*/
	@Excel(exportName="买家留言")
	private java.lang.String message;
	/**店铺ID*/
	@Excel(exportName="店铺ID")
	private java.lang.String idStore;
	/**微信账号ID*/
	@Excel(exportName="微信账号ID")
	private java.lang.String accountid;
	/**原始ID*/
	@Excel(exportName="原始ID")
	private java.lang.String weixinAccountid;
	/**订单商品ID*/
	@Excel(exportName="订单商品ID")
	private java.lang.String idOrderGoods;
	/**快递名称*/
	@Excel(exportName="快递名称")
	private java.lang.String expressName;
	/**运单号*/
	@Excel(exportName="运单号")
	private java.lang.String expressNum;
	/**微信昵称*/
	@Excel(exportName="微信昵称")
	private java.lang.String nickname;
	/**配送方式*/
	@Excel(exportName="配送方式")
	private java.lang.String distributionMode;
	/**送达时间*/
	@Excel(exportName="送达时间")
	private java.lang.String receiveTime;
	
	
	
	
	/**待付款*/
	public static final String ORDER_STATE_UNPAYMENT = "0";
	/**待发货*/
	public static final String ORDER_STATE_UNSEND = "1";
	/**待收货*/
	public static final String ORDER_STATE_UNRECEIVE = "2";
	/**待评价*/
	public static final String ORDER_STATE_UNEVALUATE = "3";
	/**已完成*/
	public static final String ORDER_STATE_FINSHED = "4";
	
	/**配送方式：快递配送*/
	public static final String DISTRIBUTION_MODE_NORMAL = "0";
	/**配送方式： 到店消费*/
	public static final String DISTRIBUTION_MODE_TO = "1";
	
	private WxMshopCustomerEntity customer;

	@ManyToOne()
	@JoinColumn(name = "id_customer", insertable = false,updatable = false)
	public WxMshopCustomerEntity getCustomer() {
		return customer;
	}

	public void setCustomer(WxMshopCustomerEntity customer) {
		this.customer = customer;
	}
	
	private MshopStoreEntity store;
	
	@ManyToOne()
	@JoinColumn(name = "id_store", insertable = false,updatable = false)
	public MshopStoreEntity getStore() {
		return store;
	}

	public void setStore(MshopStoreEntity store) {
		this.store = store;
	}

	private List<MshopOrdergoodsEntity> orderGoodsList;
	
	
	@OneToMany(mappedBy = "order")
	public List<MshopOrdergoodsEntity> getOrderGoodsList() {
		return orderGoodsList;
	}

	public void setOrderGoodsList(List<MshopOrdergoodsEntity> orderGoodsList) {
		this.orderGoodsList = orderGoodsList;
	}

	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人名称
	 */
	@Column(name ="CREATE_NAME",nullable=true,length=50)
	public java.lang.String getCreateName(){
		return this.createName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人名称
	 */
	public void setCreateName(java.lang.String createName){
		this.createName = createName;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  创建日期
	 */
	@Column(name ="CREATE_DATE",nullable=true,length=20)
	public java.util.Date getCreateDate(){
		return this.createDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  创建日期
	 */
	public void setCreateDate(java.util.Date createDate){
		this.createDate = createDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  修改人名称
	 */
	@Column(name ="UPDATE_NAME",nullable=true,length=50)
	public java.lang.String getUpdateName(){
		return this.updateName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  修改人名称
	 */
	public void setUpdateName(java.lang.String updateName){
		this.updateName = updateName;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  修改日期
	 */
	@Column(name ="UPDATE_DATE",nullable=true,length=20)
	public java.util.Date getUpdateDate(){
		return this.updateDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  修改日期
	 */
	public void setUpdateDate(java.util.Date updateDate){
		this.updateDate = updateDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  订单号
	 */
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@GenericGenerator(name = "persistenceGenerator", strategy = "increment")
	@Column(name ="CODE",nullable=true,length=36)
	public java.lang.String getCode(){
		return this.code;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  订单号
	 */
	public void setCode(java.lang.String code){
		this.code = code;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  状态
	 */
	@Column(name ="STATUS",nullable=true,length=4)
	public java.lang.String getStatus(){
		return this.status;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  状态
	 */
	public void setStatus(java.lang.String status){
		this.status = status;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  地址
	 */
	@Column(name ="ADDRESS",nullable=true,length=200)
	public java.lang.String getAddress(){
		return this.address;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  地址
	 */
	public void setAddress(java.lang.String address){
		this.address = address;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  收件人
	 */
	@Column(name ="RECEIVER_NAME",nullable=true,length=32)
	public java.lang.String getReceiverName(){
		return this.receiverName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  收件人
	 */
	public void setReceiverName(java.lang.String receiverName){
		this.receiverName = receiverName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  收件人手机号
	 */
	@Column(name ="PHONE",nullable=true,length=32)
	public java.lang.String getPhone(){
		return this.phone;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  收件人手机号
	 */
	public void setPhone(java.lang.String phone){
		this.phone = phone;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  客户ID
	 */
	@Column(name ="ID_CUSTOMER",nullable=true,length=36)
	public java.lang.String getIdCustomer(){
		return this.idCustomer;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  客户ID
	 */
	public void setIdCustomer(java.lang.String idCustomer){
		this.idCustomer = idCustomer;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  总商品数
	 */
	@Column(name ="TOTAL_COUNT",nullable=true,length=11)
	public java.lang.Integer getTotalCount(){
		return this.totalCount;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  总商品数
	 */
	public void setTotalCount(java.lang.Integer totalCount){
		this.totalCount = totalCount;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  总价格 含邮费
	 */
	@Column(name ="TOTAL_PRICE",nullable=true,scale=2,length=13)
	public java.lang.Double getTotalPrice(){
		return this.totalPrice;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  总价格 含邮费
	 */
	public void setTotalPrice(java.lang.Double totalPrice){
		this.totalPrice = totalPrice;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  邮费
	 */
	@Column(name ="FREIGHT",nullable=true,scale=2,length=13)
	public java.lang.Double getFreight(){
		return this.freight;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  邮费
	 */
	public void setFreight(java.lang.Double freight){
		this.freight = freight;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  买家留言
	 */
	@Column(name ="MESSAGE",nullable=true,length=5000)
	public java.lang.String getMessage(){
		return this.message;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  买家留言
	 */
	public void setMessage(java.lang.String message){
		this.message = message;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  店铺ID
	 */
	@Column(name ="ID_STORE",nullable=true,length=32)
	public java.lang.String getIdStore(){
		return this.idStore;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  店铺ID
	 */
	public void setIdStore(java.lang.String idStore){
		this.idStore = idStore;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  微信账号ID
	 */
	@Column(name ="ACCOUNTID",nullable=true,length=36)
	public java.lang.String getAccountid(){
		return this.accountid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  微信账号ID
	 */
	public void setAccountid(java.lang.String accountid){
		this.accountid = accountid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  原始ID
	 */
	@Column(name ="WEIXIN_ACCOUNTID",nullable=true,length=36)
	public java.lang.String getWeixinAccountid(){
		return this.weixinAccountid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  原始ID
	 */
	public void setWeixinAccountid(java.lang.String weixinAccountid){
		this.weixinAccountid = weixinAccountid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  订单商品ID
	 */
	@Column(name ="ID_ORDER_GOODS",nullable=true,length=36)
	public java.lang.String getIdOrderGoods(){
		return this.idOrderGoods;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  订单商品ID
	 */
	public void setIdOrderGoods(java.lang.String idOrderGoods){
		this.idOrderGoods = idOrderGoods;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  快递名称
	 */
	@Column(name ="EXPRESS_NAME",nullable=true,length=100)
	public java.lang.String getExpressName(){
		return this.expressName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  快递名称
	 */
	public void setExpressName(java.lang.String expressName){
		this.expressName = expressName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  运单号
	 */
	@Column(name ="EXPRESS_NUM",nullable=true,length=36)
	public java.lang.String getExpressNum(){
		return this.expressNum;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  运单号
	 */
	public void setExpressNum(java.lang.String expressNum){
		this.expressNum = expressNum;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  微信昵称
	 */
	@Column(name ="NICKNAME",nullable=true,length=200)
	public java.lang.String getNickname(){
		return this.nickname;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  微信昵称
	 */
	public void setNickname(java.lang.String nickname){
		this.nickname = nickname;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  配送方式
	 */
	@Column(name ="DISTRIBUTION_MODE",nullable=true,length=100)
	public java.lang.String getDistributionMode(){
		return this.distributionMode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  配送方式
	 */
	public void setDistributionMode(java.lang.String distributionMode){
		this.distributionMode = distributionMode;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  送达时间
	 */
	@Column(name ="RECEIVE_TIME",nullable=true,length=200)
	public java.lang.String getReceiveTime(){
		return this.receiveTime;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  送达时间
	 */
	public void setReceiveTime(java.lang.String receiveTime){
		this.receiveTime = receiveTime;
	}

}
