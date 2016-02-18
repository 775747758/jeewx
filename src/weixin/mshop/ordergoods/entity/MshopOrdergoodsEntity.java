package weixin.mshop.ordergoods.entity;

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
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

import weixin.mshop.order.entity.MshopOrderEntity;

/**   
 * @Title: Entity
 * @Description: 多店订单商品表
 * @author onlineGenerator
 * @date 2015-11-19 19:43:02
 * @version V1.0   
 *
 */
@Entity
@Table(name = "wx_mshop_ordergoods", schema = "")
@SuppressWarnings("serial")
public class MshopOrdergoodsEntity implements java.io.Serializable {
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
	/**订单ID*/
	@Excel(exportName="订单ID")
	private java.lang.String idOrder;
	/**商品ID*/
	@Excel(exportName="商品ID")
	private java.lang.String idGoods;
	/**原价*/
	@Excel(exportName="原价")
	private java.lang.Double originalPrice;
	/**现价*/
	@Excel(exportName="现价")
	private java.lang.Double realPrice;
	/**数量*/
	@Excel(exportName="数量")
	private java.lang.Integer count;
	/**商品名称*/
	@Excel(exportName="商品名称")
	private java.lang.String goodsName;
	/**商品图片*/
	@Excel(exportName="商品图片")
	private java.lang.String imgurl;
	
	private MshopOrderEntity order;
	
	
	@ManyToOne()
	@JoinColumn(name = "id_order", insertable = false,updatable = false)
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
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  原价
	 */
	@Column(name ="ORIGINAL_PRICE",nullable=true,scale=2,length=13)
	public java.lang.Double getOriginalPrice(){
		return this.originalPrice;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  原价
	 */
	public void setOriginalPrice(java.lang.Double originalPrice){
		this.originalPrice = originalPrice;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  现价
	 */
	@Column(name ="REAL_PRICE",nullable=true,scale=2,length=13)
	public java.lang.Double getRealPrice(){
		return this.realPrice;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  现价
	 */
	public void setRealPrice(java.lang.Double realPrice){
		this.realPrice = realPrice;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  数量
	 */
	@Column(name ="COUNT",nullable=true,length=11)
	public java.lang.Integer getCount(){
		return this.count;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  数量
	 */
	public void setCount(java.lang.Integer count){
		this.count = count;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  商品名称
	 */
	@Column(name ="GOODS_NAME",nullable=true,length=100)
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
