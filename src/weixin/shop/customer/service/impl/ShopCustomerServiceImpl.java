package weixin.shop.customer.service.impl;
import weixin.shop.customer.service.ShopCustomerServiceI;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import weixin.shop.customer.entity.ShopCustomerEntity;
import weixin.shop.love.entity.ShopLoveEntity;
import weixin.shop.discuss.entity.ShopDiscussEntity;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import java.util.ArrayList;
import java.util.UUID;
import java.io.Serializable;


@Service("shopCustomerService")
@Transactional
public class ShopCustomerServiceImpl extends CommonServiceImpl implements ShopCustomerServiceI {
	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((ShopCustomerEntity)entity);
 	}
	
	public void addMain(ShopCustomerEntity shopCustomer,
	        List<ShopLoveEntity> shopLoveList,List<ShopDiscussEntity> shopDiscussList){
			//保存主信息
			this.save(shopCustomer);
		
			/**保存-用户收藏*/
			for(ShopLoveEntity shopLove:shopLoveList){
				//外键设置
				shopLove.setIdCustomer(shopCustomer.getId());
				this.save(shopLove);
			}
			/**保存-用户评论*/
			for(ShopDiscussEntity shopDiscuss:shopDiscussList){
				//外键设置
				shopDiscuss.setIdCustomer(shopCustomer.getId());
				this.save(shopDiscuss);
			}
			//执行新增操作配置的sql增强
 			this.doAddSql(shopCustomer);
	}

	
	public void updateMain(ShopCustomerEntity shopCustomer,
	        List<ShopLoveEntity> shopLoveList,List<ShopDiscussEntity> shopDiscussList) {
		//保存主表信息
		this.saveOrUpdate(shopCustomer);
		//===================================================================================
		//获取参数
		Object id0 = shopCustomer.getId();
		Object id1 = shopCustomer.getId();
		//===================================================================================
		//1.查询出数据库的明细数据-用户收藏
	    String hql0 = "from ShopLoveEntity where 1 = 1 AND iD_CUSTOMER = ? ";
	    List<ShopLoveEntity> shopLoveOldList = this.findHql(hql0,id0);
		//2.筛选更新明细数据-用户收藏
		for(ShopLoveEntity oldE:shopLoveOldList){
			boolean isUpdate = false;
				for(ShopLoveEntity sendE:shopLoveList){
					//需要更新的明细数据-用户收藏
					if(oldE.getId().equals(sendE.getId())){
		    			try {
							MyBeanUtils.copyBeanNotNull2Bean(sendE,oldE);
							this.saveOrUpdate(oldE);
						} catch (Exception e) {
							e.printStackTrace();
							throw new BusinessException(e.getMessage());
						}
						isUpdate= true;
		    			break;
		    		}
		    	}
	    		if(!isUpdate){
		    		//如果数据库存在的明细，前台没有传递过来则是删除-用户收藏
		    		super.delete(oldE);
	    		}
	    		
			}
			//3.持久化新增的数据-用户收藏
			for(ShopLoveEntity shopLove:shopLoveList){
				if(oConvertUtils.isEmpty(shopLove.getId())){
					//外键设置
					shopLove.setIdCustomer(shopCustomer.getId());
					this.save(shopLove);
				}
			}
		//===================================================================================
		//1.查询出数据库的明细数据-用户评论
	    String hql1 = "from ShopDiscussEntity where 1 = 1 AND iD_CUSTOMER = ? ";
	    List<ShopDiscussEntity> shopDiscussOldList = this.findHql(hql1,id1);
		//2.筛选更新明细数据-用户评论
		for(ShopDiscussEntity oldE:shopDiscussOldList){
			boolean isUpdate = false;
				for(ShopDiscussEntity sendE:shopDiscussList){
					//需要更新的明细数据-用户评论
					if(oldE.getId().equals(sendE.getId())){
		    			try {
							MyBeanUtils.copyBeanNotNull2Bean(sendE,oldE);
							this.saveOrUpdate(oldE);
						} catch (Exception e) {
							e.printStackTrace();
							throw new BusinessException(e.getMessage());
						}
						isUpdate= true;
		    			break;
		    		}
		    	}
	    		if(!isUpdate){
		    		//如果数据库存在的明细，前台没有传递过来则是删除-用户评论
		    		super.delete(oldE);
	    		}
	    		
			}
			//3.持久化新增的数据-用户评论
			for(ShopDiscussEntity shopDiscuss:shopDiscussList){
				if(oConvertUtils.isEmpty(shopDiscuss.getId())){
					//外键设置
					shopDiscuss.setIdCustomer(shopCustomer.getId());
					this.save(shopDiscuss);
				}
			}
		//执行更新操作配置的sql增强
 		this.doUpdateSql(shopCustomer);
	}

	
	public void delMain(ShopCustomerEntity shopCustomer) {
		//删除主表信息
		this.delete(shopCustomer);
		//===================================================================================
		//获取参数
		Object id0 = shopCustomer.getId();
		Object id1 = shopCustomer.getId();
		//===================================================================================
		//删除-用户收藏
	    String hql0 = "from ShopLoveEntity where 1 = 1 AND iD_CUSTOMER = ? ";
	    List<ShopLoveEntity> shopLoveOldList = this.findHql(hql0,id0);
		this.deleteAllEntitie(shopLoveOldList);
		//===================================================================================
		//删除-用户评论
	    String hql1 = "from ShopDiscussEntity where 1 = 1 AND iD_CUSTOMER = ? ";
	    List<ShopDiscussEntity> shopDiscussOldList = this.findHql(hql1,id1);
		this.deleteAllEntitie(shopDiscussOldList);
	}
	
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(ShopCustomerEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(ShopCustomerEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(ShopCustomerEntity t){
	 	return true;
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,ShopCustomerEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{create_name}",String.valueOf(t.getCreateName()));
 		sql  = sql.replace("#{create_date}",String.valueOf(t.getCreateDate()));
 		sql  = sql.replace("#{update_name}",String.valueOf(t.getUpdateName()));
 		sql  = sql.replace("#{update_date}",String.valueOf(t.getUpdateDate()));
 		sql  = sql.replace("#{nickname}",String.valueOf(t.getNickname()));
 		sql  = sql.replace("#{openid}",String.valueOf(t.getOpenid()));
 		sql  = sql.replace("#{headimgurl}",String.valueOf(t.getHeadimgurl()));
 		sql  = sql.replace("#{accountid}",String.valueOf(t.getAccountid()));
 		sql  = sql.replace("#{weixin_accountid}",String.valueOf(t.getWeixinAccountid()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}