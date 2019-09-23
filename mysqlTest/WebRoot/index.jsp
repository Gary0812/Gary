<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
   <div>
  
   <form action="LoginServlet?method=log" method="post" >

		<table>
			<tr>	<!--用户名的表单域-->
				<td><input   name="name" /> </td>
			</tr>
			<tr>	<!--密码的表单域-->
				<td><input    name="password" /> </td>
			</tr>
			<tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="登录" />
			</tr>
	</table>	
	</form>
 
   </div>
  </body>
</html>
   