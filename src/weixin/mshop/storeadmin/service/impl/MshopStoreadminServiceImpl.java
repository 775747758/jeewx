package weixin.mshop.storeadmin.service.impl;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;
import java.util.UUID;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import weixin.mshop.customer.entity.WxMshopCustomerEntity;
import weixin.mshop.customer.service.WxMshopCustomerServiceI;
import weixin.mshop.store.entity.MshopStoreEntity;
import weixin.mshop.store.service.MshopStoreServiceI;
import weixin.mshop.storeadmin.entity.MshopStoreadminEntity;
import weixin.mshop.storeadmin.service.MshopStoreadminServiceI;

@Service("mshopStoreadminService")
@Transactional
public class MshopStoreadminServiceImpl extends CommonServiceImpl implements MshopStoreadminServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((MshopStoreadminEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((MshopStoreadminEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((MshopStoreadminEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopStoreadminEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopStoreadminEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopStoreadminEntity t){
	 	return true;
 	}
 	
 	public String setStoreAdmin(String openid,String content){
 		List<MshopStoreadminEntity> admins= findByProperty(MshopStoreadminEntity.class, "openid", openid);
 			List<WxMshopCustomerEntity> customers=mshopCustomerService.findByProperty(WxMshopCustomerEntity.class, "openid", openid);
 			ResourceBundle bundlerWX = ResourceBundle.getBundle("weixin");
			String configAdminPassword=bundlerWX.getString("configAdminPassword");
			String configAdminPasswordStore=bundlerWX.getString("configAdminPasswordStore");
			MshopStoreadminEntity admin=new MshopStoreadminEntity();
			admin.setCreateDate(new Date());
			String[]  names=content.split("#");
			String name=null;
			String username=null;
			if(names.length==3){
				//先检查是否已经存在
				if(admins.isEmpty()){
					name=names[2];
					username=names[1];
					List<MshopStoreEntity> stores=mshopStoreService.findByProperty(MshopStoreEntity.class, "username", username);                                
					if(StringUtils.isNotBlank(name)&&name.length()<10){
						//必须已经关注
						if(!customers.isEmpty()){
								admin.setName(name);
								admin.setOpenid(openid);
								//设置总管理员
								if(content.startsWith(configAdminPassword+"#")){
									admin.setIsHead(MshopStoreadminEntity.HEAD);
									save(admin);
									return "设置总管理员成功！";
								}
								//设置店铺管理员
								if(content.startsWith(configAdminPasswordStore+"#")){
									//店铺的用户名要正确
									if(!stores.isEmpty()){
										admin.setIdStore(stores.get(0).getId());
										admin.setIsHead(MshopStoreadminEntity.NOT_HEAD);
										save(admin);
										return "设置店铺管理员成功！";
									}else{
										return "设置失败！失败原因：店铺用户名错误";
									}
								}
								
							
						}else{
							return "设置失败！失败原因：您未在平台上线后关注本平台。请重新关注！";
						}
					}else{
						return "设置失败！失败原因：格式不正确！";
					}
				}else{
		 			return "您已经是管理员！";
		 		}
				}
 		return null;
 	}
 	
 	public List<MshopStoreadminEntity> getHeadAdmins(){
 		CriteriaQuery cq = new CriteriaQuery(MshopStoreadminEntity.class);
		cq.eq("isHead",MshopStoreadminEntity.HEAD);
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		return getListByCriteriaQuery(cq, false);
 	}
 	
 	public List<MshopStoreadminEntity> getStoreAdmins(String storeId){
 		CriteriaQuery cq = new CriteriaQuery(MshopStoreadminEntity.class);
		cq.eq("isHead",MshopStoreadminEntity.NOT_HEAD);
		cq.eq("idStore", storeId);
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		return getListByCriteriaQuery(cq, false);
 	}
 	
 	@Autowired
 	private WxMshopCustomerServiceI mshopCustomerService;
 	@Autowired
 	private MshopStoreServiceI mshopStoreService;
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,MshopStoreadminEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{create_name}",String.valueOf(t.getCreateName()));
 		sql  = sql.replace("#{create_date}",String.valueOf(t.getCreateDate()));
 		sql  = sql.replace("#{update_name}",String.valueOf(t.getUpdateName()));
 		sql  = sql.replace("#{update_date}",String.valueOf(t.getUpdateDate()));
 		sql  = sql.replace("#{openid}",String.valueOf(t.getOpenid()));
 		sql  = sql.replace("#{id_store}",String.valueOf(t.getIdStore()));
 		sql  = sql.replace("#{name}",String.valueOf(t.getName()));
 		sql  = sql.replace("#{is_head}",String.valueOf(t.getIsHead()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}