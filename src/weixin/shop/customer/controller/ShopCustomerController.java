package weixin.shop.customer.controller;
import weixin.shop.customer.entity.ShopCustomerEntity;
import weixin.shop.customer.service.ShopCustomerServiceI;
import weixin.shop.customer.page.ShopCustomerPage;
import weixin.shop.love.entity.ShopLoveEntity;
import weixin.shop.discuss.entity.ShopDiscussEntity;
import java.util.List;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSDepart;
import org.jeecgframework.web.system.service.SystemService;
import org.jeecgframework.core.util.MyBeanUtils;


/**   
 * @Title: Controller
 * @Description: 微商城客户表
 * @author onlineGenerator
 * @date 2015-09-24 15:37:36
 * @version V1.0   
 *
 */
@Controller
@RequestMapping("/shopCustomerController")
public class ShopCustomerController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(ShopCustomerController.class);

	@Autowired
	private ShopCustomerServiceI shopCustomerService;
	@Autowired
	private SystemService systemService;


	/**
	 * 微商城客户表列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "shopCustomer")
	public ModelAndView shopCustomer(HttpServletRequest request) {
		return new ModelAndView("weixin/shop/customer/shopCustomerList");
	}

	/**
	 * easyui AJAX请求数据
	 * 
	 * @param request
	 * @param response
	 * @param dataGrid
	 * @param user
	 */

	@RequestMapping(params = "datagrid")
	public void datagrid(ShopCustomerEntity shopCustomer,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(ShopCustomerEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, shopCustomer);
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.shopCustomerService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除微商城客户表
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(ShopCustomerEntity shopCustomer, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		shopCustomer = systemService.getEntity(ShopCustomerEntity.class, shopCustomer.getId());
		String message = "微商城客户表删除成功";
		try{
			shopCustomerService.delMain(shopCustomer);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城客户表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}

	/**
	 * 批量删除微商城客户表
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		String message = "微商城客户表删除成功";
		try{
			for(String id:ids.split(",")){
				ShopCustomerEntity shopCustomer = systemService.getEntity(ShopCustomerEntity.class,
				id
				);
				shopCustomerService.delMain(shopCustomer);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城客户表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}

	/**
	 * 添加微商城客户表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(ShopCustomerEntity shopCustomer,ShopCustomerPage shopCustomerPage, HttpServletRequest request) {
		List<ShopLoveEntity> shopLoveList =  shopCustomerPage.getShopLoveList();
		List<ShopDiscussEntity> shopDiscussList =  shopCustomerPage.getShopDiscussList();
		AjaxJson j = new AjaxJson();
		String message = "添加成功";
		try{
			shopCustomerService.addMain(shopCustomer, shopLoveList,shopDiscussList);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城客户表添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	/**
	 * 更新微商城客户表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(ShopCustomerEntity shopCustomer,ShopCustomerPage shopCustomerPage, HttpServletRequest request) {
		List<ShopLoveEntity> shopLoveList =  shopCustomerPage.getShopLoveList();
		List<ShopDiscussEntity> shopDiscussList =  shopCustomerPage.getShopDiscussList();
		AjaxJson j = new AjaxJson();
		String message = "更新成功";
		try{
			shopCustomerService.updateMain(shopCustomer, shopLoveList,shopDiscussList);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "更新微商城客户表失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}

	/**
	 * 微商城客户表新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(ShopCustomerEntity shopCustomer, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(shopCustomer.getId())) {
			shopCustomer = shopCustomerService.getEntity(ShopCustomerEntity.class, shopCustomer.getId());
			req.setAttribute("shopCustomerPage", shopCustomer);
		}
		return new ModelAndView("weixin/shop/customer/shopCustomer-add");
	}
	
	/**
	 * 微商城客户表编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(ShopCustomerEntity shopCustomer, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(shopCustomer.getId())) {
			shopCustomer = shopCustomerService.getEntity(ShopCustomerEntity.class, shopCustomer.getId());
			req.setAttribute("shopCustomerPage", shopCustomer);
		}
		return new ModelAndView("weixin/shop/customer/shopCustomer-update");
	}
	
	
	/**
	 * 加载明细列表[用户收藏]
	 * 
	 * @return
	 */
	@RequestMapping(params = "shopLoveList")
	public ModelAndView shopLoveList(ShopCustomerEntity shopCustomer, HttpServletRequest req) {
	
		//===================================================================================
		//获取参数
		Object id0 = shopCustomer.getId();
		//===================================================================================
		//查询-用户收藏
	    String hql0 = "from ShopLoveEntity where 1 = 1 AND iD_CUSTOMER = ? ";
	    try{
	    	List<ShopLoveEntity> shopLoveEntityList = systemService.findHql(hql0,id0);
			req.setAttribute("shopLoveList", shopLoveEntityList);
		}catch(Exception e){
			logger.info(e.getMessage());
		}
		return new ModelAndView("weixin/shop/love/shopLoveList");
	}
	/**
	 * 加载明细列表[用户评论]
	 * 
	 * @return
	 */
	@RequestMapping(params = "shopDiscussList")
	public ModelAndView shopDiscussList(ShopCustomerEntity shopCustomer, HttpServletRequest req) {
	
		//===================================================================================
		//获取参数
		Object id1 = shopCustomer.getId();
		//===================================================================================
		//查询-用户评论
	    String hql1 = "from ShopDiscussEntity where 1 = 1 AND iD_CUSTOMER = ? ";
	    try{
	    	List<ShopDiscussEntity> shopDiscussEntityList = systemService.findHql(hql1,id1);
			req.setAttribute("shopDiscussList", shopDiscussEntityList);
		}catch(Exception e){
			logger.info(e.getMessage());
		}
		return new ModelAndView("weixin/shop/discuss/shopDiscussList");
	}
	
}
