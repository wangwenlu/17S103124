<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="com.info.UserInfo" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
  	List<UserInfo> searchList=(List<UserInfo>)session.getAttribute("searchList");
  	%>
<!DOCTYPE html>  
<html lang="zh-CN">  
  
<head>  
    <meta charset="utf-8">  
    <meta http-equiv="X-UA-Compatible" content="IE=edge">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->  
    <title>������Ϣ����ƽ̨</title>  
    <meta name="keywords" content="��ߵ����˵�(�ɷ����۵�)">  
    <meta name="description" content="��ߵ����˵�(�ɷ����۵�)" />  
    <meta name="HandheldFriendly" content="True" />  
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">  
    <style>  
        .panel-group{max-height:770px;overflow-y:auto;}  
        .leftMenu{margin:10px;margin-top:5px;}  
        .leftMenu .panel-heading{font-size:14px;padding-left:20px;height:36px;line-height:36px;color:white;position:relative;cursor:pointer;}/*ת������ͼ��*/  
        .leftMenu .panel-heading span{position:absolute;right:10px;top:12px;}  
        .leftMenu .menu-item-left{padding: 2px; background: transparent; border:1px solid transparent;border-radius: 6px;}  
        .leftMenu .menu-item-left:hover{background:#C4E3F3;border:1px solid #1E90FF;}  
        body{  
            padding: 0;  
            margin: 0;  
            overflow-x:hidden;  
            background-color: #EBEFF2;  
        }  
        .form-group{  
            margin-right: 50px;  
        }  
        .form-control{  
            background-color: #EBEFF2;  
        }  
        .control-label{  
            margin-right: 10px;  
        }  
        #form{  
            margin-bottom: 20px;  
        }  
        th{  
            text-align: center;  
            background-color: #EBEFF2;  
        }  
        td{  
            text-align: center;  
        }  
        #head{  
            margin: auto;  
            background-color: #337AB7;  
            margin-bottom: 20px;  
            height: 40px;  
            font-weight: 700;  
            font-size: 18px;  
            line-height: 40px;  
            color: #ffffff;  
        }  
        #content{  
            background-color: #ffffff;  
            margin-top: 6px;  
            padding-top: 10px;  
            width: 1120px;  
            border-radius: 6px;  
        }  
        #contentHead{  
            padding-left: 10px;  
            text-align: left;  
            margin: auto;  
            background-color: lightblue;  
            margin-bottom: 20px;  
            height: 40px;  
            font-weight: 700;  
            font-size: 18px;  
            line-height: 40px;  
            color: #ffffff;  
        }  
        .pagination{  
           float: right;  
        }  
    </style>  
</head>  
  
<body>  
<div class="page-header text-center text-info" id="head">  
    ������Ϣ����ƽ̨
</div>  
    <div class="row">  
        <div class="col-md-2">  
            <div class="panel-group table-responsive" role="tablist">  
                <div class="panel panel-primary leftMenu">  
                    <!-- ����data-targetָ��Ҫ�۵��ķ����б� -->  
                    <div class="panel-heading" id="collapseListGroupHeading1" data-toggle="collapse" data-target="#collapseListGroup1" role="tab" >  
                        <h4 class="panel-title">  
                            <span class="glyphicon glyphicon-chevron-up right"></span>  
                        </h4>  
                    </div>  
                    <!-- .panel-collapse��.collapse�����۵�Ԫ�� .in��ʾҪ��ʾ���� -->  
                    <div id="collapseListGroup1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseListGroupHeading1">  
                        <ul class="list-group">  
                            <li class="list-group-item">  
                                <!-- ����data-targetָ��URL -->  
                                <button class="menu-item-left" data-target="test2.html">  
                                    <span class="glyphicon glyphicon-triangle-right"></span>�������
                                </button>  
                            </li>  
                            <li class="list-group-item">  
                                <button class="menu-item-left">  
                                    <span class="glyphicon glyphicon-triangle-right"></span>��ʱ����  
                                </button>  
                            </li>  
                            <li class="list-group-item">  
                                <button class="menu-item-left">  
                                    <span class="glyphicon glyphicon-triangle-right"></span>��ѯ��ʷ  
                                </button>  
                            </li>  
                        </ul>  
                    </div>  
                </div><!--panel end-->  
            </div>  
        </div>  
            <div class="col-md-10" id="content">  
                <div class="page-header text-center text-info" id="contentHead">  
                   �û����� 
                </div>  
               <!--   <form class="form-inline" role="form" id="form" action="/JpushServerTest/SearchUser">  
                    <div class="form-group">  
                        <label class="control-label" for="name">APIkey</label>  
                        <input type="text" name="apikey" class="form-control" id="name" placeholder="������APIkey">
                        <button type="submit" class="btn btn-info">�ύ</button>    
                    </div>  
                </form>  -->
                <div class="row">  
                    <div class="col-md-12">  
                        <table class="table table-hover table-bordered">  
                            <thead>  
                            <tr>  
                            	<th>userName</th>
                               	<th>APIkey</th>  
                                <th>APImaster</th>
                                <th>operation</th>
                                <th>operation</th> 
                            </tr>  
                            </thead>  
                            <tbody>  
                            <% if(searchList.isEmpty()){
                            	out.println("<tr>");
         						out.println("<td>");
         						out.println("���޴���");
         						out.println("</td>");
         						out.println("</tr>");
                            }
                            for(UserInfo user:searchList){
         						out.println("<tr>");
         						out.println("<td>");
         						out.println(user.ID);
         						out.println("</td>");
         						out.println("<td>");
         						out.println(user.APIkey);
         						out.println("</td>");
         						out.println("<td>");
         						out.println(user.APImaster);
         						out.println("</td>");
         	                    out.println("<td>");
         						out.println("<a href=\"Editor.jsp?userName="+user.ID+"&APIkey="+user.APIkey+"&APImaster="+user.APImaster+"\">");
         						out.println("����");
         						out.println("</a>");
         						out.println("</td>");
         						out.println("<td>");
         						out.println("<a href=\"insertGroup.jsp?userName="+user.ID+"&APIkey="+user.APIkey+"&APImaster="+user.APImaster+"\">");
         						out.println("�������");
         						out.println("</a>");
         						out.println("</td>");
         						out.println("</tr>");
         						}
         						%>
           
                            </tbody>  
                        </table>
                        <a href="index.jsp">����������</a>
                        <div class="row">  
                            <div class="col-md-12">  
                                <ul class="pagination">  
                                    <li><a href="#">�0�0</a></li>  
                                    <li class="active"><a href="#">1</a></li>  
                                    <!--<li class="disabled"><a href="#">2</a></li>  
                                    <li><a href="#">3</a></li>  
                                    <li><a href="#">4</a></li>  
                                    <li><a href="#">5</a></li>  
                                    <li><a href="#">�0�3</a></li>  -->
                                </ul>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>  
<!-- jQuery1.11.3 (necessary for Bo otstrap's JavaScript plugins) -->  
<script src="assets/js/jquery-1.11.1.js"></script>  
<!-- Include all compiled plugins (below), or include individual files as needed -->  
<script src="assets/bootstrap/js/bootstrap.min.js"></script>  
<script>  
    $(function(){  
        $(".panel-heading").click(function(e){  
            /*�л��۵�ָʾͼ��*/  
            $(this).find("span").toggleClass("glyphicon-chevron-down");  
            $(this).find("span").toggleClass("glyphicon-chevron-up");  
        });  
    });  
</script>  
</body>  
  
</html>  

