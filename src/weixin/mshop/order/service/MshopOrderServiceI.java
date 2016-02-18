package weixin.mshop.order.service;
import weixin.mshop.order.entity.MshopOrderEntity;
import org.jeecgframework.core.common.service.CommonService;
import org.jeewx.api.core.exception.WexinReqException;

import java.io.Serializable;

public interface MshopOrderServiceI extends CommonService{
	
 	public <T> void delete(T entity);
 	
 	public <T> Serializable save(T entity);
 	
 	public <T> void saveOrUpdate(T entity);
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopOrderEntity t);
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopOrderEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopOrderEntity t);
 	
 	public void confirmSend(MshopOrderEntity mshopOrder) throws WexinReqException;
 	
 	public void confirmToStore(MshopOrderEntity mshopOrder) ;
 	
 	public int getOrderNumByStoreId(String storeId);
}
