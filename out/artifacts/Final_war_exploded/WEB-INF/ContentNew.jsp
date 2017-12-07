<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                            <li><a href="#">> Thư ngỏ của hiệu trưởng</a></li>
                            <li><a href="#">> Sứ mạng-Tầm nhìn</a></li>
                            <li><a href="#">> Sơ đồ tổ chức</a></li>
                            <li><a href="#">> Quá trình phát triển</a></li>
                        </ul>
                    </div>
                    <a href="#" class="btn btn-primary">Tư vấn SV</a> <a href="#" class="btn btn-primary">Liên hệ</a>
                    <a href="../Admin.jsp" class="btn btn-primary">Thoát</a>
                </div>
            </div>
        </div>
        <div align="center"><h2>${entry.namepage}</h2></div>
        <div align="left"><h3 style="padding-left: 40px">${entry.content}</h3></div>
        <hr width="90%" size="10px" align="center"/>


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

</div>
</body>
</html>
