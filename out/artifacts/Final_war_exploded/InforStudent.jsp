<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/BigWeb?autoReconnect=true&useSSL=false" user="root" password="conmatto" />

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
    <script>
        $(document).ready(function(){
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
</head>
<body>
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
                    <a href="#" class="btn btn-primary">Tư vấn SV</a> <a href="#" class="btn btn-primary">Liên hệ</a>
                    <a href="Admin.jsp" class="btn btn-primary">Thoát</a>
                </div>
            </div>
        </div>
        <form class="form-horizontal" action="EditInfor">
            <div class="form-group">

                <table width="100%">
                    <tr>
                        <td width="50%"><label class="col-sm-2 control-label" for="User" style="width: 50%;margin-right: auto">Ảnh Đại Diện :</label></td>
                        <td width="50%"> <img src="${inforstu.avatar}" class="media-object m-3" style="width: 50%"></td>
                    </tr>
                    <tr>

                        <td width="50%"><label class="col-sm-2 control-label m-3" for="User" style="width: 50%;">Họ Tên :</label></td>
                        <td width="50%">
                            <label class="col-sm-2 control-label m-3" for="User" style="width: 50%;">${inforstu.fullname}</label>
                        </td>
                    </tr>
                    <tr>
                        <td width="50%"><label class="col-sm-2 control-label m-3" for="User" style="width: 50%;">Ngày Sinh :</label></td>
                        <td width="50%"> <label class="col-sm-2 control-label m-3" for="User" style="width: 50%;">${inforstu.datetime}</label></td>
                    </tr>
                    <tr>
                        <td width="50%"><label class="col-sm-2 control-label m-3" for="User"
                                               style="width: 50%;">MSSV :</label></td></td>
                        <td width="50%"><label class="col-sm-2 control-label m-3" for="User" style="width: 50%;">${inforstu.id}</label></td>
                    </tr>
                    <tr>
                        <td width="50%"><label class="col-sm-2 control-label m-3" for="User"
                                               style="width: 50%;">Tên Tài Khoản :</label></td></td>
                        <td width="50%"><label class="col-sm-2 control-label m-3" for="User" style="width: 50%;">${inforstu.nameuser}</label></td>
                    </tr>
                    <tr>
                        <td><label class="col-sm-2 control-label m-3" for="User"
                                   style="width: 50%;">Số Điện Thoại :</label></td></td>
                        <td> <label class="col-sm-2 control-label m-3" for="User" style="width: 50%;">${inforstu.numphone}</label></td>
                    </tr>
                    <tr>
                        <td><label class="col-sm-2 control-label m-3" for="User"
                                   style="width: 50%;">Gmail Trường :</label></td></td>
                        <td> <label class="col-sm-2 control-label m-3" for="User" style="width: 50%;">${inforstu.gmail}</label></td>
                    </tr>
                </table>


                <a href="Teacher.jsp" class="btn btn-info btn-sm" style="width: 100%;margin-top: 20px">
                <span class="glyphicon glyphicon-pencil"></span> Quay Lại </a>

            </div>
        </form>

</body>
</html>
