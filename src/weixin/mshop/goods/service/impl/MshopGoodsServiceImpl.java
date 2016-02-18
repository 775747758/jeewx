package weixin.mshop.goods.service.impl;
import weixin.mshop.goods.service.MshopGoodsServiceI;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import weixin.mshop.goods.entity.MshopGoodsEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.UUID;
import java.io.Serializable;

@Service("mshopGoodsService")
@Transactional
public class MshopGoodsServiceImpl extends CommonServiceImpl implements MshopGoodsServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((MshopGoodsEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((MshopGoodsEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((MshopGoodsEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopGoodsEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopGoodsEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopGoodsEntity t){
	 	return true;
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,MshopGoodsEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{create_name}",String.valueOf(t.getCreateName()));
 		sql  = sql.replace("#{create_date}",String.valueOf(t.getCreateDate()));
 		sql  = sql.replace("#{update_name}",String.valueOf(t.getUpdateName()));
 		sql  = sql.replace("#{update_date}",String.valueOf(t.getUpdateDate()));
 		sql  = sql.replace("#{name}",String.valueOf(t.getName()));
 		sql  = sql.replace("#{imgurl}",String.valueOf(t.getImgurl()));
 		sql  = sql.replace("#{description}",String.valueOf(t.getDescription()));
 		sql  = sql.replace("#{original_price}",String.valueOf(t.getOriginalPrice()));
 		sql  = sql.replace("#{real_price}",String.valueOf(t.getRealPrice()));
 		sql  = sql.replace("#{sale}",String.valueOf(t.getSale()));
 		sql  = sql.replace("#{sell_count}",String.valueOf(t.getSellCount()));
 		sql  = sql.replace("#{discuss_count}",String.valueOf(t.getDiscussCount()));
 		sql  = sql.replace("#{good_count}",String.valueOf(t.getGoodCount()));
 		sql  = sql.replace("#{bad_count}",String.valueOf(t.getBadCount()));
 		sql  = sql.replace("#{neutral_count}",String.valueOf(t.getNeutralCount()));
 		sql  = sql.replace("#{statement}",String.valueOf(t.getStatement()));
 		sql  = sql.replace("#{remove_time}",String.valueOf(t.getRemoveTime()));
 		sql  = sql.replace("#{shelve_time}",String.valueOf(t.getShelveTime()));
 		sql  = sql.replace("#{id_category}",String.valueOf(t.getGoodsType().getId()));
 		sql  = sql.replace("#{id_store}",String.valueOf(t.getIdStore()));
 		sql  = sql.replace("#{is_seckill}",String.valueOf(t.getIsSeckill()));
 		sql  = sql.replace("#{is_special}",String.valueOf(t.getIsSpecial()));
 		sql  = sql.replace("#{all_specs}",String.valueOf(t.getAllSpecs()));
 		sql  = sql.replace("#{is_selfsupport}",String.valueOf(t.getIsSelfsupport()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}