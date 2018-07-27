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
  	List<UserInfo> groupList=(List<UserInfo>)session.getAttribute("groupList");
  	%>
    <div class="container">
    <form class="form-inline" role="form" id="form" action="GroupEditor.jsp">  
      <div class="table-responsive">          
       <table class="table table-striped" border='3'>
       </br>
       <caption style="padding:20px 0px;font-size:20px">用户信息表</caption>
       </br>
         <thead>
           <tr>
           	 <th>GroupId</th>
             <th>APIkey</th>
             <th>APImaster</th>
           </tr>
         </thead>
         <tbody>
         <% for(int i=0;i<groupList.size();i++){
         	out.println("<tr>");
         	out.println("<td>");
         	out.println(groupList.get(i).GroupId);
         	out.println("</td>");
         	out.println("<td>");
         	out.println(groupList.get(i).APIkey);
         	out.println("</td>");
         	out.println("<td>");
         	out.println(groupList.get(i).APImaster);
         	out.println("</td>");
         	//out.println("<td>");
         	//out.println("<a href=\"Editor.jsp?APIkey="+userList.get(i).APIkey+"&APImaster="+userList.get(i).APImaster+"\">");
         	//out.println("发送");
         	//out.println("</a>");
         	//out.println("</td>");
         	out.println("</tr>");
         	}
         %>
           
         </tbody>
       </table>
       <button type="submit" class="btn btn-info">群组发送</button>
      </div>
	 </form>
     <a href="index.jsp">返回主界面</a>
    </div>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>

</html>