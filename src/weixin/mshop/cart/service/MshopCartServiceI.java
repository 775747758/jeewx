package weixin.mshop.cart.service;
import weixin.mshop.cart.entity.MshopCartEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface MshopCartServiceI extends CommonService{
	
 	public <T> void delete(T entity);
 	
 	public <T> Serializable save(T entity);
 	
 	public <T> void saveOrUpdate(T entity);
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopCartEntity t);
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopCartEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopCartEntity t);
 	/**
 	 * 删除购物车
 	 * @param customerId
 	 * @param storeId
 	 */
 	public void deleteCart(String customerId,String storeId);
}
