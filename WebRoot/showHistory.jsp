<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.info.historyInfo" %>
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
  	List<historyInfo> historyList=(List<historyInfo>)session.getAttribute("historyList");
  	%>
    <div class="container">    
      <div class="table-responsive">          
       <table class="table table-striped" border='5'>
       <br/>
       <caption style="padding:20px 0px;font-size:20px">历史信息表</caption>
       <br/>
         <thead>
           <tr>
             <th>title</th>
             <th>content</th>
             <th>日期</th>
           </tr>
         </thead>
         <tbody>
         <% 
         if(historyList.isEmpty()){
         	out.println("<tr>");
         	out.println("<td>");
         	out.println("该时段并无历史记录");
         	out.println("</td>");
         }
         	for(int i=0;i<historyList.size();i++){
         		historyInfo temp=historyList.get(i);
         		//if (i!=0 && i%15==0)
         		out.println("<tr>");
         		out.println("<td>");
         		out.println(temp.title);
         		out.println("</td>");
         		out.println("<td>");
         		out.println(temp.content);
         		out.println("</td>");
         		out.println("<td>");
         		out.println(temp.time);
         		out.println("</td>");
         		out.println("</tr>");
         		}
         %>
           
         </tbody>
       </table>
       <a href="index.jsp">返回主界面</a>
      </div>

     
    </div>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>

</html>