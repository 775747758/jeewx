package weixin.mshop.evaluate.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

import weixin.mshop.customer.entity.WxMshopCustomerEntity;
import weixin.mshop.goods.entity.MshopGoodsEntity;
import weixin.mshop.order.entity.MshopOrderEntity;
import weixin.mshop.store.entity.MshopStoreEntity;

/**   
 * @Title: Entity
 * @Description: 多店版评价表
 * @author onlineGenerator
 * @date 2015-11-21 09:40:10
 * @version V1.0   
 *
 */
@Entity
@Table(name = "wx_mshop_evaluate", schema = "")
@SuppressWarnings("serial")
public class MshopEvaluateEntity implements java.io.Serializable {
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
	/**评价星级*/
	@Excel(exportName="评价星级")
	private java.lang.String level;
	/**内容*/
	@Excel(exportName="内容")
	private java.lang.String content;
	/**客户ID*/
	@Excel(exportName="客户ID")
	private java.lang.String idCustomer;
	/**商店ID*/
	@Excel(exportName="商店ID")
	private java.lang.String idStore;
	/**商品ID*/
	@Excel(exportName="商品ID")
	private java.lang.String idGoods;
	/**订单ID*/
	@Excel(exportName="订单ID")
	private java.lang.String idOrder;
	
	
	
	/*星级评价：0 很不满意**/
	public static final String LEVEL_0="0";
	/*星级评价：1 不满意**/
	public static final String LEVEL_1="1";
	/*星级评价：2 一般**/
	public static final String LEVEL_2="2";
	/*星级评价：3 满意**/
	public static final String LEVEL_3="3";
	/*星级评价：4 非常满意**/
	public static final String LEVEL_4="4";
	
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
	
	private MshopOrderEntity order;
	
	
	@OneToOne(fetch=FetchType.EAGER,targetEntity=MshopOrderEntity.class)
	 @JoinColumn(name="id_order",updatable=false, insertable = false)
	public MshopOrderEntity getOrder() {
		return order;
	}

	public void setOrder(MshopOrderEntity order) {
		this.order = order;
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
	 *@return: java.lang.String  评价星级
	 */
	@Column(name ="LEVEL",nullable=true,length=10)
	public java.lang.String getLevel(){
		return this.level;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  评价星级
	 */
	public void setLevel(java.lang.String level){
		this.level = level;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  内容
	 */
	@Column(name ="CONTENT",nullable=true,length=2000)
	public java.lang.String getContent(){
		return this.content;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  内容
	 */
	public void setContent(java.lang.String content){
		this.content = content;
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
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  商店ID
	 */
	@Column(name ="ID_STORE",nullable=true,length=36)
	public java.lang.String getIdStore(){
		return this.idStore;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商店ID
	 */
	public void setIdStore(java.lang.String idStore){
		this.idStore = idStore;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  商品ID
	 */
	@Column(name ="ID_GOODS",nullable=true,length=36)
	public java.lang.String getIdGoods(){
		return this.idGoods;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品ID
	 */
	public void setIdGoods(java.lang.String idGoods){
		this.idGoods = idGoods;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  订单ID
	 */
	@Column(name ="ID_ORDER",nullable=true,length=36)
	public java.lang.String getIdOrder(){
		return this.idOrder;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  订单ID
	 */
	public void setIdOrder(java.lang.String idOrder){
		this.idOrder = idOrder;
	}
}
