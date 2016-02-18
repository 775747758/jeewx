<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="mshopGoodsList" checkbox="true" fitColumns="false" title="商品列表" actionUrl="mshopGoodsController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="商品详情"  field="description"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="折扣"  field="sale"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="原价"  field="originalPrice"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="图片链接"  field="imgurl"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="所属店铺"  field="idStore"  hidden="false"  queryMode="single" dictionary="weixin_mshop_store,id,store_name" width="120"></t:dgCol>
   <t:dgCol title="是否自营"  field="isSelfsupport"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="是否秒杀"  field="isSeckill"   hidden="false" query="false" queryMode="single"  width="120"></t:dgCol>
   
   <t:dgCol title="商品名称"  field="name"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="现价"  field="realPrice"  hidden="true"  queryMode="single"  width="80"></t:dgCol>
    <t:dgCol title="状态"  field="statement" replace="正常_0,已下架_1" hidden="true" query="true" queryMode="single"  width="80"></t:dgCol>
   <t:dgCol title="所有规格"  field="allSpecs"   hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="所属类别"  field="idCategory"  hidden="true" query="true" queryMode="single" dictionary="wx_mshop_goodtype,id,name" width="120"></t:dgCol>
   <t:dgCol title="是否特价"  field="isSpecial"  replace="是_1,否_0"   hidden="true" query="true" queryMode="single"  width="50"></t:dgCol>
   
   <t:dgCol title="销售数量"  field="sellCount"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="评论数量"  field="discussCount"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="好评数量"  field="goodCount"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="差评数量"  field="badCount"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="中评数量"  field="neutralCount"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   
   <t:dgCol title="下架时间"  field="removeTime" formatter="yyyy-MM-dd" hidden="true"  queryMode="single"  width="100"></t:dgCol>
   <t:dgCol title="上架时间"  field="shelveTime" formatter="yyyy-MM-dd" hidden="true"  queryMode="single"  width="100"></t:dgCol>
   
   
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDefOpt exp="statement#eq#1" title="上架"  url="mshopGoodsController.do?doDownOrShelve&id={id}&funname='doShelve'"></t:dgDefOpt>
   <t:dgDefOpt exp="statement#eq#0" title="下架"  url="mshopGoodsController.do?doDownOrShelve&id={id}&funname='doDown'"></t:dgDefOpt>
   <t:dgDelOpt title="删除" url="mshopGoodsController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="mshopGoodsController.do?goAddOrUpdate" funname="add" width="1200" height="500"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="mshopGoodsController.do?goAddOrUpdate" funname="update" width="1200" height="500"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="mshopGoodsController.do?goAddOrUpdate" funname="detail" width="1200" height="500"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/mshop/goods/mshopGoodsList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#mshopGoodsListtb").find("input[name='removeTime']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#mshopGoodsListtb").find("input[name='shelveTime']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 </script>