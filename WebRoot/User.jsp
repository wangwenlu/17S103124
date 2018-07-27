<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.info.UserInfo" %>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8"> 
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css">
  </head>

  <body>
  	<%
  	List<UserInfo> userList=(List<UserInfo>)session.getAttribute("userList");
  	%>
    <div class="container">    
      <div class="table-responsive">          
       <table class="table table-striped table-bordered">
       <br/>
       <caption>用户信息表</caption>
       <br/>
         <thead>
           <tr>
             <th>APIkey</th>
             <th>APImaster</th>
             <th>操作</th>
           </tr>
         </thead>
         <tbody>
         <% for(int i=0;i<userList.size();i++){
         	out.println("<tr>");
         	out.println("<td>");
         	out.println(userList.get(i).APIkey);
         	out.println("</td>");
         	out.println("<td>");
         	out.println(userList.get(i).APImaster);
         	out.println("</td>");
         	out.println("<td>");
         	out.println("<a href=\"Editor.jsp?APIkey="+userList.get(i).APIkey+"&APImaster="+userList.get(i).APImaster+"\">");
         	out.println("发送");
         	out.println("</a>");
         	out.println("</td>");
         	out.println("</tr>");
         	}
         	//out.println("<td>");
         %>
           
         </tbody>
       </table>
      </div>

     
    </div>

    <!-- JavaScript æ¾ç½®å¨ææ¡£æåé¢å¯ä»¥ä½¿é¡µé¢å è½½éåº¦æ´å¿« -->
    <!-- å¯é: åå« jQuery åº -->
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <!-- å¯é: åå¹¶äº Bootstrap JavaScript æä»¶ -->
    <script src="https://apps.bdimg.com/libs/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>

</html>