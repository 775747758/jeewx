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
		<td align="left" bgcolor="#EEEEEE" >评价人</td>
		<td align="left" bgcolor="#EEEEEE" >评价等级</td>
		<td align="left" bgcolor="#EEEEEE" >评价内容</td>
	</tr>
	<tbody id="add_testMany_table">	
		<c:forEach items="${evaluationList}" var="poVal" varStatus="stuts">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">${stuts.index+1 }</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck" /></td>
				   <td align="left">
					  	<input name="evaluationList[${stuts.index }].customer.nickname" maxlength="32" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.customer.nickname }">
					  <label class="Validform_label" style="display: none;">评价人</label>
				   </td>

				    <td align="left">
				   		<c:if test="${poVal.level==0 }">
				   			<input value="很不满意" name="evaluationList[${stuts.index }].status" maxlength="36" type="text" class="inputxt"  style="width:120px;">
				   		</c:if>
				   		<c:if test="${poVal.level==1 }">
				   			<input value="不满意" name="evaluationList[${stuts.index }].status" maxlength="36" type="text" class="inputxt"  style="width:120px;">
				   		</c:if>
				   		<c:if test="${poVal.level==2 }">
				   			<input value="一般" name="evaluationList[${stuts.index }].status" maxlength="36" type="text" class="inputxt"  style="width:120px;">
				   		</c:if>
				   		<c:if test="${poVal.level==3 }">
				   			<input value="满意" name="evaluationList[${stuts.index }].status" maxlength="36" type="text" class="inputxt"  style="width:120px;">
				   		</c:if>
				   		<c:if test="${poVal.level==4 }">
				   			<input value="非常满意" name="evaluationList[${stuts.index }].status" maxlength="36" type="text" class="inputxt"  style="width:120px;">
				   		</c:if>
					  	
					  <label class="Validform_label" style="display: none;">订单状态</label>
				   </td> 
				    <td align="left">
					  	<input name="evaluationList[${stuts.index }].content" maxlength="36" 
					  		type="text" class="inputxt"  style="width:300px;"
					               
					                value="${poVal.content }">
					  <label class="Validform_label" style="display: none;">评价内容</label>
				   </td>
   			</tr>
		</c:forEach>
	</tbody>
</table>
