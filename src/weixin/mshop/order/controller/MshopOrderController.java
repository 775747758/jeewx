package weixin.mshop.order.controller;
import weixin.mshop.goods.entity.MshopGoodsEntity;
import weixin.mshop.order.entity.MshopOrderEntity;
import weixin.mshop.order.service.MshopOrderServiceI;
import weixin.mshop.ordergoods.entity.MshopOrdergoodsEntity;
import weixin.mshop.store.entity.MshopStoreEntity;
import weixin.mshop.store.service.MshopStoreServiceI;

import java.util.List;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
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
import org.jeecgframework.core.util.ContextHolderUtils;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.jeecgframework.web.system.manager.ClientManager;
import org.jeecgframework.web.system.pojo.base.Client;
import org.jeecgframework.web.system.pojo.base.TSDepart;
import org.jeecgframework.web.system.service.SystemService;
import org.jeewx.api.core.exception.WexinReqException;
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
 * @Description: 多店版订单表
 * @author onlineGenerator
 * @date 2015-11-19 19:43:32
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/mshopOrderController")
public class MshopOrderController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(MshopOrderController.class);

	@Autowired
	private MshopOrderServiceI mshopOrderService;
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
	 * 多店版订单表列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "mshopOrder")
	public ModelAndView mshopOrder(HttpServletRequest request) {
		return new ModelAndView("weixin/mshop/order/mshopOrderList");
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
	public void datagrid(MshopOrderEntity mshopOrder,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(MshopOrderEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopOrder, request.getParameterMap());
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.mshopOrderService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}
	
	/**
	 * 商户后台：订单列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "mshopOrderShop")
	public ModelAndView mshopOrderShop(HttpServletRequest request) {
		return new ModelAndView("weixin/mshop/order/mshopOrderList-shop");
	}
	
	/**
	 * 商户后台：订单列表
	 */
	@RequestMapping(params = "datagridShop")
	public void datagridShop(MshopOrderEntity mshopOrder,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		dataGrid.setSort("createDate");
		dataGrid.setOrder(SortDirection.desc);
		CriteriaQuery cq = new CriteriaQuery(MshopOrderEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopOrder, request.getParameterMap());
		try{
			HttpSession session = ContextHolderUtils.getSession();
			Client client = ClientManager.getInstance().getClient(session.getId());
			//MshopStoreEntity store= (MshopStoreEntity) request.getSession().getAttribute("store");
			MshopStoreEntity store= mshopStoreService.findUniqueByProperty(MshopStoreEntity.class, "idUser", client.getUser().getId());
			cq.eq("idStore", store.getId());
			
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.mshopOrderService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}
	
//	/**
//	 * 商户后台：确认发货（跳转）
//	 * 
//	 * @return
//	 */
//	@RequestMapping(params = "confirmSend")
//	public ModelAndView confirmSend(MshopOrderEntity mshopOrder, HttpServletRequest req) {
//		if (StringUtil.isNotEmpty(mshopOrder.getId())) {
//			mshopOrder = mshopOrderService.getEntity(MshopOrderEntity.class, mshopOrder.getId());
//			req.setAttribute("mshopOrderPage", mshopOrder);
//		}
//		return new ModelAndView("weixin/mshop/order/mshopOrder-update");
//	}
	
	
	/**
	 * 商户后台：订单商品
	 * 
	 * @return
	 */
	@RequestMapping(params = "orderGoodsList")
	public ModelAndView orderGoodsList(HttpServletRequest req) {
		String id=req.getParameter("id");
		//===================================================================================
		//获取参数
		//Object id0 = mshopOrder.getId();
		//===================================================================================
		//查询
	    String hql0 = "from MshopOrdergoodsEntity where 1 = 1 AND id_order = ? ";
	    try{
	    	List<MshopOrdergoodsEntity> orderGoodsListtt = systemService.findHql(hql0,id);
			req.setAttribute("orderGoodsListtt", orderGoodsListtt);
		}catch(Exception e){
			logger.info(e.getMessage());
		}
		return new ModelAndView("weixin/mshop/order/mshopOrderGoods-list");
	}
	
	/**
	 * 商户后台：确认发货
	 * 
	 * @param ids
	 * @return
	 * @throws WexinReqException 
	 */
	@RequestMapping(params = "confirmSend")
	public ModelAndView confirmSend(String orderId, HttpServletRequest request) throws WexinReqException {
		AjaxJson j = new AjaxJson();
		MshopOrderEntity mshopOrder=mshopOrderService.get(MshopOrderEntity.class, orderId);
		if(MshopOrderEntity.ORDER_STATE_UNSEND.equals(mshopOrder.getStatus())&&MshopOrderEntity.DISTRIBUTION_MODE_NORMAL.equals(mshopOrder.getDistributionMode())){
//			if(StringUtils.isNotBlank(mshopOrder.getExpressName())&&StringUtils.isNotBlank(mshopOrder.getExpressNum())){
//				mshopOrderService.confirmSend(mshopOrder);
//				message = "已经确认发货";
//			}else{
//				message = "请填写快递名称和运单号！";
//			}
			mshopOrderService.confirmSend(mshopOrder);
			
		}
		return new ModelAndView("weixin/mshop/order/mshopOrderList-shop");
	}
	
	/**
	 * 商户后台：确认发货
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "confirmToStore")
	public ModelAndView confirmToStore(String orderId, HttpServletRequest request) {
		MshopOrderEntity mshopOrder=mshopOrderService.get(MshopOrderEntity.class, orderId);
		if(MshopOrderEntity.ORDER_STATE_UNSEND.equals(mshopOrder.getStatus())&&MshopOrderEntity.DISTRIBUTION_MODE_TO.equals(mshopOrder.getDistributionMode())){
			mshopOrderService.confirmToStore(mshopOrder);
		}
		return new ModelAndView("weixin/mshop/order/mshopOrderList-shop");
	}
	
	
	/**
	 * 跳转到查看订单详情
	 * 
	 * @return
	 */
	@RequestMapping(params = "goView")
	public ModelAndView goView(MshopOrderEntity mshopOrder, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(mshopOrder.getId())) {
			mshopOrder = mshopOrderService.getEntity(MshopOrderEntity.class, mshopOrder.getId());
			req.setAttribute("mshopOrderPage", mshopOrder);
		}
		return new ModelAndView("weixin/mshop/order/orderView");
	}
	

	/**
	 * 删除多店版订单表
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(MshopOrderEntity mshopOrder, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		mshopOrder = systemService.getEntity(MshopOrderEntity.class, mshopOrder.getId());
		message = "多店版订单表删除成功";
		try{
			mshopOrderService.delete(mshopOrder);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "多店版订单表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除多店版订单表
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "多店版订单表删除成功";
		try{
			for(String id:ids.split(",")){
				MshopOrderEntity mshopOrder = systemService.getEntity(MshopOrderEntity.class, 
				id
				);
				mshopOrderService.delete(mshopOrder);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "多店版订单表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加多店版订单表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(MshopOrderEntity mshopOrder, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "多店版订单表添加成功";
		try{
			mshopOrderService.save(mshopOrder);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "多店版订单表添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	

	/**
	 * 多店版订单表新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(MshopOrderEntity mshopOrder, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(mshopOrder.getId())) {
			mshopOrder = mshopOrderService.getEntity(MshopOrderEntity.class, mshopOrder.getId());
			req.setAttribute("mshopOrderPage", mshopOrder);
		}
		return new ModelAndView("weixin/mshop/order/mshopOrder-add");
	}
	
	
	/**
	 * 导入功能跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "upload")
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/mshop/order/mshopOrderUpload");
	}
	
	/**
	 * 导出excel
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXls")
	public void exportXls(MshopOrderEntity mshopOrder,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "多店版订单表";
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
			CriteriaQuery cq = new CriteriaQuery(MshopOrderEntity.class, dataGrid);
			org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopOrder, request.getParameterMap());
			
			List<MshopOrderEntity> mshopOrders = this.mshopOrderService.getListByCriteriaQuery(cq,false);
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("多店版订单表列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), MshopOrderEntity.class, mshopOrders);
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
	public void exportXlsByT(MshopOrderEntity mshopOrder,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "多店版订单表";
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
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("多店版订单表列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), MshopOrderEntity.class, null);
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
				List<MshopOrderEntity> listMshopOrderEntitys = 
					(List<MshopOrderEntity>)ExcelImportUtil.importExcelByIs(file.getInputStream(),MshopOrderEntity.class,params);
				for (MshopOrderEntity mshopOrder : listMshopOrderEntitys) {
					mshopOrderService.save(mshopOrder);
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
