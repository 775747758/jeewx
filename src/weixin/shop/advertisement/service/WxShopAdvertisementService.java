package weixin.shop.advertisement.service; 

import java.util.List;

import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.shop.advertisement.entity.ShopAdvertisementEntity;
import weixin.shop.customer.entity.ShopCustomerEntity;

/** 
 * @author 作者 : 邓文杰
 * @version 创建时间：2015-9-28 上午9:26:48 
 * 类说明 
 */
@Service("WxShopAdvertisementService")
@Transactional
public class WxShopAdvertisementService {

	@Autowired
	private ShopAdvertisementServiceI shopAdvertisementService;
	
	public List<ShopAdvertisementEntity> getHomeAd(WeixinAccountEntity account,String type){
		CriteriaQuery cq = new CriteriaQuery(ShopAdvertisementEntity.class);
		cq.eq("weixinAccountid",account.getWeixin_accountid());
		cq.eq("type",type);//原始ID
		cq.add();
		return shopAdvertisementService.getListByCriteriaQuery(cq, false);
	}
}
