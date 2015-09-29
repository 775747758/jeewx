package weixin.shop.customer.service;
import weixin.shop.customer.entity.ShopCustomerEntity;
import weixin.shop.love.entity.ShopLoveEntity;
import weixin.shop.discuss.entity.ShopDiscussEntity;

import java.util.List;
import org.jeecgframework.core.common.service.CommonService;
import java.io.Serializable;

public interface ShopCustomerServiceI extends CommonService{
	
 	public <T> void delete(T entity);
	/**
	 * 添加一对多
	 * 
	 */
	public void addMain(ShopCustomerEntity shopCustomer,
	        List<ShopLoveEntity> shopLoveList,List<ShopDiscussEntity> shopDiscussList) ;
	/**
	 * 修改一对多
	 * 
	 */
	public void updateMain(ShopCustomerEntity shopCustomer,
	        List<ShopLoveEntity> shopLoveList,List<ShopDiscussEntity> shopDiscussList);
	public void delMain (ShopCustomerEntity shopCustomer);
	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(ShopCustomerEntity t);
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(ShopCustomerEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(ShopCustomerEntity t);
}
