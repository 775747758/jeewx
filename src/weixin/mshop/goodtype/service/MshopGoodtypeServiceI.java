package weixin.mshop.goodtype.service;
import weixin.mshop.goodtype.entity.MshopGoodtypeEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface MshopGoodtypeServiceI extends CommonService{
	
 	public <T> void delete(T entity);
 	
 	public <T> Serializable save(T entity);
 	
 	public <T> void saveOrUpdate(T entity);
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopGoodtypeEntity t);
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopGoodtypeEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopGoodtypeEntity t);
 	
 	public void delGoodType(MshopGoodtypeEntity t);
}
