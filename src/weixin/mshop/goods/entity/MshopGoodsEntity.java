package weixin.mshop.goods.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Where;

import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

import weixin.mshop.cart.entity.MshopCartEntity;
import weixin.mshop.goodtype.entity.MshopGoodtypeEntity;

/**   
 * @Title: Entity
 * @Description: 微商城多店版商品表
 * @author onlineGenerator
 * @date 2015-10-14 09:30:57
 * @version V1.0   
 *
 */
@Entity
@Table(name = "weixin_mshop_goods", schema = "")
@SuppressWarnings("serial")
public class MshopGoodsEntity implements java.io.Serializable {
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
	/**图片链接*/
	@Excel(exportName="图片链接")
	private java.lang.String imgurl;
	/**商品详情*/
	private java.lang.String description;
	/**原价*/
	private java.lang.Double originalPrice;
	/**现价*/
	@Excel(exportName="现价")
	private java.lang.Double realPrice;
	/**折扣*/
	private java.lang.Double sale;
	/**销售数量*/
	private java.lang.Integer sellCount;
	/**评论数量*/
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
	/**所属店铺*/
	private java.lang.String idStore;
	/**是否秒杀*/
	@Excel(exportName="是否秒杀")
	private java.lang.Integer isSeckill;
	/**是否特价*/
	@Excel(exportName="是否特价")
	private java.lang.Integer isSpecial;
	/**所有规格*/
	@Excel(exportName="所有规格")
	private java.lang.String allSpecs;
	/**是否自营*/
	@Excel(exportName="是否自营")
	private java.lang.Integer isSelfsupport;
	
	
	private MshopGoodtypeEntity goodsType;
	
	
	/**首页商品*/
	/**正常*/
	public static final String GOODS_STATE_NORMAL = "0";
	/**下架*/
	public static final String GOODS_STATE_DOWN = "1";
	/**删除*/
	public static final String GOODS_STATE_DELETE = "-1";
	
	
	/**排序方式-上市时间*/
	public static final String GOODS_SORT_DATE = "shelveTime";
	/**排序方式-价格*/
	public static final String GOODS_SORT_PRICE = "realPrice";
	/**排序方式-销量*/
	public static final String GOODS_SORT_SALES = "sellCount";
	
	/**自营*/
	public static final int SELF_SUPPORT = 1;
	/**非自营*/
	public static final int NOT_SELF_SUPPORT = 0;
	
	/**特价商品*/
	public static final int SPECIAL = 1;
	/**非特价商品*/
	public static final int NOT_SPECIAL = 0;
	
	/**秒杀*/
	public static final int SECKILL = 1;
	/**非秒杀*/
	public static final int NOT_SECKILL = 0;
	
	private List<MshopCartEntity> cartList;
	
	
	
	@OneToMany( mappedBy = "goods")
	public List<MshopCartEntity> getCartList() {
		return cartList;
	}

	public void setCartList(List<MshopCartEntity> cartList) {
		this.cartList = cartList;
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
	 *@return: java.lang.String  图片链接
	 */
	@Column(name ="IMGURL",nullable=true,length=100)
	public java.lang.String getImgurl(){
		return this.imgurl;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  图片链接
	 */
	public void setImgurl(java.lang.String imgurl){
		this.imgurl = imgurl;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  商品详情
	 */
	@Column(name ="DESCRIPTION",nullable=true,length=5000)
	public java.lang.String getDescription(){
		return this.description;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品详情
	 */
	public void setDescription(java.lang.String description){
		this.description = description;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  原价
	 */
	@Column(name ="ORIGINAL_PRICE",nullable=true,scale=2,length=32)
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
	@Column(name ="REAL_PRICE",nullable=true,scale=2,length=32)
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
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  折扣
	 */
	@Column(name ="SALE",nullable=true,scale=2,length=32)
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
	 *@return: java.lang.Integer  评论数量
	 */
	@Column(name ="DISCUSS_COUNT",nullable=true,length=11)
	public java.lang.Integer getDiscussCount(){
		return this.discussCount;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  评论数量
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
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  所属店铺
	 */
	@Column(name ="ID_STORE",nullable=true,length=36)
	public java.lang.String getIdStore(){
		return this.idStore;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  所属店铺
	 */
	public void setIdStore(java.lang.String idStore){
		this.idStore = idStore;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  是否秒杀
	 */
	@Column(name ="IS_SECKILL",nullable=true,length=2)
	public java.lang.Integer getIsSeckill(){
		return this.isSeckill;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  是否秒杀
	 */
	public void setIsSeckill(java.lang.Integer isSeckill){
		this.isSeckill = isSeckill;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  是否特价
	 */
	@Column(name ="IS_SPECIAL",nullable=true,length=2)
	public java.lang.Integer getIsSpecial(){
		return this.isSpecial;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  是否特价
	 */
	public void setIsSpecial(java.lang.Integer isSpecial){
		this.isSpecial = isSpecial;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  所有规格
	 */
	@Column(name ="ALL_SPECS",nullable=true,length=500)
	public java.lang.String getAllSpecs(){
		return this.allSpecs;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  所有规格
	 */
	public void setAllSpecs(java.lang.String allSpecs){
		this.allSpecs = allSpecs;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  是否自营
	 */
	@Column(name ="IS_SELFSUPPORT",nullable=true,length=2)
	public java.lang.Integer getIsSelfsupport(){
		return this.isSelfsupport;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  是否自营
	 */
	public void setIsSelfsupport(java.lang.Integer isSelfsupport){
		this.isSelfsupport = isSelfsupport;
	}
	
	
	private String idCategory;
	
	@Column(name ="id_category",nullable=true,length=36)
	public String getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(String idCategory) {
		this.idCategory = idCategory;
	}

	@ManyToOne()
	@JoinColumn(name = "id_category", insertable = false,updatable = false)
	public MshopGoodtypeEntity getGoodsType(){
		return this.goodsType;
	}

	public void setGoodsType(MshopGoodtypeEntity goodsType){
		this.goodsType = goodsType;
	}
}
