<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<%@ include file="common.jsp"%>
<style type="text/css">
.border{
	border:2px solid green;
	width:350px;
	border-radius:3px;
	line-height: 30px;
	padding-left: 10px;
	margin: 10px 10px;
}
.submit{
border:none; 
background: green;
color:#ffffff;
padding: 10px 10px;
margin: 10px 10px;border-radius:3px;
}
.back{
border:none; 
border:1px solid green; 
background: #ffffff;
color:green;
padding: 10px 10px;
margin: 10px 10px;border-radius:3px;
}
</style>
 
</head>
<body>



	<section class=" content mCustomScrollbar">
		<div class="rt_content">
			<div class="page_title">
				<h2 class="fl">修改一级类别</h2>
			</div>
			<form action="${ctx }/kind/updated" method="post">
			 <input type="hidden" name="kid" value="${kind.kid }">
			 <table>
			 	<tr>
			 		<td>种类名称：</td>
			 		<td><input type="text" class="border" required="required" maxlength="10" name="kname" value="${kind.kname }"></td>
			 		<td style="color:red;">*,10字以内</td>
			 	</tr>
			 	<tr>
			 		<td>排序：</td>
			 		<td><input type="number" class="border"  required="required"  name="ksort" value="${kind.ksort}"></td>
			 		<td style="color:red;">*</td>
			 	</tr>
			 	<tr>
			 		<td></td>
			 		<td><button class="submit" type="submit">提交</button> <button onclick="javascript:history.go(-1);" class="back">返回</button></td>
			 		<td></td>
			 	</tr>
			 </table>
			 </form>
		 </div>
	</section>
</body>
</html>
