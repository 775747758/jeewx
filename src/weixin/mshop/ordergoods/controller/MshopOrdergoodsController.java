package weixin.mshop.ordergoods.controller;
import weixin.mshop.ordergoods.entity.MshopOrdergoodsEntity;
import weixin.mshop.ordergoods.service.MshopOrdergoodsServiceI;
import java.util.List;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
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

import java.io.OutputStream;
import org.jeecgframework.core.util.BrowserUtils;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.jeecgframework.core.util.ResourceUtil;
import java.io.IOException;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import java.util.Map;
import org.jeecgframework.core.util.ExceptionUtil;



/**   
 * @Title: Controller
 * @Description: 多店订单商品表
 * @author onlineGenerator
 * @date 2015-11-19 19:43:02
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/mshopOrdergoodsController")
public class MshopOrdergoodsController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(MshopOrdergoodsController.class);

	@Autowired
	private MshopOrdergoodsServiceI mshopOrdergoodsService;
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
	 * 多店订单商品表列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "mshopOrdergoods")
	public ModelAndView mshopOrdergoods(HttpServletRequest request) {
		return new ModelAndView("weixin/mshop/ordergoods/mshopOrdergoodsList");
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
	public void datagrid(MshopOrdergoodsEntity mshopOrdergoods,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(MshopOrdergoodsEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopOrdergoods, request.getParameterMap());
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.mshopOrdergoodsService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除多店订单商品表
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(MshopOrdergoodsEntity mshopOrdergoods, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		mshopOrdergoods = systemService.getEntity(MshopOrdergoodsEntity.class, mshopOrdergoods.getId());
		message = "多店订单商品表删除成功";
		try{
			mshopOrdergoodsService.delete(mshopOrdergoods);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "多店订单商品表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除多店订单商品表
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "多店订单商品表删除成功";
		try{
			for(String id:ids.split(",")){
				MshopOrdergoodsEntity mshopOrdergoods = systemService.getEntity(MshopOrdergoodsEntity.class, 
				id
				);
				mshopOrdergoodsService.delete(mshopOrdergoods);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "多店订单商品表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加多店订单商品表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(MshopOrdergoodsEntity mshopOrdergoods, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "多店订单商品表添加成功";
		try{
			mshopOrdergoodsService.save(mshopOrdergoods);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "多店订单商品表添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新多店订单商品表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(MshopOrdergoodsEntity mshopOrdergoods, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "多店订单商品表更新成功";
		MshopOrdergoodsEntity t = mshopOrdergoodsService.get(MshopOrdergoodsEntity.class, mshopOrdergoods.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(mshopOrdergoods, t);
			mshopOrdergoodsService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "多店订单商品表更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 多店订单商品表新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(MshopOrdergoodsEntity mshopOrdergoods, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(mshopOrdergoods.getId())) {
			mshopOrdergoods = mshopOrdergoodsService.getEntity(MshopOrdergoodsEntity.class, mshopOrdergoods.getId());
			req.setAttribute("mshopOrdergoodsPage", mshopOrdergoods);
		}
		return new ModelAndView("weixin/mshop/ordergoods/mshopOrdergoods-add");
	}
	/**
	 * 多店订单商品表编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(MshopOrdergoodsEntity mshopOrdergoods, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(mshopOrdergoods.getId())) {
			mshopOrdergoods = mshopOrdergoodsService.getEntity(MshopOrdergoodsEntity.class, mshopOrdergoods.getId());
			req.setAttribute("mshopOrdergoodsPage", mshopOrdergoods);
		}
		return new ModelAndView("weixin/mshop/ordergoods/mshopOrdergoods-update");
	}
	
	/**
	 * 导入功能跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "upload")
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/mshop/ordergoods/mshopOrdergoodsUpload");
	}
	
	/**
	 * 导出excel
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXls")
	public void exportXls(MshopOrdergoodsEntity mshopOrdergoods,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "多店订单商品表";
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
			CriteriaQuery cq = new CriteriaQuery(MshopOrdergoodsEntity.class, dataGrid);
			org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopOrdergoods, request.getParameterMap());
			
			List<MshopOrdergoodsEntity> mshopOrdergoodss = this.mshopOrdergoodsService.getListByCriteriaQuery(cq,false);
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("多店订单商品表列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), MshopOrdergoodsEntity.class, mshopOrdergoodss);
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
	public void exportXlsByT(MshopOrdergoodsEntity mshopOrdergoods,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "多店订单商品表";
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
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("多店订单商品表列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), MshopOrdergoodsEntity.class, null);
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
				List<MshopOrdergoodsEntity> listMshopOrdergoodsEntitys = 
					(List<MshopOrdergoodsEntity>)ExcelImportUtil.importExcelByIs(file.getInputStream(),MshopOrdergoodsEntity.class,params);
				for (MshopOrdergoodsEntity mshopOrdergoods : listMshopOrdergoodsEntitys) {
					mshopOrdergoodsService.save(mshopOrdergoods);
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
