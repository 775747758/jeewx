package weixin.mshop.dispatch.controller;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.BrowserUtils;
import org.jeecgframework.core.util.ExceptionUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.mshop.dispatch.entity.WeixinDispatchEntity;
import weixin.mshop.dispatch.service.WeixinDispatchServiceI;



/**   
 * @Title: Controller
 * @Description: 配送管理
 * @author onlineGenerator
 * @date 2015-10-13 16:11:50
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/weixinDispatchController")
public class WeixinDispatchController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(WeixinDispatchController.class);

	@Autowired
	private WeixinDispatchServiceI weixinDispatchService;
	@Autowired
	private SystemService systemService;
	private String message;
	
	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	/**
	 * 配送管理列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "weixinDispatch")
	public ModelAndView weixinDispatch(HttpServletRequest request) {
		return new ModelAndView("weixin/mshop/dispatch/weixinDispatchList");
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
	public void datagrid(WeixinDispatchEntity weixinDispatch,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinDispatchEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, weixinDispatch, request.getParameterMap());
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.weixinDispatchService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除配送管理
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(WeixinDispatchEntity weixinDispatch, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinDispatch = systemService.getEntity(WeixinDispatchEntity.class, weixinDispatch.getId());
		message = "微信删除成功";
		try{
			weixinDispatchService.delete(weixinDispatch);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微信删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	


	/**
	 * 添加配送管理
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(WeixinDispatchEntity weixinDispatch, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "微信添加成功";
		try{
			WeixinAccountEntity account=weixinAccountService.findLoginWeixinAccount();
			Long count = weixinDispatchService.getCountForJdbc("SELECT COUNT(1) FROM weixin_dispatch WHERE  accountid='"+account.getId()+"'");
			if(count>0){
				message = "只能添加一个配送方案！";
			}else{
				message = "配送方案添加成功";
				weixinDispatchService.save(weixinDispatch);
				systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
			}
			
		}catch(Exception e){
			e.printStackTrace();
			message = "微信添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新配送
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(WeixinDispatchEntity weixinDispatch, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "微信更新成功";
		WeixinDispatchEntity t = weixinDispatchService.get(WeixinDispatchEntity.class, weixinDispatch.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinDispatch, t);
			weixinDispatchService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "微信更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 配送管理新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(WeixinDispatchEntity weixinDispatch, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinDispatch.getId())) {
			weixinDispatch = weixinDispatchService.getEntity(WeixinDispatchEntity.class, weixinDispatch.getId());
			req.setAttribute("weixinDispatchPage", weixinDispatch);
		}
		return new ModelAndView("weixin/mshop/dispatch/weixinDispatch-add");
	}
	/**
	 * 配送管理编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(WeixinDispatchEntity weixinDispatch, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinDispatch.getId())) {
			weixinDispatch = weixinDispatchService.getEntity(WeixinDispatchEntity.class, weixinDispatch.getId());
			req.setAttribute("weixinDispatchPage", weixinDispatch);
		}
		return new ModelAndView("weixin/mshop/dispatch/weixinDispatch-update");
	}



}
