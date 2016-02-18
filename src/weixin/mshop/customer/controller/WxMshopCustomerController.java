package weixin.mshop.customer.controller;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.BrowserUtils;
import org.jeecgframework.core.util.ContextHolderUtils;
import org.jeecgframework.core.util.ExceptionUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.jeecgframework.web.system.manager.ClientManager;
import org.jeecgframework.web.system.pojo.base.Client;
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

import weixin.mshop.customer.entity.WxMshopCustomerEntity;
import weixin.mshop.customer.service.WxMshopCustomerServiceI;
import weixin.mshop.store.entity.MshopStoreEntity;



/**   
 * @Title: Controller
 * @Description: 微商城多店版客户表
 * @author onlineGenerator
 * @date 2015-10-21 15:11:28
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/wxMshopCustomerController")
public class WxMshopCustomerController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(WxMshopCustomerController.class);

	@Autowired
	private WxMshopCustomerServiceI wxMshopCustomerService;
	@Autowired
	private SystemService systemService;
	private String message;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	/**
	 * 微商城多店版客户表列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "wxMshopCustomer")
	public ModelAndView wxMshopCustomer(HttpServletRequest request) {
		return new ModelAndView("weixin/mshop/customer/wxMshopCustomerList");
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
	public void datagrid(WxMshopCustomerEntity wxMshopCustomer,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		dataGrid.setSort("createDate");
		dataGrid.setOrder(SortDirection.desc);
		CriteriaQuery cq = new CriteriaQuery(WxMshopCustomerEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, wxMshopCustomer, request.getParameterMap());
		try{
		//自定义追加查询条件
			/*HttpSession session = ContextHolderUtils.getSession();
			Client client = ClientManager.getInstance().getClient(session.getId());
			//MshopStoreEntity store= (MshopStoreEntity) request.getSession().getAttribute("store");
			MshopStoreEntity store= wxMshopCustomerService.findUniqueByProperty(MshopStoreEntity.class, "idUser", client.getUser().getId());
			cq.eq("idStore", store.getId());*/
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.wxMshopCustomerService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除微商城多店版客户表
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(WxMshopCustomerEntity wxMshopCustomer, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		wxMshopCustomer = systemService.getEntity(WxMshopCustomerEntity.class, wxMshopCustomer.getId());
		message = "微商城多店版客户表删除成功";
		try{
			wxMshopCustomerService.delete(wxMshopCustomer);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城多店版客户表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除微商城多店版客户表
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "微商城多店版客户表删除成功";
		try{
			for(String id:ids.split(",")){
				WxMshopCustomerEntity wxMshopCustomer = systemService.getEntity(WxMshopCustomerEntity.class, 
				id
				);
				wxMshopCustomerService.delete(wxMshopCustomer);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城多店版客户表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加微商城多店版客户表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(WxMshopCustomerEntity wxMshopCustomer, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "微商城多店版客户表添加成功";
		try{
			wxMshopCustomerService.save(wxMshopCustomer);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城多店版客户表添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新微商城多店版客户表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(WxMshopCustomerEntity wxMshopCustomer, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "微商城多店版客户表更新成功";
		WxMshopCustomerEntity t = wxMshopCustomerService.get(WxMshopCustomerEntity.class, wxMshopCustomer.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(wxMshopCustomer, t);
			wxMshopCustomerService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "微商城多店版客户表更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 微商城多店版客户表新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(WxMshopCustomerEntity wxMshopCustomer, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(wxMshopCustomer.getId())) {
			wxMshopCustomer = wxMshopCustomerService.getEntity(WxMshopCustomerEntity.class, wxMshopCustomer.getId());
			req.setAttribute("wxMshopCustomerPage", wxMshopCustomer);
		}
		return new ModelAndView("weixin/mshop/customer/wxMshopCustomer-add");
	}
	/**
	 * 微商城多店版客户表编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(WxMshopCustomerEntity wxMshopCustomer, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(wxMshopCustomer.getId())) {
			wxMshopCustomer = wxMshopCustomerService.getEntity(WxMshopCustomerEntity.class, wxMshopCustomer.getId());
			req.setAttribute("mshopCustomerPage", wxMshopCustomer);
		}
		return new ModelAndView("weixin/mshop/customer/wxMshopCustomer-update");
	}
	
	/**
	 * 导入功能跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "upload")
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/mshop/customer/wxMshopCustomerUpload");
	}
	
	/**
	 * 导出excel
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXls")
	public void exportXls(WxMshopCustomerEntity wxMshopCustomer,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微商城多店版客户表";
			// 根据浏览器进行转码，使其支持中文文件名
			if (BrowserUtils.isIE(request)) {
				response.setHeader(
						"content-disposition",
						"attachment;filename="
								+ java.net.URLEncoder.encode(codedFileName,
										"UTF-8") + ".xls");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"),
						"ISO8859-1");
				response.setHeader("content-disposition",
						"attachment;filename=" + newtitle + ".xls");
			}
			// 产生工作簿对象
			HSSFWorkbook workbook = null;
			CriteriaQuery cq = new CriteriaQuery(WxMshopCustomerEntity.class, dataGrid);
			org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, wxMshopCustomer, request.getParameterMap());
			
			List<WxMshopCustomerEntity> wxMshopCustomers = this.wxMshopCustomerService.getListByCriteriaQuery(cq,false);
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微商城多店版客户表列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WxMshopCustomerEntity.class, wxMshopCustomers);
			fOut = response.getOutputStream();
			workbook.write(fOut);
		} catch (Exception e) {
		} finally {
			try {
				fOut.flush();
				fOut.close();
			} catch (IOException e) {

			}
		}
	}
	/**
	 * 导出excel 使模板
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXlsByT")
	public void exportXlsByT(WxMshopCustomerEntity wxMshopCustomer,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微商城多店版客户表";
			// 根据浏览器进行转码，使其支持中文文件名
			if (BrowserUtils.isIE(request)) {
				response.setHeader(
						"content-disposition",
						"attachment;filename="
								+ java.net.URLEncoder.encode(codedFileName,
										"UTF-8") + ".xls");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"),
						"ISO8859-1");
				response.setHeader("content-disposition",
						"attachment;filename=" + newtitle + ".xls");
			}
			// 产生工作簿对象
			HSSFWorkbook workbook = null;
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微商城多店版客户表列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WxMshopCustomerEntity.class, null);
			fOut = response.getOutputStream();
			workbook.write(fOut);
		} catch (Exception e) {
		} finally {
			try {
				fOut.flush();
				fOut.close();
			} catch (IOException e) {

			}
		}
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(params = "importExcel", method = RequestMethod.POST)
	@ResponseBody
	public AjaxJson importExcel(HttpServletRequest request, HttpServletResponse response) {
		AjaxJson j = new AjaxJson();
		
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
			MultipartFile file = entity.getValue();// 获取上传文件对象
			ImportParams params = new ImportParams();
			params.setTitleRows(2);
			params.setSecondTitleRows(1);
			params.setNeedSave(true);
			try {
				List<WxMshopCustomerEntity> listWxMshopCustomerEntitys = 
					(List<WxMshopCustomerEntity>)ExcelImportUtil.importExcelByIs(file.getInputStream(),WxMshopCustomerEntity.class,params);
				for (WxMshopCustomerEntity wxMshopCustomer : listWxMshopCustomerEntitys) {
					wxMshopCustomerService.save(wxMshopCustomer);
				}
				j.setMsg("文件导入成功！");
			} catch (Exception e) {
				j.setMsg("文件导入失败！");
				logger.error(ExceptionUtil.getExceptionMessage(e));
			}finally{
				try {
					file.getInputStream().close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return j;
	}
}
