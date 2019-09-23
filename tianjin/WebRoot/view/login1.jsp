<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="misapplication-tap-highlight" content="no"/>
<meta name="HandheldFriendly" content="true"/>
<meta name="MobileOptimized" content="320"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black"/>
<meta name="applicable-device" content="pc,mobile"/>
<title>投票结果_登陆</title>
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
<link rel="stylesheet" type="text/css" href="http://ats.taiwan.cn/Topic/2017/fxbj2017/css/fxbj_result.css"/>
<script src="http://ats.taiwan.cn/taiwan/js/jquery-min.js"></script>
</head>

<body>
<script type="text/javascript">  
var basePath = "<%=basePath%>";  
$(function(){  
    checkcode();  
});  
function checkcode(){  
    var XMLHttp = null;  
    if (window.XMLHttpRequest) {  
        XMLHttp = new XMLHttpRequest()  
    } else if (window.ActiveXObject) {  
        XMLHttp = new ActiveXObject("Microsoft.XMLHTTP");  
    }  
    XMLHttp.onreadystatechange = function() {  
        if (XMLHttp.readyState == 4) {  
            document.getElementById("imageCode").src = basePath  
                    + "image/getImage?" + Math.random();//改变验证码图片    
        }  
    }  
    //将请求发送出去    
    //加上new Date()防止浏览器缓存，不重新发送请求  
    XMLHttp.open("GET", basePath + "image/getImage?" + Math.random(), true);  
    XMLHttp.send(null);  
}  
</script>
<div class="box fxbj_result">
  <div class="bor">
    <h3>发现北京主播评选，您支持谁？ </h3>
  </div>
  <form action="login" method="post" class="land">
    <div>
      <label>姓名：</label>
      <input name="user" type="text">
    </div>
    <div>
      <label>密码：</label>
      <input name="password" type="password">
    </div>
    <div>
      <label for="">验证码：</label>
      <input class="safecodeText" name="code" type="text" placeholder="验证码" />
      <a href="javascript:checkcode()"><img id="imageCode" alt="" src=""  style="cursor: pointer;" /><img src="http://ats.taiwan.cn/other/sCampSignUp2017/images/reload.png" /></a></div>
    <div>
      <button type="submit" class="dl">登陆</button>
    </div>
  </form>
</div>
<script type="text/javascript">
 var a = '${errorMsg}';
 if(a!=="")
 {
  alert(a);
 } ;
</script>
</body>
</html>
