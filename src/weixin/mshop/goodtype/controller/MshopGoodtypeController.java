package weixin.mshop.goodtype.controller;
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

import weixin.mshop.goodtype.entity.MshopGoodtypeEntity;
import weixin.mshop.goodtype.service.MshopGoodtypeServiceI;
import weixin.mshop.store.entity.MshopStoreEntity;
import weixin.mshop.store.service.MshopStoreServiceI;



/**   
 * @Title: Controller
 * @Description: 微商城多店商品分类
 * @author onlineGenerator
 * @date 2015-10-14 09:31:37
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/mshopGoodtypeController")
public class MshopGoodtypeController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(MshopGoodtypeController.class);

	@Autowired
	private MshopGoodtypeServiceI mshopGoodtypeService;
	@Autowired
	private SystemService systemService;
	@Autowired
	private MshopStoreServiceI mshopStoreService;
	private String message;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	/**
	 * 微商城多店商品分类列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "mshopGoodtype")
	public ModelAndView mshopGoodtype(HttpServletRequest request) {
		return new ModelAndView("weixin/mshop/goodtype/mshopGoodtypeList");
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
	public void datagrid(MshopGoodtypeEntity mshopGoodtype,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(MshopGoodtypeEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopGoodtype, request.getParameterMap());
		try{
		//自定义追加查询条件
			HttpSession session = ContextHolderUtils.getSession();
			Client client = ClientManager.getInstance().getClient(session.getId());
			//MshopStoreEntity store= (MshopStoreEntity) request.getSession().getAttribute("store");
			MshopStoreEntity store= mshopGoodtypeService.findUniqueByProperty(MshopStoreEntity.class, "idUser", client.getUser().getId());
			cq.eq("id_store", store.getId());
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.mshopGoodtypeService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除微商城多店商品分类
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(MshopGoodtypeEntity mshopGoodtype, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		mshopGoodtype = systemService.getEntity(MshopGoodtypeEntity.class, mshopGoodtype.getId());
		message = "微商城多店商品分类删除成功";
		try{
			mshopGoodtypeService.delGoodType(mshopGoodtype);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城多店商品分类删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除微商城多店商品分类
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "微商城多店商品分类删除成功";
		try{
			for(String id:ids.split(",")){
				MshopGoodtypeEntity mshopGoodtype = systemService.getEntity(MshopGoodtypeEntity.class, 
				id
				);
				mshopGoodtypeService.delete(mshopGoodtype);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城多店商品分类删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加微商城多店商品分类
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(MshopGoodtypeEntity mshopGoodtype, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "微商城多店商品分类添加成功";
		try{
			HttpSession session = ContextHolderUtils.getSession();
			Client client = ClientManager.getInstance().getClient(session.getId());
			MshopStoreEntity store= mshopStoreService.findUniqueByProperty(MshopStoreEntity.class, "idUser", client.getUser().getId());
			mshopGoodtype.setStore(store);
			mshopGoodtype.setId_store(store.getId());
			mshopGoodtypeService.save(mshopGoodtype);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城多店商品分类添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新微商城多店商品分类
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(MshopGoodtypeEntity mshopGoodtype, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "微商城多店商品分类更新成功";
		MshopGoodtypeEntity t = mshopGoodtypeService.get(MshopGoodtypeEntity.class, mshopGoodtype.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(mshopGoodtype, t);
			mshopGoodtypeService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "微商城多店商品分类更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 微商城多店商品分类新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(MshopGoodtypeEntity mshopGoodtype, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(mshopGoodtype.getId())) {
			mshopGoodtype = mshopGoodtypeService.getEntity(MshopGoodtypeEntity.class, mshopGoodtype.getId());
			req.setAttribute("mshopGoodtypePage", mshopGoodtype);
		}
		return new ModelAndView("weixin/mshop/goodtype/mshopGoodtype-add");
	}
	/**
	 * 微商城多店商品分类编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(MshopGoodtypeEntity mshopGoodtype, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(mshopGoodtype.getId())) {
			mshopGoodtype = mshopGoodtypeService.getEntity(MshopGoodtypeEntity.class, mshopGoodtype.getId());
			req.setAttribute("mshopGoodtypePage", mshopGoodtype);
		}
		return new ModelAndView("weixin/mshop/goodtype/mshopGoodtype-update");
	}
	

	
	/**
	 * 导出excel
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXls")
	public void exportXls(MshopGoodtypeEntity mshopGoodtype,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微商城多店商品分类";
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
			CriteriaQuery cq = new CriteriaQuery(MshopGoodtypeEntity.class, dataGrid);
			org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopGoodtype, request.getParameterMap());
			
			List<MshopGoodtypeEntity> mshopGoodtypes = this.mshopGoodtypeService.getListByCriteriaQuery(cq,false);
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微商城多店商品分类列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), MshopGoodtypeEntity.class, mshopGoodtypes);
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

}
