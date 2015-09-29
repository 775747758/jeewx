package weixin.shop.goods.controller;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.common.UploadFile;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.BrowserUtils;
import org.jeecgframework.core.util.ExceptionUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.MyClassLoader;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSDocument;
import org.jeecgframework.web.system.pojo.base.TSType;
import org.jeecgframework.web.system.pojo.base.TSTypegroup;
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

import weixin.cms.entity.CmsArticleEntity;
import weixin.shop.goods.entity.ShopGoodsEntity;
import weixin.shop.goods.service.ShopGoodsServiceI;
import weixin.util.DateUtils;



/**   
 * @Title: Controller
 * @Description: 微信商城商品信息
 * @author onlineGenerator
 * @date 2015-09-21 16:55:26
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/shopGoodsController")
public class ShopGoodsController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(ShopGoodsController.class);

	@Autowired
	private ShopGoodsServiceI shopGoodsService;
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
	 * 微信商城商品信息列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "shopGoods")
	public ModelAndView shopGoods(HttpServletRequest request) {
		return new ModelAndView("weixin/shop/goods/shopGoodsList");
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
	public void datagrid(ShopGoodsEntity shopGoods,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(ShopGoodsEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, shopGoods, request.getParameterMap());
		try{
			cq.notEq("statement", ShopGoodsEntity.GOODS_STATE_DELETE);//不查找已经删除的商品
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.shopGoodsService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除微信商城商品信息
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(ShopGoodsEntity shopGoods, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		shopGoods = systemService.getEntity(ShopGoodsEntity.class, shopGoods.getId());
		shopGoods.setStatement(ShopGoodsEntity.GOODS_STATE_DELETE);//这里的删除只是修改其状态
		message = "微信商城商品信息删除成功";
		try{
			shopGoodsService.doUpdateSql(shopGoods);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微信商城商品信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 上架或者下架微信商城商品信息
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDownOrShelve")
	public ModelAndView doDownOrShelve(HttpServletRequest request,String funname,String id) {
		ShopGoodsEntity shopGoods = systemService.getEntity(ShopGoodsEntity.class, id);
		//根据funname来确定是上架还是下架
		shopGoods.setStatement("doDown".equals(funname)?ShopGoodsEntity.GOODS_STATE_DOWN:ShopGoodsEntity.GOODS_STATE_NORMAL);
		if("doDown".equals(funname)){
			shopGoods.setRemoveTime(new Date());
		}else if("doShelve".equals(funname)){
			shopGoods.setShelveTime(new Date());
		}
		try{
			message="doDown".equals(funname)?"下架成功":"上架成功";
			shopGoodsService.doUpdateSql(shopGoods);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			throw new BusinessException(e.getMessage());
		}
		return new ModelAndView("weixin/shop/goods/shopGoodsList");
	}
	
	/**
	 * 批量删除微信商城商品信息
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "微信商城商品信息删除成功";
		try{
			for(String id:ids.split(",")){
				ShopGoodsEntity shopGoods = systemService.getEntity(ShopGoodsEntity.class, 
				id
				);
				shopGoodsService.delete(shopGoods);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "微信商城商品信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加微信商城商品信息
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAddOrUpdate")
	@ResponseBody
	public AjaxJson doAddOrUpdate(ShopGoodsEntity shopGoods, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		ShopGoodsEntity t = shopGoodsService.get(ShopGoodsEntity.class, shopGoods.getId());
		//执行添加操作
		if(t==null){
			shopGoods.setStatement(ShopGoodsEntity.GOODS_STATE_NORMAL);//默认商品添加成功就上架了
			shopGoods.setShelveTime(new Date());
			message = "微信商城商品信息添加成功";
			try{
				shopGoodsService.save(shopGoods);
				systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
			}catch(Exception e){
				e.printStackTrace();
				message = "微信商城商品信息添加失败";
				throw new BusinessException(e.getMessage());
			}
			j.setMsg(message);
		}else{
			message = "微信商城商品信息更新成功";
			try {
				MyBeanUtils.copyBeanNotNull2Bean(shopGoods, t);
				shopGoodsService.saveOrUpdate(t);
				systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				message = "微信商城商品信息更新失败";
				throw new BusinessException(e.getMessage());
			}
			j.setMsg(message);
		}
		return j;
	}
	/**
	 * 跳转添加或更新或查看
	 * 
	 * @return
	 */
	@RequestMapping(params = "addorupdate")
	public ModelAndView addorupdate(ShopGoodsEntity shopGoods, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(shopGoods.getId())) {
			shopGoods = shopGoodsService.getEntity(ShopGoodsEntity.class, shopGoods.getId());
			req.setAttribute("shopGoodsPage", shopGoods);
		}
		req.setAttribute("accountid", ResourceUtil.getWeiXinAccountId());
		return new ModelAndView("weixin/shop/goods/test");
	}
	
	 /**
     * 保存文件信息
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(params = "upload", method = RequestMethod.POST)
    @ResponseBody
    public  AjaxJson upload(MultipartHttpServletRequest request, HttpServletResponse response) {
    	AjaxJson j = new AjaxJson();
		Map<String, Object> attributes = new HashMap<String, Object>();
		TSTypegroup tsTypegroup=systemService.getTypeGroup("fieltype","文档分类");
		TSType tsType = systemService.getType("files","附件", tsTypegroup);
		String fileKey = oConvertUtils.getString(request.getParameter("fileKey"));// 文件ID
		String documentTitle = oConvertUtils.getString(request.getParameter("documentTitle"));// 文件标题
		TSDocument document = new TSDocument();
		if (StringUtil.isNotEmpty(fileKey)) {
			document.setId(fileKey);
			document = systemService.getEntity(TSDocument.class, fileKey);
			document.setDocumentTitle(documentTitle);

		}
		document.setSubclassname(MyClassLoader.getPackPath(document));
		document.setCreatedate(DateUtils.gettimestamp());
		document.setTSType(tsType);
		UploadFile uploadFile = new UploadFile(request, document);
		uploadFile.setCusPath("files");
		uploadFile.setSwfpath("swfpath");
		document = systemService.uploadFile(uploadFile);
		attributes.put("url", document.getRealpath());
		attributes.put("fileKey", document.getId());
		attributes.put("name", document.getAttachmenttitle());
		attributes.put("viewhref", "commonController.do?openViewFile&fileid=" + document.getId());
		attributes.put("delurl", "commonController.do?delObjFile&fileKey=" + document.getId());
		j.setMsg("文件添加成功");
		j.setAttributes(attributes);
		return j;
    }
	
	/**
	 * 导出excel
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXls")
	public void exportXls(ShopGoodsEntity shopGoods,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微信商城商品信息";
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
			CriteriaQuery cq = new CriteriaQuery(ShopGoodsEntity.class, dataGrid);
			org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, shopGoods, request.getParameterMap());
			
			List<ShopGoodsEntity> shopGoodss = this.shopGoodsService.getListByCriteriaQuery(cq,false);
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微信商城商品信息列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), ShopGoodsEntity.class, shopGoodss);
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
	public void exportXlsByT(ShopGoodsEntity shopGoods,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微信商城商品信息";
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
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微信商城商品信息列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), ShopGoodsEntity.class, null);
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
				List<ShopGoodsEntity> listShopGoodsEntitys = 
					(List<ShopGoodsEntity>)ExcelImportUtil.importExcelByIs(file.getInputStream(),ShopGoodsEntity.class,params);
				for (ShopGoodsEntity shopGoods : listShopGoodsEntitys) {
					shopGoodsService.save(shopGoods);
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
