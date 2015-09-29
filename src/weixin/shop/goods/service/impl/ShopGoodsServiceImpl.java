package weixin.shop.goods.service.impl;
import weixin.shop.goods.service.ShopGoodsServiceI;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import weixin.shop.goods.entity.ShopGoodsEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.UUID;
import java.io.Serializable;

@Service("shopGoodsService")
@Transactional
public class ShopGoodsServiceImpl extends CommonServiceImpl implements ShopGoodsServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((ShopGoodsEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((ShopGoodsEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((ShopGoodsEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(ShopGoodsEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(ShopGoodsEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(ShopGoodsEntity t){
	 	return true;
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,ShopGoodsEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{create_name}",String.valueOf(t.getCreateName()));
 		sql  = sql.replace("#{create_date}",String.valueOf(t.getCreateDate()));
 		sql  = sql.replace("#{update_name}",String.valueOf(t.getUpdateName()));
 		sql  = sql.replace("#{update_date}",String.valueOf(t.getUpdateDate()));
 		sql  = sql.replace("#{name}",String.valueOf(t.getName()));
 		sql  = sql.replace("#{imgurl}",String.valueOf(t.getImgurl()));
 		sql  = sql.replace("#{descriptions}",String.valueOf(t.getDescriptions()));
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
 		sql  = sql.replace("#{express_price}",String.valueOf(t.getExpressPrice()));
 		sql  = sql.replace("#{accountid}",String.valueOf(t.getAccountid()));
 		sql  = sql.replace("#{id_category}",String.valueOf(t.getIdCategory()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}