<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>投票结果</title>
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
  投票总数：${list.get(0).total}
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <c:forEach var="u" items="${list}"> 
 <tr>
 <td>${u.ipArea}</td>
  <td>${u.percent}</td>
  <td>有效IP：${u.count}</td>
  </tr>
</c:forEach>
  </table>
</div>
<script>
$('tr:even').addClass("lan");
$('td:nth-child(3n)').addClass("t_a");
</script>
</body>
</html>

