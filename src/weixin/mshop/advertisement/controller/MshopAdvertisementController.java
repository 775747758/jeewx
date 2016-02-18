package weixin.mshop.advertisement.controller;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.common.UploadFile;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.MyClassLoader;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.tag.vo.datatable.SortDirection;
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

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.mshop.advertisement.entity.MshopAdvertisementEntity;
import weixin.mshop.advertisement.service.MshopAdvertisementServiceI;
import weixin.util.DateUtils;



/**   
 * @Title: Controller
 * @Description: 微商城多店版广告
 * @author onlineGenerator
 * @date 2015-10-12 18:25:49
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/mshopAdvertisementController")
public class MshopAdvertisementController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(MshopAdvertisementController.class);

	@Autowired
	private MshopAdvertisementServiceI mshopAdvertisementService;
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
	 * 微商城多店版广告列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "mshopAdvertisement")
	public ModelAndView mshopAdvertisement(HttpServletRequest request) {
		return new ModelAndView("weixin/mshop/advertisement/mshopAdvertisementList");
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
	public void datagrid(MshopAdvertisementEntity mshopAdvertisement,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		dataGrid.setSort("createDate");
		dataGrid.setOrder(SortDirection.desc);
		CriteriaQuery cq = new CriteriaQuery(MshopAdvertisementEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, mshopAdvertisement, request.getParameterMap());
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.mshopAdvertisementService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除微商城多店版广告
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(MshopAdvertisementEntity mshopAdvertisement, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		mshopAdvertisement = systemService.getEntity(MshopAdvertisementEntity.class, mshopAdvertisement.getId());
		message = "微商城多店版广告删除成功";
		try{
			mshopAdvertisementService.delete(mshopAdvertisement);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微商城多店版广告删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	
	/**
	 * 添加微商城多店版广告
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAddOrUpdate")
	@ResponseBody
	public AjaxJson doAddOrUpdate(MshopAdvertisementEntity mshopAdvertisement, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		WeixinAccountEntity account=weixinAccountService.findLoginWeixinAccount();
		try{
			//更新
			if (StringUtil.isNotEmpty(mshopAdvertisement.getId())) {
				message = "广告更新成功";
				mshopAdvertisementService.updateEntitie(mshopAdvertisement);
			}else{//添加
				Long count = mshopAdvertisementService.getCountForJdbc("SELECT COUNT(1) FROM weixin_mshop_ad WHERE  accountid='"+account.getId()+"'");
				if(count>4){
					message = "微商城广告添加失败，最多只能有5个！";
				}else{
					message = "广告添加成功";
					mshopAdvertisement.setWeixinAccountid(account.getWeixin_accountid());
					mshopAdvertisementService.save(mshopAdvertisement);
					systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
				}
			}
			
		}catch(Exception e){
			e.printStackTrace();
			message = "广告添加或更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	

	/**
	 * 微商城多店版广告新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAddOrUpdate")
	public ModelAndView goAddOrUpdate(MshopAdvertisementEntity mshopAdvertisement, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(mshopAdvertisement.getId())) {
			mshopAdvertisement = mshopAdvertisementService.getEntity(MshopAdvertisementEntity.class, mshopAdvertisement.getId());
			req.setAttribute("mshopAdvertisementPage", mshopAdvertisement);
		}
		return new ModelAndView("weixin/mshop/advertisement/mshopAdvertisement");
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
