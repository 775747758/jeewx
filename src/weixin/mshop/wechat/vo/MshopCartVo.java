package weixin.mshop.wechat.vo; 

import java.util.List;

import weixin.mshop.cart.entity.MshopCartEntity;
import weixin.mshop.customer.entity.WxMshopCustomerEntity;

/** 
 * @author 作者 : 邓文杰
 * @version 创建时间：2015-11-17 上午9:44:57 
 * 类说明 
 */
public class MshopCartVo {
	
	private WxMshopCustomerEntity customer;
	private List<MshopCartEntity> cartList;
	private int count;
	private double price;
	private double freight;
	
	
	
	
	
	public double getFreight() {
		return freight;
	}
	public void setFreight(double freight) {
		this.freight = freight;
	}
	public MshopCartVo() {
		super();
	}
	
	public MshopCartVo(WxMshopCustomerEntity customer, List<MshopCartEntity> cartList, int count, double price, double freight) {
		super();
		this.customer = customer;
		this.cartList = cartList;
		this.count = count;
		this.price = price;
		this.freight = freight;
	}
	public WxMshopCustomerEntity getCustomer() {
		return customer;
	}
	public void setCustomer(WxMshopCustomerEntity customer) {
		this.customer = customer;
	}
	public List<MshopCartEntity> getCartList() {
		return cartList;
	}
	public void setCartList(List<MshopCartEntity> cartList) {
		this.cartList = cartList;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	

}
