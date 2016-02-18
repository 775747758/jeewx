package weixin.mshop.store.service;
import weixin.mshop.store.entity.MshopStoreEntity;
import org.jeecgframework.core.common.service.CommonService;
import org.jeecgframework.web.system.pojo.base.TSUser;

import java.io.Serializable;
import java.util.List;

public interface MshopStoreServiceI extends CommonService{
	
 	public <T> void delete(T entity);
 	
 	public <T> Serializable save(T entity);
 	
 	public <T> void saveOrUpdate(T entity);
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopStoreEntity t);
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopStoreEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopStoreEntity t);
 	
 	public  void saveStore(MshopStoreEntity t);
 	
 	public  void updateStore(MshopStoreEntity t);
 	
 	public  void deleteStore(MshopStoreEntity t);
 	
 	public  void lockOrRecover(String funname,String id);

	public void recommendOrCancel(String funname, String id);
	
	public  List<MshopStoreEntity> getStoreListByTypeId(String accountid,String typeId);
 	
 	
}
