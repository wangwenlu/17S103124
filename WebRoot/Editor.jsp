<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Editor.jsp' starting page</title>
    
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
<form action="/JpushServerTest/SendServlet" method="post">
    <script id="container" name="content" type="text/plain">
    </script>
    <%String apikey=request.getParameter("APIkey"); %>
    <%String apimaster=request.getParameter("APImaster"); %>
    <input type="hidden" name="apikey" value="<%=apikey%>">
    <input type="hidden" name="apimaster" value="<%=apimaster %>">
    <input type="submit" value="submit">
    <script type="text/javascript" src="ueditor.config.js"></script>
    <script type="text/javascript" src="ueditor.all.js"></script>
    <script type="text/javascript" src="myCombox.js"></script>
    <script type="text/javascript">
        var ue = UE.getEditor('container');
    </script>
    </form>
</body>
</html>
