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
                            <li><a href="TNHT.jsp">> Thư ngỏ của hiệu trưởng</a></li>
                            <li><a href="SMTN.jsp">> Sứ mạng-Tầm nhìn</a></li>
                            <li><a href="SDTC.jsp">> Sơ đồ tổ chức</a></li>
                            <li><a href="QTPT.jsp">> Quá trình phát triển</a></li>
                        </ul>
                    </div>
                    <a href="#" class="btn btn-primary">Tư vấn SV</a> <a href="#" class="btn btn-primary">Liên hệ</a>
                    <a href="../Admin.jsp" class="btn btn-primary">Thoát</a>
                </div>
            </div>
        </div>
        <form class="form-horizontal" action="EditInfor">
            <div class="form-group">

                <table width="100%">
                    <tr>
                        <td width="50%"><label class="col-sm-2 control-label" for="User" style="width: 50%;margin-right: auto">Ảnh Đại Diện :</label></td>
                        <td width="50%"> <img src="${entry.avatar}" class="media-object m-3" style="width: 50%"></td>
                    </tr>
                    <tr>

                    <td width="50%"><label class="col-sm-2 control-label m-3" for="User" style="width: 50%;">Họ Tên :</label></td>
                        <td width="50%">
                            <input name="fullname" value="${entry.fullname}" style="width: 100%">
                        </td>
                    </tr>
                    <tr>
                        <td width="50%"><label class="col-sm-2 control-label m-3" for="User" style="width: 50%;">Ngày Sinh :</label></td>
                        <td width="50%"> <input type="date" name="datetime" value="${entry.datetime}" style="width: 100%"></td>
                    </tr>
                    <tr>
                        <td width="50%"><label class="col-sm-2 control-label m-3" for="User"
                                        style="width: 50%;">MSSV :</label></td></td>
                        <td width="50%"> <input name="id" value="${entry.id}" style="width: 100%"></td>
                    </tr>
                    <tr>
                        <td width="50%"><label class="col-sm-2 control-label m-3" for="User"
                                        style="width: 50%;">Tên Tài Khoản :</label></td></td>
                        <td width="50%"> <input name="nameuser" value="${entry.nameuser}" style="width: 100%" readonly></td>
                    </tr>
                    <tr>
                        <td><label class="col-sm-2 control-label m-3" for="User"
                                        style="width: 50%;">Số Điện Thoại :</label></td></td>
                        <td> <input name="numphone" value="${entry.numphone}" style="width: 100%"></td>
                    </tr>
                    <tr>
                        <td><label class="col-sm-2 control-label m-3" for="User"
                                        style="width: 50%;">Gmail Trường :</label></td></td>
                        <td> <input name="gmail" value="${entry.gmail}" style="width: 100%"></td>
                    </tr>
                </table>
                <tr>
                    <table width="100%">
                    <td width="50%"><label class="col-sm-2 control-label m-3" for="User"
                               style="width: 50%;">Chức Vụ :</label></td>
                    <td width="20%"><input name="position" value="${entry.position}" readonly></td>
                    <td width="10%"><label >Thay Đổi :</label></td>
                    <td width="20%"><select name="position1" style="width: 100%">
                        <option value="Adm">Admin</option>
                        <option value="Tea">Giáo Viên</option>
                        <option value="Stu">Sinh Viên</option>
                    </select> </td>
                </tr>
                    </table>

                        <input type="submit" name="capnhat" value="Cập Nhật" width="100%"
                                               style="background-color: gray;" /></td>

            </div>
        </form>

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

