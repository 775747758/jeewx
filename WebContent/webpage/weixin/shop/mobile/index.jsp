<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<meta charset="utf-8">
<title>商城主页</title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="apple-touch-icon-precomposed" href="webpage/weixin/shop/mobile/images/apple-touch-icon.png">
<link href="webpage/weixin/shop/mobile/css/home.css" rel="stylesheet" type="text/css" />
<link href="webpage/weixin/shop/mobile/css/foot.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="webpage/weixin/shop/mobile/js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="webpage/weixin/shop/mobile/js/jquery.lazyload.js"></script>
<script type="text/javascript" src="webpage/weixin/shop/mobile/js/fbi.js"></script>
<script type="text/javascript">
      jQuery(document).ready(function($) {
        $(".row_list img").lazyload({
          placeholder: "webpage/weixin/shop/mobile/images/img_bg4.png",
          effect: "fadeIn"
        });
      });
</script>
<div class="header">
  <div class="left"> <a href="index.php" class="home"> <span>商城</span> </a> </div>
  <div class="tit">
    <h2> <span class="title">商城</span> </h2>
  </div>
  <div class="right">
    <ul>
      <li class="user"> <a href="user.php?act=user_center" title="个人中心"> <span class="ico"> </span> </a> </li>
      <li class="cart"> <a href="cart.php" title="购物车"> <span class="ico"> </span> <span id="ShoppingCartNum" class="tip hide"> </span> </a> </li>
    </ul>
  </div>
</div>
<div id="viewport" class="viewport">
  <div class="slider card card-nomb" style="visibility: visible;">
    <!-- banner轮播Start -->
    <script type="text/javascript" src="webpage/weixin/shop/mobile/js/TouchSlide.1.1.js"></script>
    <div id="focus" class="focus">
      <div class="hd">
        <ul>
        </ul>
      </div>
      <div class="bd">
        <ul>
         <li><a href="{$ad.url}" title="" target="_blank"><img name="ad_img" src="webpage/weixin/shop/mobile/images/br1.jpg" alt="" /></a></li>
         <li><a href="{$ad.url}" title="" target="_blank"><img name="ad_img" src="webpage/weixin/shop/mobile/images/br2.jpg" alt="" /></a></li>
        </ul>
      </div>
    </div>
    <script type="text/javascript">
	TouchSlide({ 
		slideCell:"#focus",
		titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
		mainCell:".bd ul",
		delayTime:600,
		interTime:4000,
		effect:"leftLoop", 
		autoPlay:true,//自动播放
		autoPage:true, //自动分页
		switchLoad:"_src" //切换加载，真实图片路径为"_src" 
	});
	</script>
    <!-- banner轮播End -->
  </div> 
  <div class="nav-index card">
    <ul>
      <li> <a href="category.php"> <span class="ico icon_indexn_01"> </span> <span class="t"> <span> 全部商品 </span> </span> </a> </li>
      <li> <a href="goods_list.php?type=promote"> <span class="ico icon_indexn_02"> </span> <span class="t"> <span> 促销活动 </span> </span> </a> </li>
      <li> <a href="goods_list.php?type=new"> <span class="ico icon_indexn_03"> </span> <span class="t"> <span> 新品上市 </span> </span> </a> </li>
      <li> <a href="brands.php"> <span class="ico icon_indexn_04"> </span> <span class="t"> <span> 品牌馆 </span> </span> </a> </li>
    </ul>
    <ul>
      <li> <a href="cart.php"> <span class="ico icon_indexn_05"> </span> <span class="t"> <span> 购物车 </span> </span> </a> </li>
      <li> <a href="user.php?act=user_center"> <span class="ico icon_indexn_06"> </span> <span class="t"> <span> 会员中心 </span> </span> </a> </li>
      <li> <a href="favorites.php"> <span class="ico icon_indexn_07"> </span> <span class="t"> <span> 收藏夹 </span> </span> </a> </li>
      <li> <a href="kefu.php"> <span class="ico icon_indexn_08"> </span> <span class="t"> <span> 客服中心 </span> </span> </a> </li>
    </ul>
  </div> 
<div class="search">
<!--搜索框区域begin-->
<div class="seo clearfix">
<form action="search.php" method="get" name="searchForm" >
	<div class="search-area clearfix s-area">
		<div class="search_l"><a class="back" href="javascript:history.back();"></a></div>
        <input type="hidden" name="category" value="{$c_id}">
        <div class="search_c"><input type="text" name="keywords" value="{$keywords}" id="keywords" class="key-word"></div> 
		<div class="search_r"><INPUT class="search-icon" type="submit" id='btn_search' /></div>
	</div>
</form>
</div> 
<script type="text/javascript">
function readSN(){
	window.wst.readSN();
}
var searchInput = document.getElementById('keywords');
searchInput.onfocus = function () {
    if (searchInput.value == '请输入关键词')
        searchInput.value = '';
};
searchInput.onblur = function () {
    if (searchInput.value == '')
        searchInput.value = '请输入关键词';
}
function chkSearch() {
    if (searchInput.value == "请输入关键词") {
        alert('请输入关键词');
        searchInput.onfocus();
        return false;
    }
}
</script>
		<!--搜索框区域end-->
<div class="cover"></div>		

  <div class="card show_big">
    <div class="col2">    
      <div class="row2 mg-bor-right"> <a href="" title="${ad1.title}" target="_blank" class="img"> <span class="imgurl"> <img data-original="${path}/${ad1.imgurl}" style="display: inline;" src="${path}/${ad1.imgurl}"> </span> </a> </div>
      <div class="rows">
        <div class="row1"> <a href="" title="${ad2.title}" target="_blank" class="img"> <span class="imgurl"> <img data-original="${path}/${ad2.imgurl}" style="display: inline;" src="${path}/${ad2.imgurl}"> </span> </a> </div>
        <div class="row1 mg-bor-no-left mg-bor-top"> <a href="" target="_blank" class="img"> <span class="imgurl"> <img data-original="${path}/${ad3.imgurl}" style="display: inline;" src="${path}/${ad3.imgurl}"> </span> </a> </div>
      </div>
    </div>
    <div class="col2">
      <div class="row1 mg-bor-right"> <a href="" target="_blank" class="img"> <span class="imgurl"> <img data-original="${path}/${ad4.imgurl}" style="display: inline;" src="${path}/${ad4.imgurl}"> </span> </a> </div>
      <div class="row1"> <a href="" target="_blank" class="img"> <span class="imgurl"> <img data-original="${path}/${ad5.imgurl}" style="display: inline;" src="${path}/${ad5.imgurl}"> </span> </a> </div>
    </div>
  </div>
  <div class="card">
    <div class="topic">
      <div class="bg">
        <div class="imgurl"> <img data-original="webpage/weixin/shop/mobile/images/ad6.jpg" style="display: inline;" src="webpage/weixin/shop/mobile/images/ad6.jpg"> </div>
      </div>
      <a href="goods_list.php?type=promote" class="targeturl"></a>
      <div class="item-lay">
      	<!--{foreach from=$promote_goods item=goods name=goods}-->
        <!--{if $smarty.foreach.goods.index <= 1}-->
        <div class="item-l"> <a href="{$goods.url}"> <span class="imgurl"> <img data-original="./../{$goods.goods_img}"
                  style="display: inline;" src="./../{$goods.goods_img}"> </span>
          <p> <span>{$goods.short_name}</span> </p>
          <p> <span>{if $goods.promote_price neq ""}{$goods.promote_price}{else}{$goods.shop_price}{/if}</span> </p>
          </a> </div>
        <!--{/if}-->
        <!--{/foreach}-->
      </div>
    </div>
  </div>
  <div class="card">
    <div class="topic">
      <div class="bg">
        <div class="imgurl"> <img data-original="webpage/weixin/shop/mobile/images/ad7.jpg" style="display: inline;" src="webpage/weixin/shop/mobile/images/ad7.jpg"> </div>
      </div>
      <a href="goods_list.php?type=new" class="targeturl"></a>
      <div class="item-lay">
      	<!--{foreach from=$new_goods item=goods name=goods}-->
        {if $smarty.foreach.goods.index <= 2}
        <div class="item-l"> <a href="{$goods.url}"> <span class="imgurl"> <img data-original="./../{$goods.original_img}"
                  style="display: inline;" src="./../{$goods.original_img}"> </span>
          <p> <span>{$goods.name}</span> </p>
          <p> <span>{if $goods.promote_price neq ""}{$goods.promote_price}{else}{$goods.shop_price}{/if}</span> </p>
          </a> </div>
        {/if}
        <!--{/foreach}-->
      </div>
    </div>
  </div>
   <!--第1个分类调用开始-->
  <div class="card card-list">
    <div class="col1 more_top"> <a href="category.php?c_id=1">
      <span> 小米手机 </span> </a> </div>
    <div class="col3">
    	<!--{foreach from=get_cat_goods_wap(1,4) item=row}-->
      <div class="row1"> <a href="{$row.url}"> <span class="imgurl"> <img data-original="./../{$row.thumb}" style="display: inline;" src="./../{$row.thumb}"> </span> <span class="p"> <span>{$row.name}</span> </span> <span class="p"> <span>{if $row.promote_price neq ""}{$row.promote_price}{else}{$row.shop_price}{/if}</span> </span> </a> </div>
      <!--{/foreach}-->
    </div>
    <div style="clear:both;"></div>
    <div class="col1 more"> <a href="category.php?c_id=1">
      <span> 查看更多&nbsp;&gt;&gt; </span> </a> </div>
  </div>
  <!--第1个分类调用结束-->
  <!--第2个分类调用开始-->
    <div class="card card-list">
    <div class="col1 more_top"> <a href="category.php?c_id=10">
      <span> 小米手机1 </span> </a> </div>
    <div class="col3">
    	<!--{foreach from=get_cat_goods_wap(10,4) item=row}-->
      <div class="row1"> <a href="{$row.url}"> <span class="imgurl"> <img data-original="./../{$row.thumb}" style="display: inline;" src="./../{$row.thumb}"> </span> <span class="p"> <span>{$row.name}</span> </span> <span class="p"> <span>{if $row.promote_price neq ""}{$row.promote_price}{else}{$row.shop_price}{/if}</span> </span> </a> </div>
      <!--{/foreach}-->
    </div>
    <div style="clear:both;"></div>
    <div class="col1 more"> <a href="category.php?c_id=10">
      <span> 查看更多&nbsp;&gt;&gt; </span> </a> </div>
  </div>

  <!--第2个分类调用结束-->
</div>