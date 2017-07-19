<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<%@ include file="common.jsp"%>
 
</head>
<body>
 	<section class=" content mCustomScrollbar">
		<div class="rt_content">
			<div class="page_title">
				<h2 class="fl">一级目录管理</h2>
				<a class="fr top_rt_btn PLsubmitForm" href="${ctx }/kind/pldel">批量删除</a>
				<a class="fr top_rt_btn PLsubmitForm" href="${ctx }/kind/plnouse">批量禁用</a>
				<a class="fr top_rt_btn PLsubmitForm" href="${ctx }/kind/pluse">批量启用</a>
				<a class="fr top_rt_btn add_icon" href="${ctx }/kind/add">添加</a>
			</div>
			<form method="post" action="${ctx }/kind/list">
				 <input name="kname" value="${kind.kname }" type="text" class="textbox textbox_225" placeholder="请输入名称"/>
				 <input type="submit" value="搜索" class="group_btn" />
				 <input type="submit" value="清空" class="group_btn" id="back" style="background: #ffffff;color:green;"/>
			</form> 
			<table class="table">
				<tr>
					<th style="width: 30px;"><input type="checkbox" id="checkBox"></th>
					<th style="width: 30px;">id</th>
					<th>种类名称</th>
					<th>排序字段</th>
					<th>状态</th>
					<th>创建时间</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${li }" var="item">
				<tr>
					<td class="center"><input type="checkbox" class="checkBox" value="${item.kid }"> </td>
					<td>${item.kid }</td>
					<td>${item.kname }</td>
					<td class="center">${item.ksort }</td>
					<td class="center">${item.status eq 1?'启用':'禁用'}</td>
					<td>${item.cts }</td>
					<td>
						<a href="${ctx }/kind/update?kid=${item.kid }&pageNo=${kind.pageNo}" title="编辑" class="link_icon">&#101;</a>
						<c:if test="${item.status eq 0 }">
						<a href="${ctx }/kind/isuse"   class="link_icon submitForm" title="启用" data-id="${item.kid }">&#89;</a>
						</c:if>
						<c:if test="${item.status eq 1 }">
						<a href="${ctx }/kind/isuse" title="禁用" class="link_icon submitForm"  data-id="${item.kid }">&#88;</a>
						</c:if>
						<a href="${ctx }/kind/del" title="删除" class="link_icon submitForm"  data-id="${item.kid }">&#100;</a>
					</td>
				</tr>
				</c:forEach>
			</table>
			<form method="post" action="${ctx }/kind/list">
				 <input name="kname" value="${kind.kname }" type="hidden"/>
				 <%@ include file="page.jsp"%>
			</form>
			
			<form method="post" action="" id="submitForm">
				 <input name="kname" value="${kind.kname }" type="hidden"/>
				 <input name="pageNo" value="${kind.pageNo }" type="hidden"/>
				 <input name="kid" value="" type="hidden" id="submitId"/>
				 <input name="ids" value="" type="hidden" id="ids"/>
			</form> 
			
		</div>
	</section>
</body>
<script type="text/javascript">
 
/*批量复选框全选或者取消选中操作*/
$('#checkBox').click(function(){
	if($(this).is(':checked')){
		$('.checkBox').prop("checked", true);
	}else{
		$('.checkBox').prop("checked", false);
	}
});
/*清空默认值按钮*/
$('#back').click(function(){
	var form=$(this).parent();
	$(form).find('input[type=text]').val('');
})

$('.submitForm').click(function(){
	$('#submitId').val($(this).attr('data-id'));
	$('#submitForm').attr('action',$(this).attr('href')).submit();
	return false;
});


$('.PLsubmitForm').click(function(){
	var all=$('.checkBox:checked');
	if(all.length==0){
		alert("请选择数据")
		return false;
	}
	var ids='';
	for(var i=0;i<all.length;i++){
		ids+=$(all[i]).val()+",";
	}
	$('#ids').val(ids);
	$('#submitForm').attr('action',$(this).attr('href')).submit();
	return false;
});
</script>
</html>
