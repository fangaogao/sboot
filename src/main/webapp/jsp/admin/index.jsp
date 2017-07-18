<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>后台管理系统</title>
		<%@ include file="common.jsp"%>
		<script>
			(function($) {
				$(window).load(function() {

					$("a[rel='load-content']").click(function(e) {
						e.preventDefault();
						var url = $(this).attr("href");
						$.get(url, function(data) {
							$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
							//scroll-to appended content 
							$(".content").mCustomScrollbar("scrollTo", "h2:last");
						});
					});

					$(".content").delegate("a[href='top']", "click", function(e) {
						e.preventDefault();
						$(".content").mCustomScrollbar("scrollTo", $(this).attr("href"));
					});

				});
			})(jQuery);
		</script>
		<style>
			#leftmenu li dl{
				cursor: pointer;
			}
			#leftmenu li dl dd{
				display: none;
			}
		</style>
	</head>

	<body>
		<!--header-->
		<header>
			<h1><img src="${ctx}/images/admin_logo.png"/></h1>
			<ul class="rt_nav">
				<li>
					<a href="http://www.mycodes.net" target="_blank" class="website_icon">站点首页</a>
				</li>
				<li>
					<a href="#" class="clear_icon">清除缓存</a>
				</li>
				<li>
					<a href="#" class="admin_icon">DeathGhost</a>
				</li>
				<li>
					<a href="#" class="set_icon">账号设置</a>
				</li>
				<li>
					<a href="login.html" class="quit_icon">安全退出</a>
				</li>
			</ul>
		</header>
		<!--aside nav-->
		<!--aside nav-->
		<aside class="lt_aside_nav content mCustomScrollbar" style="border:1px solid #c7c7c7;">
			<h2><a href="mypanel.html" id="mypanel">我的面板</a></h2>
			<ul id="leftmenu">
				<li>
					<dl>
						<dt>商品管理</dt>
						<dd>
							<a href="${ctx }/kind/list">一级分类</a>
						</dd>
						<dd>
							<a href="product_detail.html">二级分类</a>
						</dd>
						<dd>
							<a href="recycle_bin.html">商品管理</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>订单信息</dt>
						<dd>
							<a href="order_list.html">订单列表示例</a>
						</dd>
						<dd>
							<a href="order_detail.html">订单详情示例</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>会员管理</dt>
						<dd>
							<a href="user_list.html">会员列表示例</a>
						</dd>
						<dd>
							<a href="user_detail.html">添加会员（详情）示例</a>
						</dd>
						<dd>
							<a href="user_rank.html">会员等级示例</a>
						</dd>
						<dd>
							<a href="adjust_funding.html">会员资金管理示例</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>基础设置</dt>
						<dd>
							<a href="setting.html">站点基础设置示例</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>配送与支付设置</dt>
						<dd>
							<a href="express_list.html">配送方式</a>
						</dd>
						<dd>
							<a href="pay_list.html">支付方式</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>在线统计</dt>
						<dd>
							<a href="discharge_statistic.html">流量统计</a>
						</dd>
						<dd>
							<a href="sales_volume.html">销售额统计</a>
						</dd>
					</dl>
				</li>
			</ul>
		</aside>

		 
		<section class="rt_wrap content mCustomScrollbar">
			<iframe src="mypanel.html" style="width: 100%;height: 100%;border: none;" id="pagesf"></iframe>
		</section>
		 
		
	</body>
	<script type="text/javascript">
		$('#pagesf').css('height',$(window).height()+"px");
		
		$('#leftmenu li dl dt').click(function(){
			var t=$(this).parent().find('dd');
			if($(t).is(':hidden'))$(t).show();
			else $(t).hide();
		})
		
		$('#leftmenu li dl dd a,#mypanel').click(function(){
			var href=$(this).attr('href');
			$('#pagesf').attr('src',href);
			return false;
		})
	</script>
</html>