package weixin.mshop.store.controller;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.hibernate.Criteria;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.common.UploadFile;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.BrowserUtils;
import org.jeecgframework.core.util.ContextHolderUtils;
import org.jeecgframework.core.util.MyClassLoader;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.jeecgframework.web.system.manager.ClientManager;
import org.jeecgframework.web.system.pojo.base.Client;
import org.jeecgframework.web.system.pojo.base.TSDocument;
import org.jeecgframework.web.system.pojo.base.TSType;
import org.jeecgframework.web.system.pojo.base.TSTypegroup;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.SystemService;
import org.jeecgframework.web.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.mshop.evaluate.entity.MshopEvaluateEntity;
import weixin.mshop.order.entity.MshopOrderEntity;
import weixin.mshop.store.entity.MshopStoreEntity;
import weixin.mshop.store.service.MshopStoreServiceI;
import weixin.util.DateUtils;



/**   
 * @Title: Controller
 * @Description: 微商城多店版店铺
 * @author onlineGenerator
 * @date 2015-10-11 18:07:13
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/mshopStoreController")
public class MshopStoreController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(MshopStoreController.class);

	@Autowired
	private MshopStoreServiceI mshopStoreService;
	@Autowired
	private SystemService systemService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	
	private String message;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	/**
	 * 微商城多店版店铺列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "mshopStore")
	public ModelAndView mshopStore(HttpServletRequest request) {
		return new ModelAndView("weixin/mshop/store/mshopStoreList");
	}
	
	/**
	 * 商户后台：店铺列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "mshopStoreList")
	public ModelAndView mshopStoreList(HttpServletRequest request) {
		return new ModelAndView("weixin/mshop/store/mshopStoreList-shop");
	}
	
	/*
	 * 商户后台：列表数据
	 */
	@RequestMapping(params = "datagridShop")
	public void datagridShop(MshopStoreEntity mshopStore,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(MshopStoreEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopStore, request.getParameterMap());
		try{
			HttpSession session = ContextHolderUtils.getSession();
			Client client = ClientManager.getInstance().getClient(session.getId());
			//MshopStoreEntity store= (MshopStoreEntity) request.getSession().getAttribute("store");
			MshopStoreEntity store= mshopStoreService.findUniqueByProperty(MshopStoreEntity.class, "idUser", client.getUser().getId());
		//自定义追加查询条件
			cq.eq("id", store.getId());
			cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.mshopStoreService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
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
	public void datagrid(MshopStoreEntity mshopStore,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		dataGrid.setSort("createDate");
		dataGrid.setOrder(SortDirection.desc);
		CriteriaQuery cq = new CriteriaQuery(MshopStoreEntity.class, dataGrid);
		//cq.getDetachedCriteria().setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopStore, request.getParameterMap());
		try{
			cq.notEq("status", MshopStoreEntity.STORE_STATE_DELETE);
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.mshopStoreService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}
	
	

	/**
	 * 删除微商城多店版店铺
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(MshopStoreEntity mshopStore, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		try{
			mshopStoreService.deleteStore(mshopStore);
			message = "店铺删除成功";
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "店铺删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	
	/**
	 * 添加或更新微商城多店版店铺
	 * 
	 * @param user
	 * @param req
	 * @return
	 */

	@RequestMapping(params = "doSaveOrUpdate")
	@ResponseBody
	public AjaxJson doSaveOrUpdate(HttpServletRequest req,MshopStoreEntity mshopStore) {
		AjaxJson j = new AjaxJson();
		//String password = oConvertUtils.getString(req.getParameter("password"));
		if(mshopStore.getStartTime().after(mshopStore.getEndTime())){
			message = "开始时间必须大于结束时间";
			j.setMsg(message);
			return j;
		}
		//更新
		if (StringUtil.isNotEmpty(mshopStore.getId())) {
			mshopStoreService.updateStore(mshopStore);
			message = "更新成功";
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		}else{//添加
			TSUser users = systemService.findUniqueByProperty(TSUser.class, "userName",mshopStore.getUsername());
			if (users != null) {
				message = "已经存在";
			}else{
				mshopStoreService.saveStore(mshopStore);
				message =  "添加成功";
				systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
			}
		}
		j.setMsg(message);
		return j;
	}
	
	
	
	
	/**
	 * 暂停营业或者恢复营业
	
	 * 
	 * @author 
	 */
	@RequestMapping(params = "lockOrRecover")
	public ModelAndView lockOrRecover(HttpServletRequest request,String funname,String id) {
		mshopStoreService.lockOrRecover(funname, id);
		message="doLock".equals(funname)?"暂停营业成功":"恢复营业成功";
		systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		return new ModelAndView("weixin/mshop/store/mshopStoreList");
	}

	
	/**
	 * 设为推荐店铺或者取消推荐
	
	 * 
	 * @author 
	 */
	@RequestMapping(params = "doRecommendOrCancel")
	public ModelAndView doRecommendOrCancel(HttpServletRequest request,String funname,String id) {
		mshopStoreService.recommendOrCancel(funname, id);
		message="doRecommend".equals(funname)?"推荐店铺成功":"取消推荐成功";
		systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		return new ModelAndView("weixin/mshop/store/mshopStoreList");
	}
	

	/**
	 * 微商城多店版店铺新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAddOrUpdate")
	public ModelAndView goAddOrUpdate(MshopStoreEntity mshopStore, HttpServletRequest req,String funname) {
		if (StringUtil.isNotEmpty(mshopStore.getId())) {
			mshopStore = mshopStoreService.getEntity(MshopStoreEntity.class, mshopStore.getId());
			req.setAttribute("mshopStorePage", mshopStore);
		}
		//String funname=(String) req.getAttribute("funname");
		req.setAttribute("funname", funname);
		return new ModelAndView("weixin/mshop/store/mshopStore");
	}
	
	@RequestMapping(params = "goAddOrUpdateShop")
	public ModelAndView goAddOrUpdateShop(MshopStoreEntity mshopStore, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(mshopStore.getId())) {
			mshopStore = mshopStoreService.getEntity(MshopStoreEntity.class, mshopStore.getId());
			req.setAttribute("mshopStorePage", mshopStore);
		}
		return new ModelAndView("weixin/mshop/store/mshopStore-shop");
	}
	
	/**
	 * 查看订单详情
	 * @param mshopStore
	 * @param req
	 * @return
	 */
	@RequestMapping(params = "goOrderView")
	public ModelAndView goOrderView(MshopStoreEntity mshopStore, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(mshopStore.getId())) {
			mshopStore = mshopStoreService.getEntity(MshopStoreEntity.class, mshopStore.getId());
			req.setAttribute("mshopStorePage", mshopStore);
		}
		System.out.println("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM1");
		return new ModelAndView("weixin/mshop/store/mshopStore-view");
	}
	
	/**
	 * 查看订单详情
	 * @param mshopStore
	 * @param req
	 * @return
	 */
	@RequestMapping(params = "goEvaluationView")
	public ModelAndView goEvaluationView(MshopStoreEntity mshopStore, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(mshopStore.getId())) {
			mshopStore = mshopStoreService.getEntity(MshopStoreEntity.class, mshopStore.getId());
			req.setAttribute("mshopStorePage", mshopStore);
		}
		return new ModelAndView("weixin/mshop/store/mshopStoreEvaluation-view");
	}
	
	
	/**
	 * 加载明细列表（一个店铺的订单）
	 * 
	 * @return
	 */
	@RequestMapping(params = "orderList")
	public ModelAndView orderList(HttpServletRequest req) {
		//===================================================================================
		//获取参数
		Object id0 = req.getAttribute("id");
		//===================================================================================
		//查询
	    String hql0 = "from MshopOrderEntity where 1 = 1 AND id_store = ? ";
	    try{
	    	List<MshopOrderEntity> orderList = systemService.findHql(hql0,id0);
			req.setAttribute("orderList", orderList);
		}catch(Exception e){
			logger.info(e.getMessage());
		}
		return new ModelAndView("weixin/mshop/store/mshopOrder-list");
	}
	
	
	/**
	 * 加载明细列表（一个店铺的订单）
	 * 
	 * @return
	 */
	@RequestMapping(params = "evaluationList")
	public ModelAndView evaluationList(MshopStoreEntity mshopStore, HttpServletRequest req) {
	
		//===================================================================================
		//获取参数
		Object id0 = mshopStore.getId();
		//===================================================================================
		//查询
	    String hql0 = "from MshopEvaluateEntity where 1 = 1 AND id_store = ? ";
	    try{
	    	List<MshopEvaluateEntity> evaluationList = systemService.findHql(hql0,id0);
			req.setAttribute("evaluationList", evaluationList);
		}catch(Exception e){
			logger.info(e.getMessage());
		}
		return new ModelAndView("weixin/mshop/store/mshopEvaluation-list");
	}
	
	/**
	 * 导出excel
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXls")
	public void exportXls(MshopStoreEntity mshopStore,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微商城多店版店铺";
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
			CriteriaQuery cq = new CriteriaQuery(MshopStoreEntity.class, dataGrid);
			org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopStore, request.getParameterMap());
			
			List<MshopStoreEntity> mshopStores = this.mshopStoreService.getListByCriteriaQuery(cq,false);
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微商城多店版店铺列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), MshopStoreEntity.class, mshopStores);
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
	 * 将前台传递过来的日期格式的字符串，自动转化为Date类型
	 * 
	 * @param binder
	 */
	@InitBinder
	public void initBinder(ServletRequestDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"hh:mm:ss");
		//创建  CustomDateEditor 对象  
		  CustomDateEditor editor = new CustomDateEditor(dateFormat, true);  
		binder.registerCustomEditor(Date.class, editor);
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
}
