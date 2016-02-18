package weixin.mshop.dispatch.entity;

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
 * @Description: 微信
 * @author onlineGenerator
 * @date 2015-10-13 16:11:50
 * @version V1.0   
 *
 */
@Entity
@Table(name = "weixin_dispatch", schema = "")
@SuppressWarnings("serial")
public class WeixinDispatchEntity implements java.io.Serializable {
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
	/**运费*/
	@Excel(exportName="运费")
	private java.lang.Double expressPrice;
	/**包邮限制*/
	@Excel(exportName="包邮限制")
	private java.lang.Double limitMoney;
	/**微信账号ID*/
	@Excel(exportName="微信账号ID")
	private java.lang.String accountid;
	
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
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  运费
	 */
	@Column(name ="EXPRESS_PRICE",nullable=true,scale=2,length=12)
	public java.lang.Double getExpressPrice(){
		return this.expressPrice;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  运费
	 */
	public void setExpressPrice(java.lang.Double expressPrice){
		this.expressPrice = expressPrice;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  包邮限制
	 */
	@Column(name ="LIMIT_MONEY",nullable=true,scale=2,length=12)
	public java.lang.Double getLimitMoney(){
		return this.limitMoney;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  包邮限制
	 */
	public void setLimitMoney(java.lang.Double limitMoney){
		this.limitMoney = limitMoney;
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
}
