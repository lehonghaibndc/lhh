<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/BigWeb?autoReconnect=true&useSSL=false" user="root"
                   password="conmatto"/>
<sql:query var="TopicNotFinish"
           dataSource="${db}">select*from topic where topic.Finish=0 and topic.NameUser="${user}"</sql:query>
<sql:query var="message" dataSource="${db}">select * from teachersend,topic where topic.NameUser=teachersend.NameUser</sql:query>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Đồ án cuối kì</title>
    <link href="libs/Div.css" rel="stylesheet">
    <!-- TextBox input search -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet">
    <!-- Search Table -->
    <!--button groups-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="color">
    <!-- head wed -->
    <div class="container">
        <div class="head">
            <div class="logo">
                <img alt="Logo" src="libs/Logo HCMUTE-2014.jpg" width="180"
                     height="180">
            </div>
            <div class="namewed">
                <h1>
                    <b>QUẢN LÍ ĐỀ TÀI NGUYÊN CỨU KHOA HỌC</b>
                </h1>
                <h3>
                    <u>Trường Đại Học Sư Phạm Kĩ Thuật TP.HCM</u>
                </h3>
                <div class="search">
                    <button type="button" class="btn btn-info">
                        <span class="glyphicon glyphicon-search"></span> Search
                    </button>
                </div>
                <div class="search">
                    <div class="col-sm-10">
                        <input class="form-control" type="text" id="sm">
                    </div>

                </div>

                <div class="btn-group btn-group-justified">
                    <a href="Form.jsp" class="btn btn-primary">Trang chủ</a>
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary dropdown-toggle"
                                data-toggle="dropdown">
                            Giới thiệu <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="TNHT.jsp">> Thư ngỏ của hiệu trưởng</a></li>
                            <li><a href="SMTN.jsp">> Sứ mạng-Tầm nhìn</a></li>
                            <li><a href="SDTC.jsp">> Sơ đồ tổ chức</a></li>
                            <li><a href="QTPT.jsp">> Quá trình phát triển</a></li>
                        </ul>
                    </div>
                    <a href="#" class="btn btn-primary">Tư vấn SV</a> <a href="#"
                                                                         class="btn btn-primary">Liên hệ</a> <a
                        href="Form.jsp"
                        class="btn btn-primary">Đăng Xuất</a>
                </div>
            </div>
        </div>
        <hr width="90%" size="10px" align="center"/>
        <!-- body wed -->

        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">Đề Tài Chưa Nộp</a></li>
            <li><a data-toggle="tab" href="#menu1">Tin Nhắn</a></li>

        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <table id="myTable">
                    <thead class="header">
                    <th style="width: 40%">Tên Đề Tài</th>
                    <th style="width: 40%">Tên Giáo Viên</th>
                    <th style="width: 20%">Tải Lên</th>
                    </thead>
                    <tbody>
                    <c:forEach var="listTNF" items="${TopicNotFinish.rows}">
                        <tr>
                            <td>${listTNF.NameTopic}</td>
                            <td>${listTNF.NameTea}</td>
                            <td>
                                <a href="#"
                                   class="btn btn-primary" class="btn btn-info btn-lg"
                                   data-toggle="modal" data-target="#myModal">Nộp Bài</a>
                                <div id="myModal" class="modal fade" role="dialog">
                                    <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">
                                                    &times;
                                                </button>
                                                <h4 class="modal-title">Link Nộp Bài:</h4>
                                            </div>
                                            <form action="/UpdateTopic" method="post" enctype="multipart/form-data">
                                            <div class="modal-body">

                                                <div class="form-group">
                                                    <input class="form-control" type="file" name="link">
                                                    <input value="${user}" name="nameuser" style="visibility: collapse;"/>
                                                </div>
                                            </div>
                                                <input value="${user}">
                                            <div class="modal-footer">


                                                <input type="submit" style="width: 100%;" value="Xác Nhận"
                                                       name="login">
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <a href="SignupTopic.jsp" class="btn btn-primary" style="width: 100%; background-color: darkgray;margin-top: 20px">Đăng
                    Kí Đề Tài</a>
            </div>
            <div id="menu1" class="tab-pane fade">
                <table id="myTable">
                    <thead class="header">
                        <th style="width: 60%;">Giáo Viên</th>
                        <th style="width: 40%;">Nội Dung</th>
                    </thead>
                    <tbody>
                    <c:forEach var="listmess" items="${message.rows}">
                        <tr>
                            <td>${listmess.NameTea}</td>
                            <td>${listmess.Content}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <hr width="90%" size="10px" align="center"/>
    </div>
    <!-- foot wed -->
    <div class="Logo">
        <div>
            <h6>
                <i>Copyright © 2013, Trường Đại Học Sư Phạm Kỹ Thuật - Tp.HCM</i>
            </h6>
        </div>
    </div>
    <br/>
    <div class="Logo">
        <div>
            <h6>
                <i><u>Địa chỉ: </u>1 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ
                    Đức, Thành phố Hồ Chí Minh.</i>
            </h6>
        </div>
    </div>
    <br/>
    <div class="Logo">
        <div>
            <h6>
                <i><u>Điện thoại: </u> (+84 - 8) 38968641 - (+84 - 8) 38961333</i>
            </h6>
        </div>
    </div>
    <br/>
    <div class="Logo">
        <div>
            <h6>
                <i><u>Fax: </u> (+84-8) 38964922</i>
            </h6>
        </div>
    </div>
    <br/>
    <div class="Logo">
        <div>
            <h6>
                <i><u>E-mail: </u> pmo@hcmute.edu.vn</i>
            </h6>
        </div>
    </div>
    <br/>
</div>
</div>
</body>
</html>