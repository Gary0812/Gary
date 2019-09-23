<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="threeDES.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<title>投票结果_修改</title>
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
<link rel="stylesheet" type="text/css" href="http://ats.taiwan.cn/Topic/2017/wzhtj2017/css/fxbj_result.css"/>
<script src="http://ats.taiwan.cn/taiwan/js/jquery-min.js"></script>
</head>

<body>
<div class="box fxbj_result">
  <div class="bor">
    <h3>“玩转天津”主播评选，您支持谁？ </h3>
  </div>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="modi">
   <c:forEach var="u" items="${list}"> 
    <tr>
    <td>${u.id}</td>
      <td>${u.subject}</td>
      
      <td>${u.vote_t}</td>
      <c:set var="m" value="${u.id}" />
      <%String id=(String)pageContext.getAttribute("m").toString();
     
    request.setAttribute("id",AESUtil.encrypt(id));%>
      <td class="mo"> <input  name="${id}" type="text" value="${u.vote_f}">
       
       
  <%--    <a id="${u.id}" href=""  class="xg">  修改</a></td> --%>
     <a id="${id}" href="javascript:void(0);"  class="xg">  修改</a></td>
    </tr>
    </c:forEach>
   
  </table>
</div>
<script type="text/javascript">
$(document).ready(function(){
$(".xg").click(function(){
 
   var id=$(this).attr("id");

   var val = document.getElementsByName(id)[0].value;
  //var val= $("input[name="+id+"]").val()  ;


  //location.href = '${pageContext.request.contextPath}/modify?id='+id+'&vote_f='+val;
 location.href = '${pageContext.request.contextPath}/modify/'+id+"/"+val;
});
    
});
</script>
</body>
</html>

