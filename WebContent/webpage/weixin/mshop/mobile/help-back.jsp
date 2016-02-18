<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<title>帮助</title>
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/agile.layout.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.component.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.color.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/iconline.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/iconlogo.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/app/css/app.css">
		<style>
			.outer { border:1px solid #ccc; border-radius: 6px;}
			.accordionbar { display: block;padding:10px;border-bottom:1px solid #ccc;background-color: #efefef; color: #444;}
			.accordionbar.active { color:#aaa;}
			[data-role="accordion"]{
				overflow: hidden;
				height: 0px;
				/*可以适当加一些动画*/
				z-index: 10;
				-webkit-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
				-moz-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
				-o-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
				-ms-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
				transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
			}/* 必须为被控制的组件添加默认样式不显示*/
			[data-role="accordion"].active{
				border-bottom:1px solid #ccc;
				height:164px;
				/*可以适当加一些动画*/
				-webkit-transition: height 0.5s ease-in-out, box-shadow 0.1s linear;
				-moz-transition: height 0.5s ease-in-out, box-shadow 0.1s linear;
				-o-transition: height 0.5s ease-in-out, box-shadow 0.1s linear;
				-ms-transition: height 0.5s ease-in-out, box-shadow 0.1s linear;
				transition: height 0.5s ease-in-out, box-shadow 0.1s linear;
				box-shadow: 0px 0px 0px 1px rgba(155,155,155,0.3);
			}/* 必须为被控制的组件添加active样式，显示组件*/
			
			[data-role="accordionone"]{	
				display: none;
			}/* 必须为被控制的组件添加默认样式不显示*/
			[data-role="accordionone"].active{
				display: block;
			}/* 必须为被控制的组件添加active样式，显示组件*/
			.padded{ padding:0;}
			.outer{ border:none;border-radius:0;}
			[class^="iconline-"], [class*=" iconline-"]{ line-height:1.3;}
		</style>
	</head>
	<body>
		<div id="section_container">
			<section id="work_section" data-role="section" class="active">
				<article data-role="article" id="main_article" data-scroll="verticle" class="active" style="bottom:0px;">
					<div class="scroller padded">
						<div class="outer">
							<a class="accordionbar active" data-role="accordionbar" data-toggle="accordion" href="#accordion1" style="overflow:hidden;">
					        	<i class="icon iconfont iconline-fav" style="float:left;"></i>
					            <i class="ricon iconfont iconline-arrow-right" style="float:right;"></i>
					            <div class="text" style="float:left; padding-left:4px;">订单问题</div>
                            </a>
							<ul data-role="accordion" id="accordion1" class="listitem active">
                                <li>
                                    <div class="text">
                                         Q：如果对商家服务不满意如何进行投诉？
                                        <small class="nowrap ellipsis">您可以拨打客服电话进行反馈400-123-1234</small>
                                    </div>
                                </li>
                                <li>
                                    <div class="text">
                                         Q：如果对商家服务不满意如何进行投诉？
                                        <small class="nowrap ellipsis">您可以拨打客服电话进行反馈400-123-1234</small>
                                    </div>
                                </li>
							</ul>
							<a class="accordionbar" data-role="accordionbar" data-toggle="accordion" href="#accordion2" style="overflow:hidden;">
					        	<i class="icon iconfont iconline-fav" style="float:left;"></i>
					            <i class="ricon iconfont iconline-arrow-right" style="float:right;"></i>
					            <div class="text" style="float:left; padding-left:4px;">支付问题</div>
                            </a>
							<ul data-role="accordion" id="accordion2" class="listitem">
                                <li>
                                    <div class="text">
                                         Q：如果对商家服务不满意如何进行投诉？
                                        <small class="nowrap ellipsis">您可以拨打客服电话进行反馈400-123-1234</small>
                                    </div>
                                </li>
                                <li>
                                    <div class="text">
                                         Q：如果对商家服务不满意如何进行投诉？
                                        <small class="nowrap ellipsis">您可以拨打客服电话进行反馈400-123-1234</small>
                                    </div>
                                </li>
							</ul>
							<a class="accordionbar" data-role="accordionbar" data-toggle="accordion" href="#accordion3" style="overflow:hidden;">
					        	<i class="icon iconfont iconline-fav" style="float:left;"></i>
					            <i class="ricon iconfont iconline-arrow-right" style="float:right;"></i>
					            <div class="text" style="float:left; padding-left:4px;">其他问题</div>
                            </a>
							<ul data-role="accordion" id="accordion3" class="listitem">
                                <li>
                                    <div class="text">
                                         Q：如果对商家服务不满意如何进行投诉？
                                        <small class="nowrap ellipsis">您可以拨打客服电话进行反馈400-123-1234</small>
                                    </div>
                                </li>
                                <li>
                                    <div class="text">
                                         Q：如果对商家服务不满意如何进行投诉？
                                        <small class="nowrap ellipsis">您可以拨打客服电话进行反馈400-123-1234</small>
                                    </div>
                                </li>
							</ul>
						</div>
					</div>  
				</article>
			</section>
		</div>
		
		<!--- third --->
		<script src="webpage/weixin/plugin/agile-lite/assets/third/zepto/zepto.min.js"></script>
		<script src="webpage/weixin/plugin/agile-lite/assets/third/iscroll/iscroll-probe.js"></script>
		<script src="webpage/weixin/plugin/agile-lite/assets/third/arttemplate/template-native.js"></script>
		<!-- agile -->
		<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/agile/js/agile.js"></script>		
		<!--- bridge --->
		<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/bridge/exmobi.js"></script>
		<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/bridge/agile.exmobi.js"></script>
		<!-- app -->
		<script>
		(function(){
			//[必须]添加accordion控制器
			A.Controller.add({
				accordion : {
					selector : '[data-toggle="accordion"]',
					isToggle : true //仅控制目标显隐
				},
				accordionone : { 
					selector : '[data-toggle="accordionone"]',
				}
			});
			//[可选]添加accordionbar组件，只有在组件有样式切换的时候需要添加，本例不添加
			
			A.Component.add({
				accordionbar : {
					selector : '[data-role="accordionbar"]',
					isToggle : true
				}
			});
			
			$('#main_article').on('scrollInit', function(){
				//控制器完成后需要刷新滚动容器
				var scroll = A.Scroll(this);
				$(document).on('accordionshow accordiononeshow', function(){
					//因为有的控制器有动画，所以要确保动画完成后才执行
					setTimeout(function(){
						scroll.refresh();
					}, 500);
				});
			});
			
		})();
		
		</script>
		<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/app/js/app.js"></script>
		
	</body>
</html>