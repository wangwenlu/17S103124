<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>g.html</title>
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	<style>
	.vertical-center{
  			position: absolute;
  			top: 10%;
  			left: 50%;
  			transform: translate(-50%, -50%);
			}
	</style>
  </head>
  
  <body>
    <form class="form-inline" role="form" id="form" action="/JpushServerTest/GroupManager" method="post">  
                    <div class="vertical-center" >  
                        <label class="control-label" for="name">组名</label>  
                        <input type="text" name="groupName" class="form-control" id="name" placeholder="输入组名">
                        <button type="submit" class="btn btn-info">提交</button>
                        </br> </br></br>   
                    	<a href="index.jsp">返回主页面</a>
                    </div>
                    
                </form> 
          		
  </body>
</html>
