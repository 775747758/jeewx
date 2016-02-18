package weixin.mshop.goods.controller;
import java.io.IOException;
import java.io.OutputStream;
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
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.MyClassLoader;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.manager.ClientManager;
import org.jeecgframework.web.system.pojo.base.Client;
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
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import weixin.mshop.goods.entity.MshopGoodsEntity;
import weixin.mshop.goods.service.MshopGoodsServiceI;
import weixin.mshop.goodtype.service.MshopGoodtypeServiceI;
import weixin.mshop.store.entity.MshopStoreEntity;
import weixin.mshop.store.service.MshopStoreServiceI;
import weixin.util.DateUtils;



/**   
 * @Title: Controller
 * @Description: 微商城多店版商品表
 * @author onlineGenerator
 * @date 2015-10-14 09:30:57
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/mshopGoodsController")
public class MshopGoodsController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(MshopGoodsController.class);

	@Autowired
	private MshopGoodsServiceI mshopGoodsService;
	@Autowired
	private MshopGoodtypeServiceI mshopGoodtypeService;
	@Autowired
	private MshopStoreServiceI mshopStoreService;
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
	 * 微商城多店版商品表列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "mshopGoods")
	public ModelAndView mshopGoods(HttpServletRequest request) {
		return new ModelAndView("weixin/mshop/goods/mshopGoodsList");
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
	public void datagrid(MshopGoodsEntity mshopGoods,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(MshopGoodsEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopGoods, request.getParameterMap());
		try{
			HttpSession session = ContextHolderUtils.getSession();
			Client client = ClientManager.getInstance().getClient(session.getId());
			//MshopStoreEntity store= (MshopStoreEntity) request.getSession().getAttribute("store");
			MshopStoreEntity store= mshopStoreService.findUniqueByProperty(MshopStoreEntity.class, "idUser", client.getUser().getId());
			cq.eq("idStore", store.getId());
		//自定义追加查询条件
		}catch (Exception e) {
			
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.mshopGoodsService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	
	/**
	 * 删除微商城多店版商品表
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(MshopGoodsEntity mshopGoods, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		mshopGoods = systemService.getEntity(MshopGoodsEntity.class, mshopGoods.getId());
		message = "微商城多店版商品表删除成功";
		try{
			mshopGoodsService.delete(mshopGoods);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城多店版商品表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	
	/**
	 * 添加微商城多店版商品表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAddOrUpdate")
	@ResponseBody
	public AjaxJson doAddOrUpdate(MshopGoodsEntity mshopGoods, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		MshopGoodsEntity t = mshopGoodsService.get(MshopGoodsEntity.class, mshopGoods.getId());
		//执行添加操作
		if(t==null){
			HttpSession session = ContextHolderUtils.getSession();
			Client client = ClientManager.getInstance().getClient(session.getId());
			//MshopStoreEntity store= (MshopStoreEntity) request.getSession().getAttribute("store");
			MshopStoreEntity store= mshopStoreService.findUniqueByProperty(MshopStoreEntity.class, "idUser", client.getUser().getId());
			
			//先检查是否有商品类别
			Long count = mshopGoodtypeService.getCountForJdbc("SELECT COUNT(1) FROM wx_mshop_goodtype WHERE  id_store='"+store.getId()+"'");
			if(count>0){
				mshopGoods.setIdStore(store.getId());//从session中获取登录时放进去的店铺信息
				mshopGoods.setIsSelfsupport(MshopGoodsEntity.NOT_SELF_SUPPORT);//非自营
				mshopGoods.setStatement(MshopGoodsEntity.GOODS_STATE_NORMAL);//默认商品添加成功就上架了
				mshopGoods.setShelveTime(new Date());
				mshopGoods.setIsSpecial(MshopGoodsEntity.NOT_SPECIAL);
				mshopGoods.setIsSeckill(MshopGoodsEntity.NOT_SECKILL);
				message = "微信商城商品信息添加成功";
				try{
					mshopGoodsService.save(mshopGoods);
					systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
				}catch(Exception e){
					e.printStackTrace();
					message = "微信商城商品信息添加失败";
					throw new BusinessException(e.getMessage());
				}
				j.setMsg(message);
			}else{
				message = "您还没有添加商品分类，所以还不能添加商品！";
			}
		}else{
			message = "微信商城商品信息更新成功";
			try {
				MyBeanUtils.copyBeanNotNull2Bean(mshopGoods, t);
				mshopGoodsService.updateEntitie(t);
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
	 * 上架或者下架微信商城商品信息
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDownOrShelve")
	public ModelAndView doDownOrShelve(HttpServletRequest request,String funname,String id) {
		MshopGoodsEntity mshopGoods = systemService.getEntity(MshopGoodsEntity.class, id);
		//根据funname来确定是上架还是下架
		mshopGoods.setStatement("doDown".equals(funname)?MshopGoodsEntity.GOODS_STATE_DOWN:MshopGoodsEntity.GOODS_STATE_NORMAL);
		if("doDown".equals(funname)){
			mshopGoods.setRemoveTime(new Date());
		}else if("doShelve".equals(funname)){
			mshopGoods.setShelveTime(new Date());
		}
		try{
			message="doDown".equals(funname)?"下架成功":"上架成功";
			mshopGoodsService.updateEntitie(mshopGoods);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			throw new BusinessException(e.getMessage());
		}
		return new ModelAndView("weixin/mshop/goods/mshopGoodsList");
	}
	

	/**
	 * 微商城多店版商品表新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAddOrUpdate")
	public ModelAndView goAddOrUpdate(MshopGoodsEntity mshopGoods, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(mshopGoods.getId())) {
			mshopGoods = mshopGoodsService.getEntity(MshopGoodsEntity.class, mshopGoods.getId());
			req.setAttribute("mshopGoodsPage", mshopGoods);
		}
		HttpSession session = ContextHolderUtils.getSession();
		Client client = ClientManager.getInstance().getClient(session.getId());
		//MshopStoreEntity store= (MshopStoreEntity) request.getSession().getAttribute("store");
		MshopStoreEntity store= mshopStoreService.findUniqueByProperty(MshopStoreEntity.class, "idUser", client.getUser().getId());
		ContextHolderUtils.getRequest().setAttribute("storeId", store.getId());
		return new ModelAndView("weixin/mshop/goods/mshopGoods");
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
	public void exportXls(MshopGoodsEntity mshopGoods,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微商城多店版商品表";
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
			CriteriaQuery cq = new CriteriaQuery(MshopGoodsEntity.class, dataGrid);
			org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopGoods, request.getParameterMap());
			
			List<MshopGoodsEntity> mshopGoodss = this.mshopGoodsService.getListByCriteriaQuery(cq,false);
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微商城多店版商品表列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), MshopGoodsEntity.class, mshopGoodss);
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
