package weixin.shop.advertisement.controller;
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
import weixin.shop.advertisement.entity.ShopAdvertisementEntity;
import weixin.shop.advertisement.service.ShopAdvertisementServiceI;



/**   
 * @Title: Controller
 * @Description: 微商城广告
 * @author onlineGenerator
 * @date 2015-09-25 12:07:21
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/shopAdvertisementController")
public class ShopAdvertisementController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(ShopAdvertisementController.class);

	@Autowired
	private ShopAdvertisementServiceI shopAdvertisementService;
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
	 * 微商城广告列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "shopAdvertisement")
	public ModelAndView shopAdvertisement(HttpServletRequest request) {
		return new ModelAndView("weixin/shop/advertisement/shopAdvertisementList");
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
	public void datagrid(ShopAdvertisementEntity shopAdvertisement,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(ShopAdvertisementEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, shopAdvertisement, request.getParameterMap());
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.shopAdvertisementService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除微商城广告
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(ShopAdvertisementEntity shopAdvertisement, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		shopAdvertisement = systemService.getEntity(ShopAdvertisementEntity.class, shopAdvertisement.getId());
		message = "微商城广告删除成功";
		try{
			shopAdvertisementService.delete(shopAdvertisement);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城广告删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除微商城广告
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "微商城广告删除成功";
		try{
			for(String id:ids.split(",")){
				ShopAdvertisementEntity shopAdvertisement = systemService.getEntity(ShopAdvertisementEntity.class, 
				id
				);
				shopAdvertisementService.delete(shopAdvertisement);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城广告删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加微商城广告
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(ShopAdvertisementEntity shopAdvertisement, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		try{
			//为了方便根据微信公众平台的原始ID取出广告
			WeixinAccountEntity account=weixinAccountService.findLoginWeixinAccount();
			shopAdvertisement.setWeixinAccountid(account.getWeixin_accountid());
			//大图片广告只能添加一个
			if(ShopAdvertisementEntity.AD_TYPE_BIG.equals(shopAdvertisement.getType())){
				Long count = shopAdvertisementService.getCountForJdbc("SELECT COUNT(1) FROM weixin_shop_ad WHERE  accountid='"+account.getId()+"' and type="+ShopAdvertisementEntity.AD_TYPE_BIG);
				if(count>0){
					message = "微商城广告添加失败:大图片广告最多只能有一个！";
				}else{
					message = "微商城广告添加成功";
					shopAdvertisementService.save(shopAdvertisement);
				}
			}
			//小图片广告最多4个
			if(ShopAdvertisementEntity.AD_TYPE_SMALL.equals(shopAdvertisement.getType())){
				Long count = shopAdvertisementService.getCountForJdbc("SELECT COUNT(1) FROM weixin_shop_ad WHERE accountid='"+account.getId()+"' and type="+ShopAdvertisementEntity.AD_TYPE_SMALL);
				if(count>3){
					message = "微商城广告添加失败:小图片广告最多有4个！";
				}else{
					message = "微商城广告添加成功";
					shopAdvertisementService.save(shopAdvertisement);
				}
			}
			
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城广告添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新微商城广告
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(ShopAdvertisementEntity shopAdvertisement, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "微商城广告更新成功";
		ShopAdvertisementEntity t = shopAdvertisementService.get(ShopAdvertisementEntity.class, shopAdvertisement.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(shopAdvertisement, t);
			shopAdvertisementService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "微商城广告更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 微商城广告新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(ShopAdvertisementEntity shopAdvertisement, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(shopAdvertisement.getId())) {
			shopAdvertisement = shopAdvertisementService.getEntity(ShopAdvertisementEntity.class, shopAdvertisement.getId());
			req.setAttribute("shopAdvertisementPage", shopAdvertisement);
		}
		return new ModelAndView("weixin/shop/advertisement/shopAdvertisement-add");
	}
	/**
	 * 微商城广告编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(ShopAdvertisementEntity shopAdvertisement, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(shopAdvertisement.getId())) {
			shopAdvertisement = shopAdvertisementService.getEntity(ShopAdvertisementEntity.class, shopAdvertisement.getId());
			req.setAttribute("shopAdvertisementPage", shopAdvertisement);
		}
		return new ModelAndView("weixin/shop/advertisement/shopAdvertisement-update");
	}
	
	/**
	 * 导入功能跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "upload")
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/shop/advertisement/shopAdvertisementUpload");
	}
	
	/**
	 * 导出excel
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXls")
	public void exportXls(ShopAdvertisementEntity shopAdvertisement,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微商城广告";
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
			CriteriaQuery cq = new CriteriaQuery(ShopAdvertisementEntity.class, dataGrid);
			org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, shopAdvertisement, request.getParameterMap());
			
			List<ShopAdvertisementEntity> shopAdvertisements = this.shopAdvertisementService.getListByCriteriaQuery(cq,false);
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微商城广告列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), ShopAdvertisementEntity.class, shopAdvertisements);
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
	public void exportXlsByT(ShopAdvertisementEntity shopAdvertisement,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微商城广告";
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
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微商城广告列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), ShopAdvertisementEntity.class, null);
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
				List<ShopAdvertisementEntity> listShopAdvertisementEntitys = 
					(List<ShopAdvertisementEntity>)ExcelImportUtil.importExcelByIs(file.getInputStream(),ShopAdvertisementEntity.class,params);
				for (ShopAdvertisementEntity shopAdvertisement : listShopAdvertisementEntitys) {
					shopAdvertisementService.save(shopAdvertisement);
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
