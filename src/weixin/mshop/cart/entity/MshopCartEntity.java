package weixin.mshop.cart.entity;

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

import weixin.mshop.goods.entity.MshopGoodsEntity;
import weixin.mshop.store.entity.MshopStoreEntity;

/**   
 * @Title: Entity
 * @Description: 微商城多店版购物车
 * @author onlineGenerator
 * @date 2015-11-12 15:31:00
 * @version V1.0   
 *
 */
@Entity
@Table(name = "weixin_mshop_cart", schema = "")
@SuppressWarnings("serial")
public class MshopCartEntity implements java.io.Serializable {
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
	/**商品数量*/
	@Excel(exportName="商品数量")
	private java.lang.Integer count;
	/**商品名称*/
	@Excel(exportName="商品名称")
	private java.lang.String goodsName;
	/**商品价格*/
	@Excel(exportName="商品价格")
	private java.lang.Double price;
	/**商品价格*/
	@Excel(exportName="规格")
	private String spec;
	/**商品ID*/
	@Excel(exportName="商品ID")
	private java.lang.String idGoods;
	/**客户表*/
	@Excel(exportName="客户表")
	private java.lang.String idCustomer;
	/**商店ID*/
	@Excel(exportName="商店ID")
	private java.lang.String idStore;
	@Excel(exportName="商品图片")
	private java.lang.String imgurl;
	
	private MshopStoreEntity store;
	
	
	private MshopGoodsEntity goods;

	@ManyToOne()
	@JoinColumn(name="ID_GOODS",updatable=false, insertable = false)
	public MshopGoodsEntity getGoods() {
		return goods;
	}

	public void setGoods(MshopGoodsEntity goods) {
		this.goods = goods;
	}

	@ManyToOne()
	@JoinColumn(name = "id_store", insertable = false,updatable = false)
	public MshopStoreEntity getStore() {
		return store;
	}

	public void setStore(MshopStoreEntity store) {
		this.store = store;
	}
	
	

	public MshopCartEntity() {
		super();
	}

	public MshopCartEntity(String id, Integer count, String goodsName,
			Double price, String spec, String idGoods, String imgurl) {
		this.id = id;
		this.count = count;
		this.goodsName = goodsName;
		this.price = price;
		this.spec = spec;
		this.idGoods = idGoods;
		this.imgurl = imgurl;
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
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  商品数量
	 */
	@Column(name ="COUNT",nullable=true,length=11)
	public java.lang.Integer getCount(){
		return this.count;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  商品数量
	 */
	public void setCount(java.lang.Integer count){
		this.count = count;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  商品名称
	 */
	@Column(name ="GOODS_NAME",nullable=true,length=200)
	public java.lang.String getGoodsName(){
		return this.goodsName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品名称
	 */
	public void setGoodsName(java.lang.String goodsName){
		this.goodsName = goodsName;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  规格
	 */
	@Column(name ="spec",nullable=true,length=200)
	public java.lang.String getSpec(){
		return this.spec;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  规格
	 */
	public void setSpec(java.lang.String spec){
		this.spec = spec;
	}
	
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  商品价格
	 */
	@Column(name ="PRICE",nullable=true,scale=2,length=13)
	public java.lang.Double getPrice(){
		return this.price;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  商品价格
	 */
	public void setPrice(java.lang.Double price){
		this.price = price;
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
	 *@return: java.lang.String  客户表
	 */
	@Column(name ="ID_CUSTOMER",nullable=true,length=36)
	public java.lang.String getIdCustomer(){
		return this.idCustomer;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  客户表
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
	 *@return: java.lang.String  商品图片
	 */
	@Column(name ="IMGURL",nullable=true,length=200)
	public java.lang.String getImgurl(){
		return this.imgurl;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品图片
	 */
	public void setImgurl(java.lang.String imgurl){
		this.imgurl = imgurl;
	}
}
