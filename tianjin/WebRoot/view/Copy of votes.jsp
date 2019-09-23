<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<!--[if lt IE 9 ]>
<html class="ie8">
<![endif]-->
<!--[if lt IE 8 ]>
<html class="ie7">
<![endif]-->
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="misapplication-tap-highlight" content="no"/>
<meta name="HandheldFriendly" content="true"/>
<meta name="MobileOptimized" content="320"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black"/>
<meta name="applicable-device" content="pc,mobile"/>
<title>“发现北京”主播评选开始啦！快来点赞</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="filetype" content="1">
<meta name="publishedtype" content="1">
<meta name="pagetype" content="2">
<meta name="catalogs" content="S97">
<meta content="all" name="robots" />
<meta name="googlebot" content="all" />
<meta name="baiduspider" content="all" />
<meta name="yahoobot" content="all" />
<link rel="stylesheet" type="text/css" href="http://ats.taiwan.cn/Topic/2017/fxbj2017/css/tpmain.css" ignoreapd="1" />
<script src="http://ats.taiwan.cn/taiwan/js/jquery-min.js" ignoreapd="1"></script>
<script src="http://ats.taiwan.cn/Topic/2017/fxbj2017/js/fxbj.js" type="text/javascript"></script>
</head>

<body>
<img style="width:0;height:0;overflow:hidden;display:block" src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/shear_logo.jpg" alt="青年公社"/>
<div class="banner"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/bg_m_banner.jpg"></div>
<div class="fxbj">
<!--规则 begin-->
<div class="guize">
<h5>投票规则</h5>
<div class="guizeCon">
<ul>
<li><p><span>1</span>投票时间：2017年8月21日至2017年9月25日。</p></li>
<li><p><span>2</span>投票类型：进入投票页面选择你最喜爱的主播进行投票。</p></li>
<li><p><span>3</span>投票次数限制：每个IP每日可投5票。</p></li>
<li><p><span>4</span><b>提示：</b>评选结果将于2017年10月公布。在法律允许范围内，根据进展情况，活动过程中视具体情况可能会略有调整，以最新公告为准。
</p></li>
</ul>
</div>
</div>
<!--规则 end-->

<!--获奖提示 begin-->
<div class="prizeTip">
<h5>奖品展示</h5>
<div class="tit"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/tipPai.png"></div>
<div class="prizeTipCon">
<div class="size1000"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/jiangpin.jpg"></div>
<div class="size768"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/jiangpin2.jpg"></div>
<div class="size480"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/jiangpin3.jpg"></div>
</div>
</div>
<!--获奖提示 end-->

<!--主办单位&二维码 brgin-->
<div class="partOne">
<div class="zbdw">
<dl>
<dt>主办单位</dt>
<dd>中国台湾网青年公社</dd>
<dt>支持单位</dt>
<dd>全国台联、中国科协青少年活动中心、北京海外文化交流中心、银监会、北京市台办</dd>
</dl>
</div>
<div class="erweima">
<p>扫码关注青年公社微信、Facebook了解
最新详情</p>
<ul>
<li class="weixin"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/weixin.jpg"><span>微信</span></li>
<li class="facebook"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/facebook.jpg"><span>Facebook</span></li>
</ul>
</div>
</div>
<!--主办单位&二维码 end-->

<!--投票 begin-->
<div class="toupiao">
<div class="titfaz01"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/tit_fxz01.jpg"></div>
<div class="titfaz02"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/tit_fxz02.jpg"></div>
<ul class="picbox">
<c:forEach var="u" items="${list}"> 
<li>
  <a href="${u.link}" target="_blank"><img src="${u.img}" width="187" height="207"></a>
  <p>${u.name}</p>
  <h3>${u.subject}</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="${u.id}">${u.vote_f}</em></span></div>
</li>
</c:forEach>

</ul>
</div>
<!--投票 end-->
<!--主办单位&二维码 brgin-->
<div class="partTwo">
<div class="zbdw">
<dl>
<dt>主办单位</dt>
<dd>中国台湾网青年公社</dd>
<dt>支持单位</dt>
<dd>全国台联、中国科协青少年活动中心、北京海外文化交流中心、银监会、北京市台办</dd>
</dl>
</div>
<div class="erweima">
<p>扫码关注青年公社微信、Facebook了解
最新详情</p>
<ul>
<li class="weixin"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/weixin.jpg"><span>微信</span></li>
<li class="facebook"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/facebook.jpg"><span>Facebook</span></li>
</ul>
</div>
</div>
<!--主办单位&二维码 end-->
<!--郑重声明 begin-->
<div class="zzsm">
<h5>郑重声明</h5>
<ul>
<li><P><span>1</span>用户参与本次活动所提交的照片、视频，均视为授权中国台湾网青年公社使用。其他任何人或公
司未经本站许可，不得擅自转载或发表。</P></li>
<li><p><span>2</span>本次活动的最终解释权归中国台湾网青年公社所有。</p></li>
</ul>
</div>
<script type="text/javascript">
$(document).ready(function(){
$(".btn").click(function(){
    //alert("aaa");
   var id=$(this).find("em").attr("id")
   // var data={"id":id};  
    // alert(id);
			
							
$.ajax({
								type : "post",
								dataType:"json",  
								url : '${pageContext.request.contextPath}/vote',
							data : {"id":id},
								success : function(data) {
								var message =  data.message;
					           $("#"+id).html(data.vote_f);
							 alert(message);
							 //alert(data.vote_f);
                      }
                      
      });
                       
});
});
</script>
<!--郑重声明 end-->
</div>
</body>
</html>

