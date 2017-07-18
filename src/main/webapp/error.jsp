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
			<td><img src="404.jpg" style="width: 200px; margin-right: 20px"></td>
			<td>
				<h1>
					é¡µé¢æ¾ä¸å°äº,<span id="ts">10</span>så&nbsp;<a href="index_index.do">è¿å<a>&nbsp;é¦é¡µ
				</h1>
				<h4>&nbsp;<a href="login_login.do">è¿åç®¡çåç»éé¡µé¢<a></h4>
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
		window.location="index_index.do";
	}
}, 1000);
</script>
</html>