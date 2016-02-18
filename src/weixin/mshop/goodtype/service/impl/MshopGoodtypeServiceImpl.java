package weixin.mshop.goodtype.service.impl;
import weixin.mshop.goods.entity.MshopGoodsEntity;
import weixin.mshop.goods.service.MshopGoodsServiceI;
import weixin.mshop.goodtype.service.MshopGoodtypeServiceI;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.web.system.pojo.base.TSRoleUser;

import weixin.mshop.goodtype.entity.MshopGoodtypeEntity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;
import java.io.Serializable;

@Service("mshopGoodtypeService")
@Transactional
public class MshopGoodtypeServiceImpl extends CommonServiceImpl implements MshopGoodtypeServiceI {

	@Autowired
	private MshopGoodsServiceI mshopGoodsService;
	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((MshopGoodtypeEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((MshopGoodtypeEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((MshopGoodtypeEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopGoodtypeEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopGoodtypeEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopGoodtypeEntity t){
	 	return true;
 	}
 	
 	public void delGoodType(MshopGoodtypeEntity t){
 		//删除此分类
 		delete(t);
 		//删除对应分类的商品
 		List<MshopGoodsEntity> list = mshopGoodsService.findByProperty(MshopGoodsEntity.class, "idCategory", t.getId());
 		StringBuffer stringBuffer=new StringBuffer();
 		String result=null;
 		if(list.size() >= 1){
 			for(MshopGoodsEntity mshopGoodsEntity:list){
 	 			stringBuffer.append("'").append(mshopGoodsEntity.getId()).append("'").append(",");
 	 		}
 			result=stringBuffer.substring(0,stringBuffer.length()-1);
 			mshopGoodsService.executeSql("delete from weixin_mshop_goods where id in ("+result+")");
 		}
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,MshopGoodtypeEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{create_name}",String.valueOf(t.getCreateName()));
 		sql  = sql.replace("#{create_date}",String.valueOf(t.getCreateDate()));
 		sql  = sql.replace("#{update_name}",String.valueOf(t.getUpdateName()));
 		sql  = sql.replace("#{update_date}",String.valueOf(t.getUpdateDate()));
 		sql  = sql.replace("#{name}",String.valueOf(t.getName()));
 		sql  = sql.replace("#{id_store}",String.valueOf(t.getStore().getId()));
 		sql  = sql.replace("#{parentid}",String.valueOf(t.getParentid()));
 		sql  = sql.replace("#{imgurl}",String.valueOf(t.getImgurl()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}