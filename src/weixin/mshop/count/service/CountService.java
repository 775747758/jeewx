package weixin.mshop.count.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.mshop.advertisement.service.MshopAdvertisementServiceI;
import weixin.mshop.cart.service.MshopCartServiceI;
import weixin.mshop.count.vo.CountVo;
import weixin.mshop.customer.service.WxMshopCustomerServiceI;
import weixin.mshop.dispatch.service.WeixinDispatchServiceI;
import weixin.mshop.evaluate.service.MshopEvaluateServiceI;
import weixin.mshop.goods.entity.MshopGoodsEntity;
import weixin.mshop.goods.service.MshopGoodsServiceI;
import weixin.mshop.order.entity.MshopOrderEntity;
import weixin.mshop.order.service.MshopOrderServiceI;
import weixin.mshop.ordergoods.service.MshopOrdergoodsServiceI;
import weixin.mshop.store.entity.MshopStoreEntity;
import weixin.mshop.store.service.MshopStoreServiceI;

@Service
@Transactional
public class CountService {

	public List<CountVo> getCountVoList(HttpServletRequest request) throws ParseException{
		Map<String, String[]> parameterMap=request.getParameterMap();
		List<CountVo> countVoList=new ArrayList<CountVo>();
		String beginDate=null;
		String endDate=null;
		if(parameterMap.get("createdt_begin")!=null&&parameterMap.get("createdt_end")!=null){
			beginDate=parameterMap.get("createdt_begin")[0];
			endDate=parameterMap.get("createdt_end")[0];
		}
		CriteriaQuery cq = new CriteriaQuery(MshopStoreEntity.class);
		cq.eq("status",MshopStoreEntity.STORE_STATE_NORMAL);//店铺必须为正常营业的
		//cq.addOrder("orders",  SortDirection.asc);
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		cq.add();
		List<MshopStoreEntity> storeList=mshopStoreService.getListByCriteriaQuery(cq, false);
		for(MshopStoreEntity store:storeList){
			CountVo vo=new CountVo();
			vo.setOrderCount(getTotalOrderCount(store.getId(), beginDate, endDate));
			vo.setStoreId(store.getId());
			vo.setStoreName(store.getStoreName());
			vo.setGoodsCount(getTotalGoodsCount(store.getId(), beginDate, endDate));
			vo.setTotalPrice(getTotalOrderPrice(store.getId(), beginDate, endDate));
			countVoList.add(vo);
		}
		return countVoList;
	}
	
	
	public int getTotalOrderCount(String storeId,String beginDate,String endDate) throws ParseException{
		CriteriaQuery cq = new CriteriaQuery(MshopOrderEntity.class);
		if(StringUtils.isNotBlank(beginDate)&&StringUtils.isNotBlank(endDate)){
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			Date dt1 = df.parse(beginDate);
	        Date dt2 = df.parse(endDate);
			if(dt1.getTime()<=dt2.getTime()){
				cq.add(Restrictions.ge("createDate",dt1));
				cq.add(Restrictions.le("createDate",dt2));
			}
		}
		cq.getDetachedCriteria().setProjection(Projections.rowCount()).add(Restrictions.eq("idStore",storeId));
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		//cq.eq("idStore",storeId);
		String cout=mshopOrderService.getListByCriteriaQuery(cq, false).get(0).toString();
		return Integer.parseInt(cout);
	}
	
	public int getTotalGoodsCount(String storeId,String beginDate,String endDate) throws ParseException{
		CriteriaQuery cq = new CriteriaQuery(MshopGoodsEntity.class);
		if(StringUtils.isNotBlank(beginDate)&&StringUtils.isNotBlank(endDate)){
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			Date dt1 = df.parse(beginDate);
	        Date dt2 = df.parse(endDate);
			if(dt1.getTime()<=dt2.getTime()){
				cq.add(Restrictions.ge("createDate",dt1));
				cq.add(Restrictions.le("createDate",dt2));
			}
		}
		cq.getDetachedCriteria().setProjection(Projections.rowCount()).add(Restrictions.eq("idStore",storeId)).add(Restrictions.eq("statement",MshopGoodsEntity.GOODS_STATE_NORMAL));
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		//cq.eq("idStore",storeId);
		String cout=mshopGoodsService.getListByCriteriaQuery(cq, false).get(0).toString();
		return Integer.parseInt(cout);
		//Projections.sum("actualSpq")
	}
	
	public String getTotalOrderPrice(String storeId,String beginDate,String endDate) throws ParseException{
		CriteriaQuery cq = new CriteriaQuery(MshopOrderEntity.class);
		if(StringUtils.isNotBlank(beginDate)&&StringUtils.isNotBlank(endDate)){
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			Date dt1 = df.parse(beginDate);
	        Date dt2 = df.parse(endDate);
			if(dt1.getTime()<=dt2.getTime()){
				cq.add(Restrictions.ge("createDate",dt1));
				cq.add(Restrictions.le("createDate",dt2));
			}
		}
		cq.getDetachedCriteria().setProjection(Projections.sum("totalPrice")).add(Restrictions.eq("idStore",storeId));
		cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		Double price=(Double) mshopOrderService.getListByCriteriaQuery(cq, false).get(0);
		return price+"";
	}
	
	@Autowired
	private MshopEvaluateServiceI evaluateService;
	@Autowired
	private MshopGoodsServiceI mshopGoodsService;
	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	@Autowired
	private MshopAdvertisementServiceI mshopAdvertisementService;
	@Autowired
	private MshopCartServiceI mshopCartService;
	@Autowired
	private MshopStoreServiceI mshopStoreService;
	@Autowired
	private WxMshopCustomerServiceI mshopCustomerService;
	@Autowired
	private WeixinDispatchServiceI weixinDispatchService;
	@Autowired
	private MshopOrderServiceI mshopOrderService;
	@Autowired
	private MshopOrdergoodsServiceI mshopOrdergoodsService;
}
