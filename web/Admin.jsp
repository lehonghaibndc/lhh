<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/BigWeb?autoReconnect=true&useSSL=false" user="root" password="conmatto" />
<c:if test="${empty sessionScope.user}">

    <c:redirect url="Form.jsp"/>
</c:if>
<sql:query var="entriesTopic" dataSource="${db}">select * from Topic where Topic.Finish=1</sql:query>
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
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
</head>
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
                    <a href="#" class="btn btn-primary">Tư vấn SV</a> <a href="#"
                                                                         class="btn btn-primary">Liên hệ</a> <a
                        href="Logout.jsp"
                        class="btn btn-primary">Đăng Xuất</a>
                </div>
            </div>
        </div>
        <!-- body wed -->
        <div>
            <hr width="90%" size="10px" align="center"/>
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                <li><a data-toggle="tab" href="#menu1">Quản Lí Tài Khoản</a></li>
                <li><a data-toggle="tab" href="#menu2">Quản Lí Đề Tài</a></li>
            </ul>

            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <h2></h2>
                    <form action="/UpdateNew" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="comment">Ảnh Minh Họa:</label>
                            <input class="form-control" type="file" name="image" id="image">
                            <label for="comment">Tiêu Đề:</label>
                            <input class="form-control" type="text" name="title">
                            <label for="comment">Nội Dung:</label>
                            <textarea class="form-control" rows="5" name="content"></textarea>
                            <label class="checkbox-inline">
                                <input type="radio" value="new" name="checkbox">Tin Tức-Sự Kiện
                            </label>
                            <label class="checkbox-inline">
                                <input type="radio" value="interestion" name="checkbox">
                                Quan Tâm
                            </label>
                        </div>
                        <%--<script>--%>
                        <%--function upload()--%>
                        <%--{--%>
                        <%--var data = new FormData(),--%>
                        <%--files = document.getElementById("image").files;--%>

                        <%--data.append('image', files[0]);--%>

                        <%--$.ajax({--%>
                        <%--url: 'UpdateNew',--%>
                        <%--type: 'post',--%>
                        <%--dataType: 'json',--%>
                        <%--data: data,--%>
                        <%--processData: false,--%>
                        <%--contentType: false,--%>
                        <%--success: function(image)--%>
                        <%--{--%>
                        <%--// whatever you want to do--%>
                        <%--}--%>
                        <%--});--%>
                        <%--};--%>
                        <%--</script>--%>
                        <button type="submit" class="btn btn-info">
                            <span class="glyphicon glyphicon-search"></span> Thêm
                        </button>
                    </form>
                </div>
                <div id="menu1" class="tab-pane fade">
                    <input class="form-control" id="myInput" type="text" placeholder="Search..">

                    <table>
                        <thead>
                        <tr class="header">
                            <th style="width: 60%;">Tên</th>
                            <th style="width: 40%;">Chức vụ</th>
                            <th>Xử lí</th>
                        </tr>
                        </thead>
                        <tbody id="myTable">
                        <c:forEach items="${entriesAcc}" var="entry">
                            <tr>

                                <form action="Information">
                                    <td><input name="nameuser" value="${entry.nameuser}" readonly/></td>
                                    <td>${entry.position}</td>
                                    <td>
                                        <button type="submit" class="btn btn-info">
                                            <span class="glyphicon glyphicon-search"></span> Chi Tiết
                                        </button>
                                    </td>
                                </form>
                            </tr>
                        </c:forEach>
                        </tbody>

                    </table>

                </div>
                <div id="menu2" class="tab-pane fade">

                    <input type="text" id="myInput" onkeyup="myFunction()"
                           placeholder="Search for names..">
                    <table width="100%">
                        <thead>
                        <tr class="header">

                            <th style="width: 30%;">TênSV</th>
                            <th style="width: 50%;">Tên Đề Tài</th>
                            <th style="width: 20%;">Điểm</th>

                        </tr>
                        </thead>
                        <tbody id="myTable">
                        <c:forEach var="topic" items="${entriesTopic.rows}">

                            <tr>
                                <td>${topic.NameTopic}</td>
                                <td>${topic.Score}</td>

                                <td>
                                    <a href="AddTopicRefer?nametopic=${topic.NameTopic}&link=${topic.Introduction}"><button>Thêm Tham Khảo</button></a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>


                    </table>
                </div>
            </div>
        </div>
        <hr width="90%" size="10px" align="center"/>
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
</div>
</body>
</html>