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
<title>"发现北京"主播评选开始啦！快来点赞</title>
<meta name="filetype" content="0">
<meta name="publishedtype" content="1">
<meta name="pagetype" content="2">
<meta name="subject" content="s20170824;1">
<meta name="catalogs" content="s20170824">
<meta content="all" name="robots" />
<meta name="googlebot" content="all" />
<meta name="baiduspider" content="all" />
<meta name="yahoobot" content="all" />
<!--link rel="stylesheet" type="text/css" href="http://ats.taiwan.cn/Topic/2017/fxbj2017/css/tpmain.css" ignoreapd="1" /-->
<link rel="stylesheet" type="text/css" href="css/tpmain.css" ignoreapd="1" />
<script src="http://ats.taiwan.cn/taiwan/js/jquery-min.js" ignoreapd="1"></script>

</head>

<body>
<img style="width:0;height:0;overflow:hidden;display:block" src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/shear_logo.jpg" alt="青年公社"/>
<div class="banner"><img src="http://ats.taiwan.cn/Topic/2017/fxbj2017/images/bg_m_banner.jpg"></div>
<div class="fxbj">
<!--规则 begin-->
<div class="guize">
<h5>投票已结束，谢谢关注!</h5>

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
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0728/994345.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/03/0808518503585314.jpg" width="187" height="207"></a>
  <p>赵子乐</p>
  <h3>台湾青年试做北京小吃</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="1">876</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0727/994238.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/03/0808039222266274.jpg" width="187" height="207"></a>
  <p>简婕而</p>
  <h3>两岸故宫哪不同？</h3>
  <div class="heart"><span class="btn"><i class="iconfont red"> </i> <em id="2">35646</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0727/994058.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/03/0807106292524776.jpg" width="187" height="207"></a>
  <p>吴翔凌</p>
  <h3>小清新不爱红妆爱汽车</h3>
  <div class="heart"><span class="btn"><i class="iconfont red"> </i> <em id="3">143940</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0731/994444.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/04/1041352705942635.png" width="187" height="207"></a>
  <p>谢雅颖</p>
  <h3>台湾青年带你揭秘国家大剧院</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="4">336</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0804/994841.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/04/1037379277765477.jpg" width="187" height="207"></a>
  <p>曹佑瑀</p>
  <h3>可爱小姐姐爱上北京慢生活</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="5">262</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0728/994346.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/03/0806339001876861.jpg" width="187" height="207"></a>
  <p>王教安</p>
  <h3>航天城令台生大开眼界</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="6">601</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0727/994055.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/03/0806069990229104.jpg" width="187" height="207"></a>
  <p>江蓉</p>
  <h3>台湾陈圆圆长城寻吴三桂</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="7">840</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0727/994054.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/03/0807411833875105.jpg" width="187" height="207"></a>
  <p>王千</p>
  <h3>萌妹子带你游清华</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="8">600</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0725/993955.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/03/0805259801047878.jpg" width="187" height="207"></a>
  <p>郭育铭</p>
  <h3>主播偶遇台湾交流生</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="9">486</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0727/994239.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/03/0804441253243639.jpg" width="187" height="207"></a>
  <p>林彦伶</p>
  <h3>台湾小姐姐带你游颐和园</h3>
  <div class="heart"><span class="btn"><i class="iconfont red"> </i> <em id="10">115366</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0803/994826.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/04/1047465162915029.png" width="187" height="207"></a>
  <p>林雨学</p>
  <h3>簋街的火锅咋样？台湾青年告诉你</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="11">281</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0803/994828.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/04/1046017863796871.jpg" width="187" height="207"></a>
  <p>白竹君</p>
  <h3>台湾女生白竹君的京剧初体验</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="12">407</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0803/994824.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/04/1044584436381455.jpg" width="187" height="207"></a>
  <p>刘念佳</p>
  <h3>台湾女生漫步北京金融街</h3>
  <div class="heart"><span class="btn"><i class="iconfont red"> </i> <em id="13">14635</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0731/994443.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/04/1043478877273854.jpg" width="187" height="207"></a>
  <p>廖晓君</p>
  <h3>台湾女孩眼中的同仁堂</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="14">270</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0731/994442.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/04/1042451412273371.png" width="187" height="207"></a>
  <p>蔡宜蓁</p>
  <h3>京城百工坊探寻北京特色工艺</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="15">236</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0731/994440.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/04/1040223023993024.png" width="187" height="207"></a>
  <p>韩岳澐</p>
  <h3>台湾帅哥带你逛北大</h3>
  <div class="heart"><span class="btn"><i class="iconfont red"> </i> <em id="16">12493</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0804/994840.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/04/1039098811174795.jpg" width="187" height="207"></a>
  <p>罗鼎钧</p>
  <h3>台湾青年带你吃烤鸭 一口闷豆汁儿</h3>
  <div class="heart"><span class="btn"><i class="iconfont red"> </i> <em id="17">50733</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0808/994889.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/08/0907056561342287.jpg" width="187" height="207"></a>
  <p>张咏证</p>
  <h3>探索北京文化创意产业展示中心</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="18">231</em></span></div>
</li>
 
<li>
  <a href="http://y.taiwan.cn/fxbj/2017/0808/994897.html" target="_blank"><img src="http://p.y.taiwan.cn/images/1708/08/0939304776889212.jpg" width="187" height="207"></a>
  <p>杨轩磊</p>
  <h3>两岸青年走进首都博物馆</h3>
  <div class="heart"><span class="btn"><i class="iconfont"> </i> <em id="19">197</em></span></div>
</li>


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

<!--郑重声明 end-->
</div>

</body>
</html>

