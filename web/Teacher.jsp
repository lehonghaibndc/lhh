<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/BigWeb?autoReconnect=true&useSSL=false" user="root"
                   password="conmatto"/>
<c:if test="${empty sessionScope.user }">
    <c:redirect url="Form.jsp"/>
</c:if>
<sql:query var="nameuser" dataSource="${db}">select * from inforacc where inforacc.NameUser="${user}"</sql:query>
<sql:query var="liststu"
           dataSource="${db}">select * from Topic where Topic.NameTea="${nameuser.rows[0].FullName}"</sql:query>
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
<html>
<body>
<!-- head wed -->
<div class="color">
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
                    <a href="#" class="btn btn-primary">Tư vấn SV</a>
                    <a href="#" class="btn btn-primary">Liên hệ</a>
                    <a href="Logout.jsp" class="btn btn-primary">Đăng Xuất</a>
                </div>
            </div>
        </div>
        <hr width="90%" size="10px" align="center"/>
        <div>
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                <li><a data-toggle="tab" href="#menu1">Đề Tài</a></li>
                <li><a data-toggle="tab" href="#menu2">Tin Nhắn</a></li>

            </ul>

            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <table id="myTable">
                        <thead class="header">
                        <tr>
                            <th style="width: 40%">Name</th>
                            <th style="width: 40%">Tên Tài Khoản</th>
                            <th style="width: 20%">Thông Tin</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="liStu" items="${liststu.rows}">
                            <tr>
                                <form action="InforStudent">
                                    <td>${liStu.NameStu}<input type="text" name="userstu" value="${liStu.NameUser}"
                                                               style="visibility: hidden"/></td>
                                    <td>${liStu.NameUser}</td>
                                    <td>
                                        <button type="submit">
                                            <span class="glyphicon glyphicon-pencil"></span> Chi Tiết
                                        </button>
                                    </td>
                                </form>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div id="menu1" class="tab-pane fade">
                    <table id="myTable">
                        <thead class="header">
                        <tr>
                            <th style="width: 40%">Tên Đề Tài</th>
                            <th style="width: 40%">Tên Sinh Viên</th>
                            <th style="width: 20%">Cập Nhật Điểm</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="liStu" items="${liststu.rows}">
                            <tr>
                                <form action="UpdateScore">
                                    <td>${liStu.NameToPic}<input type="text" name="nametopic" value="${liStu.NameTopic}"
                                                                 style="visibility: hidden"/></td>
                                    <td>${liStu.NameStu}<input type="text" name="userstu" value="${liStu.NameStu}"
                                                               style="visibility: hidden"/></td>
                                    <td>
                                        <a href="#"
                                           class="btn btn-primary" class="btn btn-info btn-lg"
                                           data-toggle="modal" data-target="#myModal">Đánh Giá</a>
                                        <div id="myModal" class="modal fade" role="dialog">
                                            <div class="modal-dialog">

                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">
                                                            &times;
                                                        </button>
                                                        <h4 class="modal-title">Đánh Giá Đề Tài:</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="form-group">
                                                            <label for="usr">Đánh Giá :</label> <input type="text" class="form-control" id="usr" name="username">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="pwd">Điểm:</label> <input type="number" class="form-control" id="pwd" name="score">
                                                        </div>
                                                    </div>

                                                    <div class="modal-footer">


                                                        <input type="submit" style="width: 100%;" value="Xác Nhận"
                                                               name="login">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </form>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <form action="SaveMessage">
                        <input name="nametea" type="text" value="${nameuser.rows[0].FullName}" style="visibility: hidden">
                        <input name="nameuser" type="text" value="${user}" style="visibility: hidden">
                        <textarea class="form-control" rows="5" id="comment" name="content"></textarea>
                        <button type="submit" style="margin-top: 20px">
                            <span class="glyphicon glyphicon-pencil"></span> Gửi
                        </button>
                    </form>
                </div>
            </div>


</body>
</html>
