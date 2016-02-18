package weixin.mshop.ordergoods.service;
import weixin.mshop.ordergoods.entity.MshopOrdergoodsEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface MshopOrdergoodsServiceI extends CommonService{
	
 	public <T> void delete(T entity);
 	
 	public <T> Serializable save(T entity);
 	
 	public <T> void saveOrUpdate(T entity);
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopOrdergoodsEntity t);
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopOrdergoodsEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopOrdergoodsEntity t);
 	
 	/**
 	 * 删除一个订单的所有订单商品
 	 * @param orderId
 	 */
 	public void deleteOrderGoodsByOrderId(String orderId);
}
