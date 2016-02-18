package weixin.mshop.storeadmin.service;
import weixin.mshop.storeadmin.entity.MshopStoreadminEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;
import java.util.List;

public interface MshopStoreadminServiceI extends CommonService{
	
 	public <T> void delete(T entity);
 	
 	public <T> Serializable save(T entity);
 	
 	public <T> void saveOrUpdate(T entity);
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopStoreadminEntity t);
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopStoreadminEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopStoreadminEntity t);
 	
 	public String setStoreAdmin(String openid,String content);
 	
 	public List<MshopStoreadminEntity> getHeadAdmins();
 	
 	public List<MshopStoreadminEntity> getStoreAdmins(String storeId);
}
