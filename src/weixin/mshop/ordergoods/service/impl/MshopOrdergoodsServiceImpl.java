package weixin.mshop.ordergoods.service.impl;
import weixin.mshop.cart.entity.MshopCartEntity;
import weixin.mshop.ordergoods.service.MshopOrdergoodsServiceI;

import org.jeecgframework.core.common.dao.jdbc.JdbcDao;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import weixin.mshop.ordergoods.entity.MshopOrdergoodsEntity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.UUID;
import java.io.Serializable;

@Service("mshopOrdergoodsService")
@Transactional
public class MshopOrdergoodsServiceImpl extends CommonServiceImpl implements MshopOrdergoodsServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((MshopOrdergoodsEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((MshopOrdergoodsEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((MshopOrdergoodsEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(MshopOrdergoodsEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(MshopOrdergoodsEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(MshopOrdergoodsEntity t){
	 	return true;
 	}
 	
 	/**
 	 * 删除一个订单的所有订单商品
 	 * @param orderId
 	 */
 	public void deleteOrderGoodsByOrderId(String orderId){
 		MshopOrdergoodsEntity orderGoods=new MshopOrdergoodsEntity();
 		orderGoods.setIdOrder(orderId);
 		jdbcDao.executeForObject("delete from wx_mshop_ordergoods where id_order=:idOrder", orderGoods);
 	}
 	
 	
 	@Autowired
	private JdbcDao jdbcDao;
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,MshopOrdergoodsEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{create_name}",String.valueOf(t.getCreateName()));
 		sql  = sql.replace("#{create_date}",String.valueOf(t.getCreateDate()));
 		sql  = sql.replace("#{update_name}",String.valueOf(t.getUpdateName()));
 		sql  = sql.replace("#{update_date}",String.valueOf(t.getUpdateDate()));
 		sql  = sql.replace("#{id_order}",String.valueOf(t.getIdOrder()));
 		sql  = sql.replace("#{id_goods}",String.valueOf(t.getIdGoods()));
 		sql  = sql.replace("#{original_price}",String.valueOf(t.getOriginalPrice()));
 		sql  = sql.replace("#{real_price}",String.valueOf(t.getRealPrice()));
 		sql  = sql.replace("#{count}",String.valueOf(t.getCount()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}