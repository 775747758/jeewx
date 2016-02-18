package weixin.mshop.store.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

import weixin.mshop.cart.entity.MshopCartEntity;
import weixin.mshop.evaluate.entity.MshopEvaluateEntity;
import weixin.mshop.goodtype.entity.MshopGoodtypeEntity;
import weixin.mshop.order.entity.MshopOrderEntity;
import weixin.mshop.type.entity.MshopTypeEntity;

/**   
 * @Title: Entity
 * @Description: 微商城多店版店铺
 * @author onlineGenerator
 * @date 2015-10-11 18:07:13
 * @version V1.0   
 *
 */
@Entity
@Table(name = "weixin_mshop_store", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings("serial")
public class MshopStoreEntity implements java.io.Serializable {
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
	/**手机号码*/
	@Excel(exportName="手机号码")
	private java.lang.String mobilePhone;
	/**电话号码*/
	@Excel(exportName="电话号码")
	private java.lang.String officePhone;
	/**店铺名称*/
	@Excel(exportName="店铺名称")
	private java.lang.String storeName;
	/**用户名*/
	@Excel(exportName="用户名")
	private java.lang.String username;
	/**密码*/
	@Excel(exportName="密码")
	private java.lang.String password;
	/**邮箱*/
	@Excel(exportName="邮箱")
	private java.lang.String email;
	/**店铺简介*/
	@Excel(exportName="店铺简介")
	private java.lang.String descriptions;
	/**店铺状态*/
	@Excel(exportName="店铺状态")
	private java.lang.Integer status;
	
	
	/**营业开始时间*/
	@Excel(exportName="营业开始时间")
	private java.util.Date startTime;
	/**营业结束时间*/
	@Excel(exportName="营业结束时间")
	private java.util.Date endTime;
	/**微信账户ID*/
	@Excel(exportName="微信账户ID")
	private java.lang.String accountid;
	/**原始ID冗余*/
	@Excel(exportName="原始ID冗余")
	private java.lang.String weixinAccountid;
	/**用户ID*/
	@Excel(exportName="用户ID")
	private java.lang.String idUser;
	
	/**顺序*/
	@Excel(exportName="顺序")
	private java.lang.String orders;
	
	/**店铺LOGO*/
	@Excel(exportName="店铺LOGO")
	private java.lang.String imgurl;
	
	/**是否是推荐店铺*/
	@Excel(exportName="是否是推荐店铺")
	private java.lang.Integer isRecommend;
	
	/**类别ID*/
	private MshopTypeEntity  type;
	
	/**类别ID*/
	@Excel(exportName="类别ID")
	private String  idType;
	
	private List<MshopGoodtypeEntity> goodsTypeList;
	
	
	
	
	
	private List<MshopCartEntity> cartList;
	
	
	
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "store")
	public List<MshopCartEntity> getCartList() {
		return cartList;
	}

	public void setCartList(List<MshopCartEntity> cartList) {
		this.cartList = cartList;
	}

	@OneToMany( mappedBy = "store")
	public List<MshopGoodtypeEntity> getGoodsTypeList() {
		return goodsTypeList;
	}

	public void setGoodsTypeList(List<MshopGoodtypeEntity> goodsTypeList) {
		this.goodsTypeList = goodsTypeList;
	}
	
	
	private List<MshopEvaluateEntity> evaluateList;
	
	
	@OneToMany(fetch=FetchType.EAGER, mappedBy = "store")
	public List<MshopEvaluateEntity> getEvaluateList() {
		return evaluateList;
	}

	public void setEvaluateList(List<MshopEvaluateEntity> evaluateList) {
		this.evaluateList = evaluateList;
	}
	
	private List<MshopOrderEntity> orderList;
	
	@OneToMany(mappedBy = "store")
	public List<MshopOrderEntity> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<MshopOrderEntity> orderList) {
		this.orderList = orderList;
	}


	private MshopTypeEntity shopType;
	
	
	@ManyToOne()
	@JoinColumn(name = "id_type", insertable = false,updatable = false)
	public MshopTypeEntity getShopType() {
		return shopType;
	}

	public void setShopType(MshopTypeEntity shopType) {
		this.shopType = shopType;
	}

	@Column(name ="id_type",nullable=true,length=36)
	public String getIdType() {
		return idType;
	}

	public void setIdType(String idType) {
		this.idType = idType;
	}
	
	@ManyToOne()
	@JoinColumn(name = "id_type", insertable = false,updatable = false)
	public MshopTypeEntity getType(){
		return this.type;
	}
	

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  类别ID
	 */
	public void setType(MshopTypeEntity type){
		this.type = type;
	}
	

	/**暂停营业*/
	public static final int STORE_STATE_STOP = 0;
	/**正常营业*/
	public static final int STORE_STATE_NORMAL = 1;
	/**删除*/
	public static final int STORE_STATE_DELETE = 100;
	
	/**是推荐店铺*/
	public static final int RECOMMEND = 1;
	/**不是推荐店铺*/
	public static final int NOT_RECOMMEND = 0;
	
	
	
	

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
	 *@return: java.lang.String  手机号码
	 */
	@Column(name ="MOBILE_PHONE",nullable=true,length=30)
	public java.lang.String getMobilePhone(){
		return this.mobilePhone;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  手机号码
	 */
	public void setMobilePhone(java.lang.String mobilePhone){
		this.mobilePhone = mobilePhone;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  电话号码
	 */
	@Column(name ="OFFICE_PHONE",nullable=true,length=20)
	public java.lang.String getOfficePhone(){
		return this.officePhone;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  电话号码
	 */
	public void setOfficePhone(java.lang.String officePhone){
		this.officePhone = officePhone;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  店铺名称
	 */
	@Column(name ="STORE_NAME",nullable=true,length=100)
	public java.lang.String getStoreName(){
		return this.storeName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  店铺名称
	 */
	public void setStoreName(java.lang.String storeName){
		this.storeName = storeName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  用户名
	 */
	@Column(name ="USERNAME",nullable=true,length=10)
	public java.lang.String getUsername(){
		return this.username;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  用户名
	 */
	public void setUsername(java.lang.String username){
		this.username = username;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  密码
	 */
	@Column(name ="PASSWORD",nullable=true,length=100)
	public java.lang.String getPassword(){
		return this.password;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  密码
	 */
	public void setPassword(java.lang.String password){
		this.password = password;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  邮箱
	 */
	@Column(name ="EMAIL",nullable=true,length=50)
	public java.lang.String getEmail(){
		return this.email;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  邮箱
	 */
	public void setEmail(java.lang.String email){
		this.email = email;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  店铺简介
	 */
	@Column(name ="DESCRIPTIONS",nullable=true,length=5000)
	public java.lang.String getDescriptions(){
		return this.descriptions;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  店铺简介
	 */
	public void setDescriptions(java.lang.String descriptions){
		this.descriptions = descriptions;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  店铺状态
	 */
	@Column(name ="STATUS",nullable=true,length=6)
	public java.lang.Integer getStatus(){
		return this.status;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  店铺状态
	 */
	public void setStatus(java.lang.Integer status){
		this.status = status;
	}
	

	
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  营业开始时间
	 */
	@Column(name ="START_TIME",nullable=true,length=20)
	public java.util.Date getStartTime(){
		return this.startTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  营业开始时间
	 */
	public void setStartTime(java.util.Date startTime){
		this.startTime = startTime;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  营业结束时间
	 */
	@Column(name ="END_TIME",nullable=true,length=20)
	public java.util.Date getEndTime(){
		return this.endTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  营业结束时间
	 */
	public void setEndTime(java.util.Date endTime){
		this.endTime = endTime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  微信账户ID
	 */
	@Column(name ="ACCOUNTID",nullable=true,length=36)
	public java.lang.String getAccountid(){
		return this.accountid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  微信账户ID
	 */
	public void setAccountid(java.lang.String accountid){
		this.accountid = accountid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  原始ID冗余
	 */
	@Column(name ="WEIXIN_ACCOUNTID",nullable=true,length=36)
	public java.lang.String getWeixinAccountid(){
		return this.weixinAccountid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  原始ID冗余
	 */
	public void setWeixinAccountid(java.lang.String weixinAccountid){
		this.weixinAccountid = weixinAccountid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  用户ID
	 */
	@Column(name ="ID_USER",nullable=true,length=36)
	public java.lang.String getIdUser(){
		return this.idUser;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  用户ID
	 */
	public void setIdUser(java.lang.String idUser){
		this.idUser = idUser;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  顺序
	 */
	@Column(name ="ORDERS",nullable=true,length=11)
	public java.lang.String getOrders(){
		return this.orders;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  顺序
	 */
	public void setOrders(java.lang.String orders){
		this.orders = orders;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  店铺LOGO
	 */
	@Column(name ="IMGURL",nullable=true,length=200)
	public java.lang.String getImgurl(){
		return this.imgurl;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  店铺LOGO
	 */
	public void setImgurl(java.lang.String imgurl){
		this.imgurl = imgurl;
	}
	
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  是否是推荐店铺
	 */
	@Column(name ="IS_RECOMMEND",nullable=true,length=2)
	public java.lang.Integer getIsRecommend(){
		return this.isRecommend;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  是否是推荐店铺
	 */
	public void setIsRecommend(java.lang.Integer isRecommend){
		this.isRecommend = isRecommend;
	}
}
