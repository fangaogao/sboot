 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<%@ include file="common.jsp"%>
		<style type="text/css">
		#pagelist a.sel{background: #006f18;border:1px solid #006f18;}
		</style>
	</head>
	<body>
		<aside class="paging" id="pagelist">
			<input type="hidden" value="${page.pageNo }" name="pageNo" id="pageNo"/>
		 	<button type="submit" style="display: none" id="sub"></button>
	 		 
			
			<c:if test="${page.pages gt 1}">
				<a href="#"  data-p=1>首页</a> 
				<c:if test="${page.pageNo-1 gt 0 }">
					<a href="#" data-p=${page.pageNo-1 }>上一页</a> 
				</c:if>
			</c:if>
		
			<c:if test="${page.pages<=10}">
				<c:forEach begin="1" end="${page.pages }" var="i">
					<c:choose>
						<c:when test="${i eq page.pageNo }">
							 <a href="#" data-p=${i } class="sel">${i}</a>
						</c:when>
						<c:otherwise>
							<a href="#" data-p=${i }>${i}</a>
				 	 	</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:if>
			<c:if test="${page.pages>10}">
				<c:if test="${page.pageNo-5>0}">
					<c:if test="${page.pageNo+5>=page.pages}">
						<c:forEach begin="${page.pages-9 }" end="${page.pages}" var="i">
							<c:choose>
								<c:when test="${i eq page.pageNo }">
									 <a href="#" data-p=${i } class="sel">${i}</a>
								</c:when>
								<c:otherwise>
									<a href="#" data-p=${i }>${i}</a>
						 	 	</c:otherwise>
							</c:choose>
						</c:forEach>
					</c:if>
				 	<c:if test="${page.pageNo+5<page.pages}">
						<c:forEach begin="${page.pageNo-5 }" end="${page.pageNo+4}" var="i">
							<c:choose>
								<c:when test="${i eq page.pageNo }">
									 <a href="#" data-p=${i } class="sel">${i}</a>
								</c:when>
								<c:otherwise>
									<a href="#" data-p=${i }>${i}</a>
						 	 	</c:otherwise>
							</c:choose>
						</c:forEach>
					</c:if>
				</c:if>
				<c:if test="${page.pageNo-5<=0}">
				 	<c:forEach begin="1" end="10" var="i">
						<c:choose>
							<c:when test="${i eq page.pageNo }">
								 <a href="#" data-p=${i } class="sel">${i}</a>
							</c:when>
							<c:otherwise>
								<a href="#" data-p=${i }>${i}</a>
					 	 	</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:if> 
			</c:if>
		 
				 
				
			<c:if test="${page.pages gt 1}">
				<c:if test="${page.pageNo+1 lt page.pages or page.pageNo+1 eq page.pages }">
					<a href="#" data-p=${page.pageNo+1 } >下一页</a>
				</c:if>
				 	<a href="#"  data-p=${page.pages }>尾页</a>
			</c:if>
		 
			【共${page.count }条记录，共${page.pages }页】
			
		</aside>
	</body>
	<script type="text/javascript">
	 $("#pagelist a").click(function(){
		 $("#pageNo").val( $(this).attr("data-p"));
		 $("#sub").click();
		 return false;
	 })
	 </script>
</html>