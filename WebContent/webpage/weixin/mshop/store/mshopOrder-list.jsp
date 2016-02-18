<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
	$('#addTestManyBtn').linkbutton({   
	    iconCls: 'icon-add'  
	});  
	$('#delTestManyBtn').linkbutton({   
	    iconCls: 'icon-remove'  
	}); 
	$('#addTestManyBtn').bind('click', function(){   
 		 var tr =  $("#add_testMany_table_template tr").clone();
	 	 $("#add_testMany_table").append(tr);
	 	 resetTrNum('add_testMany_table');
	 	 return false;
    });  
	$('#delTestManyBtn').bind('click', function(){   
      	$("#add_testMany_table").find("input:checked").parent().parent().remove();   
        resetTrNum('add_testMany_table'); 
        return false;
    }); 
    $(document).ready(function(){
    	$(".datagrid-toolbar").parent().css("width","auto");
    	if(location.href.indexOf("load=detail")!=-1){
			$(":input").attr("disabled","true");
			$(".datagrid-toolbar").hide();
		}
		//将表格的表头固定
	    $("#testMany_table").createhftable({
	    	height:'300px',
			width:'auto',
			fixFooter:false
			});
    });
</script>
<div style="padding: 3px; height: 25px;width:auto;" class="datagrid-toolbar">
	<a id="addTestManyBtn" href="#">添加</a> <a id="delTestManyBtn" href="#">删除</a> 
</div>
<table border="0" cellpadding="2" cellspacing="0" id="testMany_table">
	<tr bgcolor="#E6E6E6">
		<td align="center" bgcolor="#EEEEEE">序号</td>
		<td align="center" bgcolor="#EEEEEE">操作</td>
		<td align="left" bgcolor="#EEEEEE" >订单号</td>
		<td align="left" bgcolor="#EEEEEE" >收件人</td>
		<td align="left" bgcolor="#EEEEEE" >订单状态</td>
		<td align="left" bgcolor="#EEEEEE" >总商品数</td>
		<td align="left" bgcolor="#EEEEEE" >总价格（含邮费）</td>
		<td align="left" bgcolor="#EEEEEE" >邮费</td>
	</tr>
	<tbody id="add_testMany_table">	
		<c:forEach items="${orderList}" var="poVal" varStatus="stuts">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">${stuts.index+1 }</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck" /></td>
				   <td align="left">
					  	<input name="orderList[${stuts.index }].code" maxlength="32" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.code }">
					  <label class="Validform_label" style="display: none;">订单号</label>
				   </td>
				   <td align="left">
					  	<input name="orderList[${stuts.index }].receiverName" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.receiverName }">
					  <label class="Validform_label" style="display: none;">收件人</label>
				   </td>
				   <td align="left">
				   		<c:if test="${poVal.status==0 }">
				   			<input value="待付款" name="orderList[${stuts.index }].status" maxlength="36" type="text" class="inputxt"  style="width:120px;">
				   		</c:if>
				   		<c:if test="${poVal.status==1 }">
				   			<input value="待发货" name="orderList[${stuts.index }].status" maxlength="36" type="text" class="inputxt"  style="width:120px;">
				   		</c:if>
				   		<c:if test="${poVal.status==2 }">
				   			<input value="待收货" name="orderList[${stuts.index }].status" maxlength="36" type="text" class="inputxt"  style="width:120px;">
				   		</c:if>
				   		<c:if test="${poVal.status==3 }">
				   			<input value="待评价" name="orderList[${stuts.index }].status" maxlength="36" type="text" class="inputxt"  style="width:120px;">
				   		</c:if>
				   		<c:if test="${poVal.status==4 }">
				   			<input value="已完成" name="orderList[${stuts.index }].status" maxlength="36" type="text" class="inputxt"  style="width:120px;">
				   		</c:if>
					  	
					  <label class="Validform_label" style="display: none;">订单状态</label>
				   </td>
				    <td align="left">
					  	<input name="orderList[${stuts.index }].totalCount" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.totalCount }">
					  <label class="Validform_label" style="display: none;">总商品数</label>
				   </td>
				   <td align="left">
					  	<input name="orderList[${stuts.index }].totalPrice" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.totalPrice }">
					  <label class="Validform_label" style="display: none;">总价格（含邮费）</label>
				   </td>
				   <td align="left">
					  	<input name="orderList[${stuts.index }].freight" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.freight }">
					  <label class="Validform_label" style="display: none;">邮费</label>
				   </td>
   			</tr>
		</c:forEach>
	</tbody>
</table>
