package weixin.mshop.count.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.common.model.json.DataGridReturn;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import weixin.mshop.count.service.CountService;
import weixin.mshop.count.vo.CountVo;
import weixin.mshop.customer.entity.WxMshopCustomerEntity;


/**
 * 统计模块
 * @author dengwenjie
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/countController")
public class CountController {
	
	@Autowired
	private CountService countServie;
	
	/**
	 * 
	 * 
	 * @return
	 */
	@RequestMapping(params = "countVoList")
	public ModelAndView wxMshopCustomer(HttpServletRequest request) {
		return new ModelAndView("weixin/mshop/count/countVoList");
	}
	
	@RequestMapping(params = "datagrid")
	public void datagrid(CountVo countVo,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) throws ParseException {
		DataGrid dataGridNew=new DataGrid();
		List<CountVo> list=countServie.getCountVoList(request);
		dataGridNew.setResults(list);
		dataGridNew.setTotal(list.size());
		dataGridNew.setField("storeId,storeName,orderCount,goodsCount,totalPrice");
		TagUtil.datagrid(response, dataGridNew);
	}
	

}
