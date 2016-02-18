package weixin.mshop.goodtype.entity;

import java.util.ArrayList;
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

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Where;
import org.jeecgframework.poi.excel.annotation.Excel;

import weixin.mshop.goods.entity.MshopGoodsEntity;
import weixin.mshop.store.entity.MshopStoreEntity;

/**   
 * @Title: Entity
 * @Description: 微商城多店商品分类
 * @author onlineGenerator
 * @date 2015-10-14 09:31:37
 * @version V1.0   
 *
 */
@Entity
@Table(name = "wx_mshop_goodtype", schema = "")
@SuppressWarnings("serial")
public class MshopGoodtypeEntity implements java.io.Serializable {
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
	/**分类名称*/
	@Excel(exportName="分类名称")
	private java.lang.String name;
	/**父分类ID*/
	private java.lang.String parentid;
	/**图片链接*/
	private java.lang.String imgurl;
	
	private MshopStoreEntity store;
	
	private List<MshopGoodsEntity> goodsList;
	
	@OneToMany( mappedBy = "goodsType")
	@Where(clause="statement=0") //代表只取未删除的数据；
	public List<MshopGoodsEntity> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<MshopGoodsEntity> goodsList) {
		this.goodsList = goodsList;
	}
	
	private String id_store;
	
	
	@Column(name ="id_store",nullable=true,length=36)
	public String getId_store() {
		return id_store;
	}

	public void setId_store(String id_store) {
		this.id_store = id_store;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "id_store", insertable = false,updatable = false)
	public MshopStoreEntity getStore() {
		return store;
	}

	public void setStore(MshopStoreEntity store) {
		this.store = store;
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
	 *@return: java.lang.String  分类名称
	 */
	@Column(name ="NAME",nullable=true,length=100)
	public java.lang.String getName(){
		return this.name;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  分类名称
	 */
	public void setName(java.lang.String name){
		this.name = name;
	}

	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  父分类ID
	 */
	@Column(name ="PARENTID",nullable=true,length=36)
	public java.lang.String getParentid(){
		return this.parentid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  父分类ID
	 */
	public void setParentid(java.lang.String parentid){
		this.parentid = parentid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  图片链接
	 */
	@Column(name ="IMGURL",nullable=true,length=200)
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
}
