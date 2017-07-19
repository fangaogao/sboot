<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<table align="center" style="margin-top: 100px;">
		<tr>
			<td><img src="${pageContext.request.contextPath}/404.jpg" style="width: 200px; margin-right: 20px"></td>
			<td>
				<h1>
					您访问的页面找不到了，还剩<span id="ts">10</span>s&nbsp;<a href="${pageContext.request.contextPath}/jsp/front/index">返回</a>&nbsp;首页
				</h1>
				<h4>&nbsp;<a href="${pageContext.request.contextPath}/jsp/admin/cmg/login">返回后台</a></h4>
			</td>
		</tr>
	</table>
</body>
<script type="text/javascript">
var ts=10;
var seti=setInterval(function(){
	ts--;
	document.getElementById("ts").innerHTML=ts;
	if(ts<1){
		clearInterval(seti);
		window.location="${pageContext.request.contextPath}/jsp/front/index";
	}
}, 1000);
</script>
</html>