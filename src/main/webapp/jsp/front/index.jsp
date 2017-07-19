<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>商铺首页</title>
    <%@ include file="common.jsp"%>
    
    <script>
        $(function () {
            $("figure:eq(0)").css({
                border:'none'
            });
            $("figure:eq(1)").css({
                border:'none'
            });
                var titleName=$(".ycmenu a");
                for(var i =0;i<titleName.length;i++){
                titleName[i].id=i;
                titleName[i].onmouseover=function(){
                for(var j =0;j<titleName.length;j++){
                titleName[j].className="";
            }
                this.className = "a";
            }}
        })
    </script>
    <style>
    	.ycmenu li{
    		border:none;
    	}
    	.ycmenu li a{
    		border: none;color:#20b1aa;background: #FFFFFF;
    	}
    	.ycmenu li a.a{
    		color:#FFFFFF;
    		background: #20B1AA;
    	}
    </style>
</head>
<body>
<header>
    <div>
        <a href="#">发现身边美好的生活！<button>下载宅生活</button></a>
    </div>
</header>
<div style="height: 50px;"></div>
<div class="container">
    <div class="allLogo">
        <div class="logo"><img src="img/u16.png" alt="logo"/></div>
        <div class="head"><a href="javascript:;"><img src="img/u61.png" alt="头像"/></a></div>
        <div class="headInfo"><a href="#" style="color: #20b1aa;">天天猫</a></div>
    </div>
	
    
    
    <div style="height: 70px;background: #e8e8e8;"> </div>
    <div class="store">
        <ul>
            <li class="li1"><a href="#">商品</a></li>
            <li class="li2">
            	<a href="javascript:;" class="xlmenu chooseitem" data-id="kind">种类&nbsp;<img src="img/donw.png" style="width: 12px;display: inline"></a>
            	<a href="javascript:;" class="xlmenu chooseitem" data-id="numc">层数&nbsp;<img src="img/donw.png" style="width: 12px;display: inline"></a>
            	<a href="javascript:;" class="xlmenu chooseitem" data-id="price">价格&nbsp;<img src="img/donw.png" style="width: 12px;display: inline"></a>
            	&nbsp;共<span style="color: #e4393c;font-size: 1.8rem">40</span>件</li>
        </ul>
        <div class="ycmenu">
            <ul id="kind">
                <li><a href="allGoods.html" class="a">全部</a></li>
                <li><a href="nydg.html">奶油蛋糕</a></li>
                <li><a href="nydg.html">奶油蛋糕</a></li>
                <li><a href="nydg.html">奶油蛋糕</a></li>
                <li><a href="nydg.html">奶油蛋糕</a></li>
                <li><a href="nydg.html">奶油蛋糕</a></li>
                <li><a href="nydg.html">奶油蛋糕</a></li>
            </ul>
            <ul id="numc">
                <li><a href="allGoods.html" class="a">不限</a></li>
                <li><a href="nydg.html">单层</a></li>
                <li><a href="nydg.html">双层</a></li>
                <li><a href="nydg.html">3层</a></li>
                <li><a href="nydg.html">4层</a></li>
                <li><a href="nydg.html">5层</a></li>
                <li><a href="nydg.html">5层以上</a></li>
            </ul>
            <ul id="price">
                <li><a href="allGoods.html" class="a">不限</a></li>
                <li><a href="nydg.html">0-20</a></li>
                <li><a href="nydg.html">21-50</a></li>
                <li><a href="nydg.html">51-80</a></li>
                <li><a href="nydg.html">81-100</a></li>
                <li><a href="nydg.html">101-150</a></li>
                <li><a href="nydg.html">151-200</a></li>
                <li><a href="nydg.html">200以上</a></li>
            </ul>
        </div>
    </div>
    <div class="clear"></div>
    <div class="border">

    </div>
    <div class="allsp">
        <figure>
            <a href="goodsdetail.html"><img src="img/u67.png" alt="商品" class="xqtp"/></a>
            <p>全部商品</p>
            <div class="info">
                <em class="sat">￥46&nbsp;<small>￥46</small></em>
                <a href="#"><img src="img/u20.png" alt="购物车" style="width: 30px;height: 30px" align="right"/></a>
            </div>
        </figure>
        <figure>
            <a href="goodsdetail.html"><img src="img/u67.png" alt="商品" class="xqtp"/></a>
            <p>全部商品</p>
            <div class="info">
                <em class="sat">￥46&nbsp;<small>￥46</small></em>
                <a href="#"><img src="img/u20.png" alt="购物车" style="width: 30px;height: 30px" align="right"/></a>
            </div>
        </figure>
        <figure>
            <a href="goodsdetail.html"><img src="img/u67.png" alt="商品" class="xqtp"/></a>
            <p>全部商品</p>
            <div class="info">
                <em class="sat">￥46&nbsp;<small>￥46</small></em>
                <a href="#"><img src="img/u20.png" alt="购物车" style="width: 30px;height: 30px" align="right"/></a>
            </div>
        </figure>
        <figure>
            <a href="goodsdetail.html"><img src="img/u67.png" alt="商品" class="xqtp"/></a>
            <p>全部商品</p>
            <div class="info">
                <em class="sat">￥46&nbsp;<small>￥46</small></em>
                <a href="#"><img src="img/u20.png" alt="购物车" style="width: 30px;height: 30px" align="right"/></a>
            </div>
        </figure>
        <figure>
            <a href="goodsdetail.html"><img src="img/u67.png" alt="商品" class="xqtp"/></a>
            <p>全部商品</p>
            <div class="info">
                <em class="sat">￥46&nbsp;<small>￥46</small></em>
                <a href="#"><img src="img/u20.png" alt="购物车" style="width: 30px;height: 30px" align="right"/></a>
            </div>
        </figure>
        <figure>
            <a href="goodsdetail.html"><img src="img/u67.png" alt="商品" class="xqtp"/></a>
            <p>全部商品</p>
            <div class="info">
                <em class="sat">￥46&nbsp;<small>￥46</small></em>
                <a href="#"><img src="img/u20.png" alt="购物车" style="width: 30px;height: 30px" align="right"/></a>
            </div>
        </figure>
        <figure>
            <a href="goodsdetail.html"><img src="img/u67.png" alt="商品" class="xqtp"/></a>
            <p>全部商品</p>
            <div class="info">
                <em class="sat">￥46&nbsp;<small>￥46</small></em>
                <a href="#"><img src="img/u20.png" alt="购物车" style="width: 30px;height: 30px" align="right"/></a>
            </div>
        </figure>
        <figure>
            <a href="goodsdetail.html"><img src="img/u67.png" alt="商品" class="xqtp"/></a>
            <p>全部商品</p>
            <div class="info">
                <em class="sat">￥46&nbsp;<small>￥46</small></em>
                <a href="#"><img src="img/u20.png" alt="购物车" style="width: 30px;height: 30px" align="right"/></a>
            </div>
        </figure>
        <figure>
            <a href="goodsdetail.html"><img src="img/u67.png" alt="商品" class="xqtp"/></a>
            <p>全部商品</p>
            <div class="info">
                <em class="sat">￥46&nbsp;<small>￥46</small></em>
                <a href="#"><img src="img/u20.png" alt="购物车" style="width: 30px;height: 30px" align="right"/></a>
            </div>
        </figure>
        <figure>
            <a href="goodsdetail.html"><img src="img/u67.png" alt="商品" class="xqtp"/></a>
            <p>全部商品</p>
            <div class="info">
                <em class="sat">￥46&nbsp;<small>￥46</small></em>
                <a href="#"><img src="img/u20.png" alt="购物车" style="width: 30px;height: 30px" align="right"/></a>
            </div>
        </figure>
        <div class="clear"></div>
    </div>
    <div class="wx_nav" id="wx_nav">
        <a href="javascript:;" class="nav_index" id="nav_index">首页</a>
        <a href="javascript:;" class="nav_shopcart" id="nav_shopcart">购物车</a>
        <a href="javascript:;" class="nav_me on" id="nav_me on">我的</a>
    </div>
    </div>
<footer>
    <div class="footer">
        <p>没有更多了</p>
    </div>
</footer>
<div class="actGotop"><a href="javascript:;" title="返回顶部"></a> <img src="img/fanhui.png" alt=""></div>
<div class="theme-popover-mask"></div>
</body>

<script>
	$('.chooseitem').click(function(){
		var id=$(this).attr('data-id');
		$('.ycmenu ul').hide();
		$('#'+id).show();
	})
</script>
</html>