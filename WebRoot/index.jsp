<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="com.info.UserInfo" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
    <!-- Bootstrap3.3.5 CSS -->  
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
                            <form action="g.jsp" method="post">
                            <li class="list-group-item">  
                                <button class="menu-item-left" type="submit">  
                                    <span class="glyphicon glyphicon-triangle-right"></span>�������  
                                </button>  
                            </li>
                            </form>
                            <form action="/JpushServerTest/TimeSchedule" method="post">
                            <li class="list-group-item">  
                                <button class="menu-item-left" type="submit">  
                                    <span class="glyphicon glyphicon-triangle-right"></span>��ʱ����  
                                </button>  
                            </li>
                            </form>
                            <form action="h.jsp" method="post">
                            <li class="list-group-item">  
                                <button class="menu-item-left" type="submit">  
                                    <span class="glyphicon glyphicon-triangle-right"></span>��ѯ��ʷ 
                                </button>  
                            </li>
                            </form>
                        </ul>  
                    </div>  
                </div><!--panel end-->  
            </div>  
        </div>  
            <div class="col-md-10" id='content'>  
                <div class="page-header text-center text-info" id="contentHead">  
                   �û����� 
                </div>  
                <form class="form-inline" role="form" id="form" action="/JpushServerTest/SearchUser" method="post">  
                    <div class="form-group">  
                        <label class="control-label" for="name">�û���</label>  
                        <input type="text" name="apikey" class="form-control" id="name" placeholder="�������û���">
                        <button type="submit" class="btn btn-info">�ύ</button>    
                    </div>  
                </form>  
            </div>  
        </div>   
<script src="assets/js/jquery-1.11.1.js"></script>  
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

