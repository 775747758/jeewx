package weixin.mshop.store.service.impl;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.hibernate.Criteria;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.PasswordUtil;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.jeecgframework.web.system.pojo.base.TSDepart;
import org.jeecgframework.web.system.pojo.base.TSRole;
import org.jeecgframework.web.system.pojo.base.TSRoleUser;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.SystemService;
import org.jeecgframework.web.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.mshop.store.entity.MshopStoreEntity;
import weixin.mshop.store.service.MshopStoreServiceI;

@Service("mshopStoreService")
@Transactional
public class MshopStoreServiceImpl extends CommonServiceImpl implements MshopStoreServiceI {
	
	@Autowired
	private SystemService systemService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((MshopStoreEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((MshopStoreEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((MshopStoreEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopStoreEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopStoreEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopStoreEntity t){
	 	return true;
 	}
 	
 	public  void saveStore(MshopStoreEntity mshopStore){
 		WeixinAccountEntity account=weixinAccountService.findLoginWeixinAccount();
 		TSUser users=new TSUser();
		users.setEmail(mshopStore.getEmail());
		users.setMobilePhone(mshopStore.getMobilePhone());
		users.setOfficePhone(mshopStore.getOfficePhone());
		users.setUserName(mshopStore.getUsername());
		users.setId(UUID.randomUUID().toString());
		users.setAccount(account);
		//保存的时候只在User表中加密密码，mshopStore并不加密密码
		users.setPassword(PasswordUtil.encrypt(mshopStore.getUsername(), mshopStore.getPassword(),PasswordUtil.getStaticSalt()));
		users.setStatus(Globals.User_Normal);
		//4028813a5050e3a3015050fc55080002:是“商户”部门ID
		TSDepart  depart = systemService.getEntity(TSDepart.class,"4028813a5050e3a3015050fc55080002");
		users.setTSDepart(depart);
		systemService.save(users);
		
		mshopStore.setAccountid(account.getId());
		mshopStore.setCreateDate(new Date());
		mshopStore.setIdUser(users.getId());
		mshopStore.setStatus(MshopStoreEntity.STORE_STATE_NORMAL);
		mshopStore.setWeixinAccountid(account.getWeixin_accountid());
		save(mshopStore);
		
		TSRoleUser rUser = new TSRoleUser();
		//4028813a504bea7401504bf3c7e20001:是商户角色
		TSRole role = systemService.getEntity(TSRole.class,"4028813a504bea7401504bf3c7e20001");
		rUser.setTSRole(role);
		rUser.setTSUser(users);
		systemService.save(rUser);
 	}
 	
	public void updateStore(MshopStoreEntity mshopStore) {
		TSUser userU = systemService.getEntity(TSUser.class, mshopStore.getIdUser());
		userU.setEmail(mshopStore.getEmail());
		userU.setOfficePhone(mshopStore.getOfficePhone());
		userU.setMobilePhone(mshopStore.getMobilePhone());
		userU.setRealName(mshopStore.getStoreName());
		systemService.updateEntitie(userU);
		//MshopStoreEntity store=mshopStoreService.getEntity(MshopStoreEntity.class, mshopStore.getId());
		updateEntitie(mshopStore);
		List<TSRoleUser> ru = systemService.findByProperty(TSRoleUser.class, "TSUser.id", mshopStore.getIdUser());
		systemService.deleteAllEntitie(ru);
		saveRoleUser(userU, "4028813a504bea7401504bf3c7e20001");
	}
	
	
	protected void saveRoleUser(TSUser user, String roleidstr) {
		String[] roleids = roleidstr.split(",");
		for (int i = 0; i < roleids.length; i++) {
			TSRoleUser rUser = new TSRoleUser();
			TSRole role = systemService.getEntity(TSRole.class, roleids[i]);
			rUser.setTSRole(role);
			rUser.setTSUser(user);
			systemService.save(rUser);

		}
	}
	
	
	/**
	 * 暂停营业或者恢复营业
	 * @param funname
	 * @param id
	 */
	public  void lockOrRecover(String funname,String id){
		MshopStoreEntity store=getEntity(MshopStoreEntity.class,id);
		TSUser user = systemService.getEntity(TSUser.class, store.getIdUser());
		user.setStatus("doLock".equals(funname)?Globals.User_Forbidden:Globals.User_Normal);
		store.setStatus("doLock".equals(funname)?MshopStoreEntity.STORE_STATE_STOP:MshopStoreEntity.STORE_STATE_NORMAL);
		updateEntitie(store);
		userService.updateEntitie(user);
	}
	
	public  void deleteStore(MshopStoreEntity mshopStore){
		//1、假删除，设置店铺状态，修改店铺和用户的账号，避免以后其他人不能登录
		mshopStore = systemService.getEntity(MshopStoreEntity.class, mshopStore.getId());
		mshopStore.setStatus(MshopStoreEntity.STORE_STATE_DELETE);
		mshopStore.setUsername("qsrfhrgg78787");
		updateEntitie(mshopStore);
		//2、更新user的用户名和状态
		TSUser user = systemService.getEntity(TSUser.class, mshopStore.getIdUser());
		user.setUserName("qsrfhrgg78787");
		user.setStatus(new Short("0"));
		systemService.updateEntitie(user);
	}
	
	public void delRoleUser(TSUser user) {
		// 同步删除用户角色关联表
		List<TSRoleUser> roleUserList = systemService.findByProperty(TSRoleUser.class, "TSUser.id", user.getId());
		if (roleUserList.size() >= 1) {
			for (TSRoleUser tRoleUser : roleUserList) {
				systemService.delete(tRoleUser);
			}
		}
	}
	
	public void recommendOrCancel(String funname, String id){
		MshopStoreEntity store=getEntity(MshopStoreEntity.class,id);
		store.setIsRecommend("doRecommend".equals(funname)?MshopStoreEntity.RECOMMEND:MshopStoreEntity.NOT_RECOMMEND);
		updateEntitie(store);
	}
 	
	public  List<MshopStoreEntity> getStoreListByTypeId(String accountid,String typeId){
		CriteriaQuery cq = new CriteriaQuery(MshopStoreEntity.class);
		cq.eq("accountid",accountid);
		cq.eq("status",MshopStoreEntity.STORE_STATE_NORMAL);//店铺必须为正常营业的
		cq.eq("idType",typeId);
		cq.addOrder("orders",  SortDirection.asc);
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		return this.getListByCriteriaQuery(cq, false);
	}
	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,MshopStoreEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{create_name}",String.valueOf(t.getCreateName()));
 		sql  = sql.replace("#{create_date}",String.valueOf(t.getCreateDate()));
 		sql  = sql.replace("#{update_name}",String.valueOf(t.getUpdateName()));
 		sql  = sql.replace("#{update_date}",String.valueOf(t.getUpdateDate()));
 		sql  = sql.replace("#{mobile_phone}",String.valueOf(t.getMobilePhone()));
 		sql  = sql.replace("#{office_phone}",String.valueOf(t.getOfficePhone()));
 		sql  = sql.replace("#{store_name}",String.valueOf(t.getStoreName()));
 		sql  = sql.replace("#{username}",String.valueOf(t.getUsername()));
 		sql  = sql.replace("#{password}",String.valueOf(t.getPassword()));
 		sql  = sql.replace("#{email}",String.valueOf(t.getEmail()));
 		sql  = sql.replace("#{descriptions}",String.valueOf(t.getDescriptions()));
 		sql  = sql.replace("#{status}",String.valueOf(t.getStatus()));
 		sql  = sql.replace("#{id_type}",String.valueOf(t.getType().getId()));
 		sql  = sql.replace("#{start_time}",String.valueOf(t.getStartTime()));
 		sql  = sql.replace("#{end_time}",String.valueOf(t.getEndTime()));
 		sql  = sql.replace("#{accountid}",String.valueOf(t.getAccountid()));
 		sql  = sql.replace("#{weixin_accountid}",String.valueOf(t.getWeixinAccountid()));
 		sql  = sql.replace("#{id_user}",String.valueOf(t.getIdUser()));
 		sql  = sql.replace("#{orders}",String.valueOf(t.getOrders()));
 		sql  = sql.replace("#{imgurl}",String.valueOf(t.getImgurl()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		sql  = sql.replace("#{isRecommend}",String.valueOf(t.getIsRecommend()));
 		return sql;
 	}

	

}