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
  	List<UserInfo> timeList=(List<UserInfo>)session.getAttribute("timeList");
  	%>
    <div class="container">    
      <div class="table-responsive">          
       <table class="table table-striped table-bordered">
       <br/>
       <caption style="padding:20px 0px;font-size:20px">用户信息表</caption>
       <br/>
         <thead>
           <tr>
             <th>用户名</th>
             <th>APIkey</th>
             <th>APImaster</th>
             <th>操作</th>
           </tr>
         </thead>
         <tbody>
         <% for(int i=0;i<timeList.size();i++){
         	out.println("<tr>");
         	out.println("<td>");
         	out.println(timeList.get(i).ID);
         	out.println("</td>");
         	out.println("<td>");
         	out.println(timeList.get(i).APIkey);
         	out.println("</td>");
         	out.println("<td>");
         	out.println(timeList.get(i).APImaster);
         	out.println("</td>");
         	out.println("<td>");
         	out.println("<a href=\"AlarmEditor.jsp?APIkey="+timeList.get(i).APIkey+"&APImaster="+timeList.get(i).APImaster+"\">");
         	out.println("发送");
         	out.println("</a>");
         	out.println("</td>");
         	out.println("</tr>");
         	}
         %>
           
         </tbody>
       </table>
      </div>
	<a href="index.jsp">返回主页面</a>
     
    </div>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>

</html>