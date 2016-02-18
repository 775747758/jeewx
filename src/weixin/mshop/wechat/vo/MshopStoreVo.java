package weixin.mshop.wechat.vo; 

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import weixin.mshop.cart.entity.MshopCartEntity;

/** 
 * @author 作者 : 邓文杰
 * @version 创建时间：2015-11-17 上午9:24:30 
 * 类说明 
 */
@Entity
@Table(name = "weixin_mshop_store", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings("serial")
public class MshopStoreVo {
	
	private String id;
	private String storeName;
	private int status;
	private String typeId;
	private List<MshopCartEntity>  cartList;
	
	
	
	@OneToMany(fetch=FetchType.EAGER, mappedBy = "store")
	public List<MshopCartEntity> getCartList() {
		return cartList;
	}

	public void setCartList(List<MshopCartEntity> cartList) {
		this.cartList = cartList;
	}
	
	public MshopStoreVo(String id, String storeName, String typeId) {
		this.id = id;
		this.storeName = storeName;
		this.typeId = typeId;
	}
	public MshopStoreVo(String id, String storeName, int status, String typeId) {
		this.id = id;
		this.storeName = storeName;
		this.status = status;
		this.typeId = typeId;
	}
	
	
	public MshopStoreVo() {
		super();
	}
	
	public MshopStoreVo(String id, String storeName, int status, String typeId,
			List<MshopCartEntity> cartList) {
		this.id = id;
		this.storeName = storeName;
		this.status = status;
		this.typeId = typeId;
		this.cartList = cartList;
	}
	
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,length=36)
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Column(name ="store_name",nullable=true,length=100)
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	@Column(name ="status",nullable=true,length=6)
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Column(name ="id_type",nullable=true,length=36)
	public String getTypeId() {
		return typeId;
	}
	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}
	
	
	
	

}
