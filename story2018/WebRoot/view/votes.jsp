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
<title>两岸青年“友”话说</title>
<meta content="all" name="robots" />
<meta name="googlebot" content="all" />
<meta name="baiduspider" content="all" />
<meta name="yahoobot" content="all" />

<link rel="stylesheet" rev="stylesheet" href="http://ats.taiwan.cn/Topic/2018/laqnyhsh_vote/css/global.css" type="text/css" media="all" ignoreapd="1" />
<script type="text/javascript" src="http://ats.taiwan.cn/Topic/2018/laqnyhsh_vote/js/global_min.js" ignoreapd="1"></script>

<script type="text/javascript">
topic.dR(function(){
    topic.elesMatch(".search-panel input",".search-panel button",".article-list .list-item");
    
});
</script>
<script src="http://ats.taiwan.cn/taiwan/js/jquery-min.js"></script>

</head>

</head>
<body>
<!--banner_begin-->
<div id="banner"></div>
<!--banner_end-->
<!--main_begin-->
<div id="main">
    <!--评选流程_begin-->
    <div class="process wrap">
        <h3 class="block-name">评选流程</h3>
        <div class="content">
            <p class="icons-bg"><span class="red"></span>由网友在135篇优秀稿件中投票产生入围中评的作品。</p>
            <p class="icons-bg">由评审团在入围终评的作品中，评选出：<span class="orange">一等奖1名，二等奖2名，三等奖3名,优秀人气奖14名。</span></p>
        </div>
    </div>
    <!--评选流程_end-->
    <!--豪气大奖_begin-->
    <div class="awards wrap">
        <h3 class="block-name">豪气大奖</h3>
        <ul class="list">
            <li class="list-item first">一等奖 (1名)￥8,000</li>
            <li class="list-item second">二等奖 (2名)￥5,000</li>
            <li class="list-item third">三等奖 (3名)￥3,000</li>
            <li class="list-item fourth">人气作品奖(14名)￥1,000</li>
        </ul>
    </div>
    <!--豪气大奖_end-->
    <!--评审团_begin-->
    <div class="evaluation-group wrap">
        <h3 class="block-name">评审团</h3>
        <ul class="list">
            <li class="list-item odd">
                <h2 class="name"><span>刘国基</span></h2>
                <p class="desc">北京大学CCM新媒体营销传播<br/>研究中心研究员</p>
            </li>
            <li class="list-item">
                <h2 class="name"><span>李振广</span></h2>
                <p class="desc">北京联合大学台湾研究院副院长</p>
            </li>
            <li class="list-item">
                <h2 class="name"><span>林雪</span></h2>
                <p class="desc">全国台联文化宣传部新闻处调研员</p>
            </li>
            <li class="list-item">
                <h2 class="name"><span>田云鹏</span></h2>
                <p class="desc">中国台湾网常务副总编辑</p>
            </li>
            <li class="list-item odd">
                <h2 class="name"><span>李伟国</span></h2>
                <p class="desc">华灿工场总经理</p>
            </li>
            <li class="list-item">
                <h2 class="name"><span>李秉桦</span></h2>
                <p class="desc">清华研究生台生组组长</p>
            </li>
            <li class="list-item">
                <h2 class="name"><span>陈炳宏</span></h2>
                <p class="desc">两岸创业学院院长</p>
            </li>
            <li class="list-item">
                <h2 class="name"><span>丁颖</span></h2>
                <p class="desc">北京大学两岸文化交流协会理事长</p>
            </li>
        </ul>
    </div>
    <!--评审团_end-->
    <!--PICK你最喜欢的两岸故事_begin-->
    <div class="pick wrap">
        <h3 class="block-name">PICK你最喜欢的两岸故事</h3>
        <div class="content">
            <!--search_panel_begin-->
            <div class="search-panel">
                <input type="text" placeholder="请输入作品名或编号" /><button class="icons-bg">搜索</button>

                
            </div>
            <!--search_panel_end-->
            <!--list_begin-->
            <ul class="article-list">
            <c:forEach var="u" items="${list}">
                <li class="list-item">
                    <h2 class="title"><a href="${u.link}" target="_self">${u.subject}</a></h2>
                    <p class="author icons-bg">${u.name}</p>
                    <p id="${u.id}" class="vote icons-bg">${u.vote_f}</p> 
                    <p class="num"  data-num="1">${u.id}</p>
                    
                </li>
          </c:forEach>
        
 
         
       
            </ul>        
            <!--list_end-->
        </div>
    </div>
    <!--PICK你最喜欢的两岸故事_end-->
    <!--郑重声明_begin-->
    <div class="solemnly-declare wrap">
        <h3 class="block-name">郑重声明</h3>
        <p>1.用户参与本次活动所提交的照片、音（视）频，均视为授权中国台湾网青年公社使用。其他任何人或公司未经本站许可，不得擅自转载或发表。</p>
        <p>2.本次活动的最终解释权归中国台湾网青年公社所有。</p>
        <p>咨询电话：010-66231790</p>
        <p>小编微信：yceditor666</p>
    </div>
    <!--郑重声明_end-->
</div>
<!--main_end-->
<!--footer_begin-->
<div id="footer">
    <p>主办单位：中国台湾网 中华全国台湾同胞联谊会</p>
    <p>支持平台：青年公社</p>
    <ul>
        <li>
            <img src="http://ats.taiwan.cn/Topic/2018/laqnyhsh_vote/images/qrCodeYhsh.jpg" />
            <p>两岸青年“友”话说</p>
        </li>
        <li>
            <img src="http://ats.taiwan.cn/Topic/2018/laqnyhsh_vote/images/qrCodeYc.jpg" />
            <p>青年公社微博</p>
        </li>
        <li>
            <img src="http://ats.taiwan.cn/Topic/2018/laqnyhsh_vote/images/qrCodeYcWeChat.jpg" />
            <p>青年公社微信</p>
        </li>
        <li>
            <img src="http://ats.taiwan.cn/Topic/2018/laqnyhsh_vote/images/qrCodetbzhj.jpg" />
            <p>台胞之家</p>
        </li>
    </ul>
</div>
<script type="text/javascript">



var flag = false;
$(function() {  
   
   
    
   
  
      
    $(".confirm").click(function(){ 
    	
    var pop=document.getElementById("popUp");
        if ($(".yzm").val() == code && code != 9999) {  
            $("#result").html("<font color='#00FF66' >   √</font>"); 
            
            	var id=$(this).attr("id");
            	
	   alert("投票已结束");
		codes();
   
           document.getElementById("yzm").value="";
            
            
           pop.className="";
          
        
           
        } 
    });  
    
 


var a;

	$(document).ready(function(){
	$(".vote.icons-bg").click(function(){
	var pop=document.getElementById("popUp");
		pop.className="pop";
	a=$(this).attr("id");

		});
		
	});
	}); 
	</script>
	<div id="popUp">
    

</div>
<!--footer_end-->

</body>
</html>


