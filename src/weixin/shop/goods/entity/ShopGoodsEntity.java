package weixin.shop.goods.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

/**   
 * @Title: Entity
 * @Description: 微信商城商品信息
 * @author onlineGenerator
 * @date 2015-09-21 16:55:26
 * @version V1.0   
 *
 */
@Entity
@Table(name = "weixin_shop_good", schema = "")
@SuppressWarnings("serial")
public class ShopGoodsEntity implements java.io.Serializable {
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
	/**商品名称*/
	@Excel(exportName="商品名称")
	private java.lang.String name;
	/**商品图片链接*/
	@Excel(exportName="商品图片链接")
	private java.lang.String imgurl;
	/**商品详情*/
	@Excel(exportName="商品详情")
	private java.lang.String descriptions;
	/**商品原价*/
	@Excel(exportName="商品原价")
	private java.lang.Double originalPrice;
	/**商品现价*/
	@Excel(exportName="商品现价")
	private java.lang.Double realPrice;
	/**折扣*/
	@Excel(exportName="折扣")
	private java.lang.Double sale;
	/**销售数量*/
	@Excel(exportName="销售数量")
	private java.lang.Integer sellCount;
	/**评价数量*/
	private java.lang.Integer discussCount;
	/**好评数量*/
	private java.lang.Integer goodCount;
	/**差评数量*/
	private java.lang.Integer badCount;
	/**中评数量*/
	private java.lang.Integer neutralCount;
	/**状态*/
	private java.lang.String statement;
	/**下架时间*/
	private java.util.Date removeTime;
	/**上架时间*/
	private java.util.Date shelveTime;
	/**快递费用*/
	@Excel(exportName="快递费用")
	private java.lang.Double expressPrice;
	/**所属公众号ID*/
	private java.lang.String accountid;
	/**所属类别*/
	@Excel(exportName="所属类别")
	private java.lang.String idCategory;
	
	/**正常*/
	public static final String GOODS_STATE_NORMAL = "0";
	/**下架*/
	public static final String GOODS_STATE_DOWN = "1";
	/**删除*/
	public static final String GOODS_STATE_DELETE = "-1";
	
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
	 *@return: java.lang.String  商品名称
	 */
	@Column(name ="NAME",nullable=true,length=200)
	public java.lang.String getName(){
		return this.name;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品名称
	 */
	public void setName(java.lang.String name){
		this.name = name;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  商品图片链接
	 */
	@Column(name ="IMGURL",nullable=true,length=100)
	public java.lang.String getImgurl(){
		return this.imgurl;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品图片链接
	 */
	public void setImgurl(java.lang.String imgurl){
		this.imgurl = imgurl;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  商品详情
	 */
	@Column(name ="DESCRIPTIONS",nullable=true,length=5000)
	public java.lang.String getDescriptions(){
		return this.descriptions;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品详情
	 */
	public void setDescriptions(java.lang.String descriptions){
		this.descriptions = descriptions;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  商品原价
	 */
	@Column(name ="ORIGINAL_PRICE",nullable=true,scale=2,length=18)
	public java.lang.Double getOriginalPrice(){
		return this.originalPrice;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  商品原价
	 */
	public void setOriginalPrice(java.lang.Double originalPrice){
		this.originalPrice = originalPrice;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  商品现价
	 */
	@Column(name ="REAL_PRICE",nullable=true,scale=2,length=18)
	public java.lang.Double getRealPrice(){
		return this.realPrice;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  商品现价
	 */
	public void setRealPrice(java.lang.Double realPrice){
		this.realPrice = realPrice;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  折扣
	 */
	@Column(name ="SALE",nullable=true,scale=2,length=18)
	public java.lang.Double getSale(){
		return this.sale;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  折扣
	 */
	public void setSale(java.lang.Double sale){
		this.sale = sale;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  销售数量
	 */
	@Column(name ="SELL_COUNT",nullable=true,length=11)
	public java.lang.Integer getSellCount(){
		return this.sellCount;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  销售数量
	 */
	public void setSellCount(java.lang.Integer sellCount){
		this.sellCount = sellCount;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  评价数量
	 */
	@Column(name ="DISCUSS_COUNT",nullable=true,length=11)
	public java.lang.Integer getDiscussCount(){
		return this.discussCount;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  评价数量
	 */
	public void setDiscussCount(java.lang.Integer discussCount){
		this.discussCount = discussCount;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  好评数量
	 */
	@Column(name ="GOOD_COUNT",nullable=true,length=11)
	public java.lang.Integer getGoodCount(){
		return this.goodCount;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  好评数量
	 */
	public void setGoodCount(java.lang.Integer goodCount){
		this.goodCount = goodCount;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  差评数量
	 */
	@Column(name ="BAD_COUNT",nullable=true,length=11)
	public java.lang.Integer getBadCount(){
		return this.badCount;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  差评数量
	 */
	public void setBadCount(java.lang.Integer badCount){
		this.badCount = badCount;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  中评数量
	 */
	@Column(name ="NEUTRAL_COUNT",nullable=true,length=11)
	public java.lang.Integer getNeutralCount(){
		return this.neutralCount;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  中评数量
	 */
	public void setNeutralCount(java.lang.Integer neutralCount){
		this.neutralCount = neutralCount;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  状态
	 */
	@Column(name ="STATEMENT",nullable=true,length=32)
	public java.lang.String getStatement(){
		return this.statement;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  状态
	 */
	public void setStatement(java.lang.String statement){
		this.statement = statement;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  下架时间
	 */
	@Column(name ="REMOVE_TIME",nullable=true,length=32)
	public java.util.Date getRemoveTime(){
		return this.removeTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  下架时间
	 */
	public void setRemoveTime(java.util.Date removeTime){
		this.removeTime = removeTime;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  上架时间
	 */
	@Column(name ="SHELVE_TIME",nullable=true,length=32)
	public java.util.Date getShelveTime(){
		return this.shelveTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  上架时间
	 */
	public void setShelveTime(java.util.Date shelveTime){
		this.shelveTime = shelveTime;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  快递费用
	 */
	@Column(name ="EXPRESS_PRICE",nullable=true,scale=2,length=18)
	public java.lang.Double getExpressPrice(){
		return this.expressPrice;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  快递费用
	 */
	public void setExpressPrice(java.lang.Double expressPrice){
		this.expressPrice = expressPrice;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  所属公众号ID
	 */
	@Column(name ="ACCOUNTID",nullable=true,length=36)
	public java.lang.String getAccountid(){
		return this.accountid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  所属公众号ID
	 */
	public void setAccountid(java.lang.String accountid){
		this.accountid = accountid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  所属类别
	 */
	@Column(name ="ID_CATEGORY",nullable=true,length=36)
	public java.lang.String getIdCategory(){
		return this.idCategory;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  所属类别
	 */
	public void setIdCategory(java.lang.String idCategory){
		this.idCategory = idCategory;
	}
}
