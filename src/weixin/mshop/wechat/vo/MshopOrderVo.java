package weixin.mshop.wechat.vo;

import java.util.List;

import weixin.mshop.order.entity.MshopOrderEntity;

public class MshopOrderVo {
	
	public List<MshopOrderEntity> unpaymentOrderList;
	public List<MshopOrderEntity> unsendOrderList;
	public List<MshopOrderEntity> unreceiveOrderList;
	public List<MshopOrderEntity> unevaluateOrderList;
	public List<MshopOrderEntity> allOrderList;
	
	public List<MshopOrderEntity> getUnpaymentOrderList() {
		return unpaymentOrderList;
	}
	public void setUnpaymentOrderList(List<MshopOrderEntity> unpaymentOrderList) {
		this.unpaymentOrderList = unpaymentOrderList;
	}
	public List<MshopOrderEntity> getUnsendOrderList() {
		return unsendOrderList;
	}
	public void setUnsendOrderList(List<MshopOrderEntity> unsendOrderList) {
		this.unsendOrderList = unsendOrderList;
	}
	public List<MshopOrderEntity> getUnreceiveOrderList() {
		return unreceiveOrderList;
	}
	public void setUnreceiveOrderList(List<MshopOrderEntity> unreceiveOrderList) {
		this.unreceiveOrderList = unreceiveOrderList;
	}
	public List<MshopOrderEntity> getUnevaluateOrderList() {
		return unevaluateOrderList;
	}
	public void setUnevaluateOrderList(List<MshopOrderEntity> unevaluateOrderList) {
		this.unevaluateOrderList = unevaluateOrderList;
	}
	public List<MshopOrderEntity> getAllOrderList() {
		return allOrderList;
	}
	public void setAllOrderList(List<MshopOrderEntity> allOrderList) {
		this.allOrderList = allOrderList;
	}
	
	

}
