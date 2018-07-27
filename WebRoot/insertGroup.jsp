<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insertGroup.jsp' starting page</title>
    
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
    <form action="/JpushServerTest/insertGroup" method="post">
    	<select name="group">
		<option>-请选择-</option>
		<option>足球</option>
		<option>篮球</option>
		<option>网球</option>
		</select>
		</br>
		<%String apikey=request.getParameter("APIkey"); %>
    	<%String apimaster=request.getParameter("APImaster"); %>
    	<%String username=request.getParameter("userName"); %>
    	<input type="hidden" name="apikey" value="<%=apikey%>">
    	<input type="hidden" name="username" value="<%=username%>">
    	<input type="hidden" name="apimaster" value="<%=apimaster %>">
    	</br>
		<input type="submit" value="提交"> 
    </form>
  </body>
</html>
