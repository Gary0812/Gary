<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="misapplication-tap-highlight" content="no"/>
<meta name="HandheldFriendly" content="true"/>
<meta name="MobileOptimized" content="320"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black"/>
<meta name="applicable-device" content="pc,mobile"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>"玩转天津"活动开始啦!"玩转达人"你来定!_中国台湾网</title>

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="filetype" content="0">
<meta name="publishedtype" content="1">
<meta name="pagetype" content="2">
<meta name="subject" content="55674;1">
<meta name="catalogs" content="55674">

<meta content="all" name="robots" />
<meta name="googlebot" content="all" />
<meta name="baiduspider" content="all" />
<meta name="yahoobot" content="all" />

<link rel="stylesheet" rev="stylesheet" href="http://ats.taiwan.cn/Topic/2017/wzhtj2017/css/global.css" type="text/css" media="all" />
<link rel="stylesheet" rev="stylesheet" href="http://ats.taiwan.cn/Topic/2017/wzhtj2017/css/index.css" type="text/css" media="all" />
<!--patch_begin-->
<!--[if lt IE 9]>
<style type="text/css">
/*header_begin*/
div#header {width:100%;height:650px;margin:0 auto;}
/*header_end*/
/*main_begin*/
/*简介_begin*/
div#main>div#desc>img+ul {font-size:14px;}
div#main>div#desc>img+ul h2 {font-size:14px;}
div#main>div#desc>ul.rankDesc>li {width:24%;}
/*简介_end*/
/*投票区_begin*/
div#main>div#voteZone>div#voteArea>dl>dd {width:343.75px;}
div#main>div#voteZone>div#voteArea>dl>dd>h2 {font-size:18px;}
div#main>div#voteZone>div#voteArea>dl>dd>p.btn {font-size:12px;}
/*投票区_end*/
/*main_end*/
</style>
<![endif]-->
<!--patch_end-->
<script src="http://ats.taiwan.cn/taiwan/js/jquery-min.js"></script>
<script type="text/javascript">
//投票成功后处理函数
//@param:状态参数
//@param1:查找对象使用的className/id，对象为计数对象的前一个元素
function voteChecker(param,param1){
  console.log(param1);
  var status=param;
  var iconEle=document.getElementById(param1).previousSibling;console.log(iconEle);
  var timer=null;
  if(status.search("投票成功")!==-1){
    if(iconEle.className!=="voted"){
	  iconEle.className="voted animation";
	  iconEle.parentNode.className+=" voted";
	  clearTimeout(timer);
	  timer=setTimeout(function(){
	    iconEle.className=iconEle.className.replace(/\sanimation/g,"");
	  },1000);
	}
	else {
	  iconEle.className+=" animation";
	  clearTimeout(timer);
	  timer=setTimeout(function(){
	    iconEle.className=iconEle.className.replace(/\sanimation/g,"");
	  },1000);
	}
  }
}
</script>
</head>

<body>
<!--banner_begin-->
<div id="header"></div>
<!--banner_end-->
<!--main_begin-->
<div id="main">
  <!--简介_begin-->
  <div id="desc">
    <img class="titIcon" src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/descIndexIcon.png" alt="活动介绍" />
    <img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/pic.jpg" />
	<ul>
	  <li>
	    <p>9位台湾青年分3条路线“玩转天津”，他们通过小视频和文字分享“玩转攻略”。</p>
		<p>谁是你心中的“玩转达人”！快来参与投票吧！</p>
	  </li>
	  <li>
	    <h2>投票规则：</h2>
		<p>1.投票时间：2017年12月16日至29日</p>
		<p>2.投票次数限制：每个ip每日可投5票</p>
	  </li>
	  <li>
	    <h2>注：</h2>
		<p>1.评选结果将于2017年12月30日公布</p>
		<p>2.本着公平公正的原则，禁止一切恶意刷票行为，一经发现，将对刷票青年采取停票、取消参评资格等措施</p>
	  </li>
	</ul>
	<ul class="rankDesc">
	  <li>获赞最多的“主播”将依次获得如下<strong>奖金</strong>！</li>
	  <li>
	    <dl>
		  <dt>￥</dt>
		  <dd>2000</dd>
		</dl>
	  </li>
	  <li>
	    <dl>
		  <dt>￥</dt>
		  <dd>1000</dd>
		</dl>
	  </li>
	  <li>
	    <dl>
		  <dt>￥</dt>
		  <dd>500</dd>
		</dl>
	  </li>
	  <li>
	    <dl>
		  <dt>优秀奖</dt>
		  <dd>若干名</dd>
		</dl>
	  </li>
	</ul>
  </div>
  <!--简介_end-->
  <!--投票区_begin-->
  <div id="voteZone">
    <!--投票通道即将开启_begin-->
	<img class="titIcon" src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/voteZoneIcon_begin.png" alt="投票通道" />
	<!--投票通道即将开启_end-->
	<!--投票区域_begin-->
	<div id="voteArea">
	  <dl>
	    <dt><span>线路1</span></dt>
		<dd>
		  <a href="http://travel.taiwan.cn/travel_zt/2017/wztj/zyj/" target="_blank"><img src="http://travel.taiwan.cn/travel_zt/2017/wztj/zyj/201712/W020171206346851714231.jpg" alt="郑玉洁" /></a>
		  <h2><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/zyj/" target="_blank">郑玉洁</a></h2>
		  <p><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/zyj/" target="_blank">一起来趟薇笑天津小旅行。</a></p>
		  <p class="btn"><img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/heartIcon.png" /><span id="9">${list[8].vote_f}</span></p>
		</dd>
		<dd>
		  <a href="http://travel.taiwan.cn/travel_zt/2017/wztj/lzy/" target="_blank"><img src="http://travel.taiwan.cn/travel_zt/2017/wztj/lzy/201712/W020171206365107311265.jpg" alt="林士扬" /></a>
		  <h2><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/lzy/" target="_blank">林士扬</a></h2>
		  <p><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/lzy/" target="_blank">整个天津都是我的伸展台。</a></p>
		  <p class="btn"><img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/heartIcon.png" /><span id="5">${list[4].vote_f}</span></p>
		</dd>
		<dd>
		  <a href="http://travel.taiwan.cn/travel_zt/2017/wztj/hjw/" target="_blank"><img src="http://travel.taiwan.cn/travel_zt/2017/wztj/hjw/201712/W020171206344337207057.jpg" alt="黃靖雯" /></a>
		  <h2><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/hjw/" target="_blank">黃靖雯</a></h2>
		  <p><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/hjw/" target="_blank">I came，I saw，I conquered。</a></p>
		  <p class="btn"><img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/heartIcon.png" /><span id="4">${list[3].vote_f}</span></p>
		</dd>
	  </dl>
	  <dl>
	    <dt><span>线路2</span></dt>
		<dd>
		  <a href="http://travel.taiwan.cn/travel_zt/2017/wztj/lsw/" target="_blank"><img src="http://travel.taiwan.cn/travel_zt/2017/wztj/lsw/201712/W020171206341602626596.jpg" alt="罗绍闻" /></a>
		  <h2><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/lsw/" target="_blank">罗绍闻</a></h2>
		  <p><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/lsw/" target="_blank">台湾小伙伴 津彩不间断</a></p>
		  <p class="btn"><img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/heartIcon.png" /><span id="7">${list[6].vote_f}</span></p>
		</dd>
		<dd>
		  <a href="http://travel.taiwan.cn/travel_zt/2017/wztj/hpl/" target="_blank"><img src="http://travel.taiwan.cn/travel_zt/2017/wztj/hpl/201712/W020171206343995810565.jpg" alt="黄培伦" /></a>
		  <h2><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/hpl/" target="_blank">黄培伦</a></h2>
		  <p><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/hpl/" target="_blank">关注给予、而非自己的表现。</a></p>
		  <p class="btn"><img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/heartIcon.png" /><span id="3">${list[2].vote_f}</span></p>
		</dd>
		<dd>
		  <a href="http://travel.taiwan.cn/travel_zt/2017/wztj/gws/" target="_blank"><img src="http://travel.taiwan.cn/travel_zt/2017/wztj/gws/201712/W020171206414234994839.jpg" alt="葛汶姗" /></a>
		  <h2><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/gws/" target="_blank">葛汶姗</a></h2>
		  <p><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/gws/" target="_blank">我在津夜享受美景佳肴。</a></p>
		  <p class="btn"><img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/heartIcon.png" /><span id="2">${list[1].vote_f}</span></p>
		</dd>
	  </dl>
	  <dl>
	    <dt><span>线路3</span></dt>
		<dd>
		  <a href="http://travel.taiwan.cn/travel_zt/2017/wztj/lby/" target="_blank"><img src="http://travel.taiwan.cn/travel_zt/2017/wztj/lby/201712/W020171206345198534502.jpg" alt="刘博仪" /></a>
		  <h2><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/lby/" target="_blank">刘博仪</a></h2>
		  <p><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/lby/" target="_blank">不怕千万人阻挡只怕自己投降。</a></p>
		  <p class="btn"><img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/heartIcon.png" /><span id="6">${list[5].vote_f}</span></p>
		</dd>
		<dd>
		  <a href="http://travel.taiwan.cn/travel_zt/2017/wztj/wrh/" target="_blank"><img src="http://travel.taiwan.cn/travel_zt/2017/wztj/wrh/201712/W020171206338969740956.jpg" alt="王仁和" /></a>
		  <h2><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/wrh/" target="_blank">王仁和</a></h2>
		  <p><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/wrh/" target="_blank">我要吃遍天津美食~</a></p>
		  <p class="btn"><img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/heartIcon.png" /><span id="8">${list[7].vote_f}</span></p>
		</dd>
		<dd>
		  <a href="http://travel.taiwan.cn/travel_zt/2017/wztj/czy/" target="_blank"><img src="http://travel.taiwan.cn/travel_zt/2017/wztj/czy/201712/W020171206343295494427.png" alt="陈祉吟" /></a>
		  <h2><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/czy/" target="_blank">陈祉吟</a></h2>
		  <p><a href="http://travel.taiwan.cn/travel_zt/2017/wztj/czy/" target="_blank">津津乐道，放飞自我。</a></p>
		  <p class="btn"><img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/heartIcon.png" /><span id="1">${list[0].vote_f}</span></p>
		</dd>
	  </dl>
	</div>
	<!--投票区域_end-->
	<script type="text/javascript">
	$(document).ready(function(){
		$(".btn").click(function(){
			//alert("aaa");
			var id=$(this).find("span").attr("id");
			var that=this;
			// var data={"id":id};  
			// alert(id);
			if(that.className.search(/processing/g)===-1){
			    that.className+=" processing";										
				$.ajax({
					type : "post",
					dataType:"json",  
					url : '${pageContext.request.contextPath}/vote',
					data : {"id":id},
					success : function(data) {
						var message =  data.message;
						$("#"+id).html(data.vote_f);
						alert(message);
						voteChecker(message,id);
						//alert(data.vote_f);
						that.className=that.className.replace(/\sprocessing/g,"");
					}
				});
			}
		});
	});
	</script>
  </div>
  <!--投票区_end-->
  <!--线路介绍_begin-->
  <div id="routeDesc">
    <img class="titIcon" src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/routeDescIcon.png" alt="线路介绍" />
    <ul>
	  <li>
	    <img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/route1.jpg" alt="线路一" />
		<h2>民俗（海河一桥一景——古文化街——龙嘴大铜壶（茶汤））</h2>
		<p>以天津民俗发源地——海河为游览线路。行程主要围绕海河两岸民俗进行游览，游览期间推荐行程中安排了许多可亲身体验的天津传统非遗项目，包括杨柳青年画、泥人张雕塑、益德成鼻烟等。其中利顺德饭店博物馆作为一家可住宿的博物馆，见证了天津近代的发展。</p>
	  </li>
	  <li>
	    <img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/route2.jpg" alt="线路二" />
		<h2>历史（鼓楼——五大道博物馆——名人故居）</h2>
		<p>以天津五大道地区为主要游览线路，该地区拥有上世纪二、三十年代建成的具有不同国家建筑风格的花园式房屋2000多所，建筑面积达到100多万平方米。其中最具典型的300余幢风貌建筑中，英式建筑89所、意式建筑41所、法式建筑6所、德式建筑4所、西班牙建筑3所、还有众多的文艺复兴式建筑、古典主义建筑、折衷主义建筑、巴洛克式建筑、庭院式建筑以及中西合璧式建筑等，被称为万国建筑博览苑。</p>
	  </li>
	  <li>
	    <img src="http://ats.taiwan.cn/Topic/2017/wzhtj2017/images/route3.jpg" alt="线路三" />
		<h2>文化（天津文化中心——意大利风情区——煎饼果子）</h2>
		<p>文化产业作为天津近年来重点发展的一大产业之一，极大地丰富了天津百姓的文娱生活。线路以天津市内文化中心为游览重点，通过参观天津自然博物馆、天津博物馆、天津美术馆、天津图书馆、天津规划展览馆、意大利风情旅游区等地了解天津近年来在文化产业建设方面取得的成绩。</p>
	  </li>
	</ul>
  </div>
  <!--线路介绍_end-->
</div>
<!--main_end-->
<!--微博与声明_beign-->
<div id="wAA">
  <div class="announcement">
    <h2>声明：</h2>
	<p>1.用户参与本次活动所提交的照片、视频、文字均视为授权中国台湾网使用。其他任何人或公司未经本站许可，不得擅自转载或发表。</p>
	<p>2.本次活动的最终解释权归中国台湾网所有。</p>
  </div>
</div>
<!--微博_end-->
<!--footer_begin-->
<div id="footer">中国台湾网版权所有</div>
<!--footer_end-->
<!--统计_begin-->
<div style="display:none">
<!--天润_begin-->
<script type="text/javascript">document.write(unescape("%3Cscript src='http://cl2.webterren.com/webdig.js?z=12' type='text/javascript'%3E%3C/script%3E"));</script>
<script type="text/javascript">wd_paramtracker("_wdxid=000000000000000000000000000000000000000000")</script>
<!--天润_end-->
<!--百度_begin-->
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fbe055e974158d4c8ae1878f924c17897' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F8ca9d4832677566b69c3e115b744cdbc' type='text/javascript'%3E%3C/script%3E"));
</script>
<!--百度_end-->
</div>
<!--google_begin-->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-37204618-1', 'auto');
  ga('send', 'pageview');

</script>
<!--google_end-->
<!--QQ_begin-->
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=43349400" charset="UTF-8" ignoreapd="1"></script>
<!--QQ_end-->
<!--统计_end-->
</body>
</html>
