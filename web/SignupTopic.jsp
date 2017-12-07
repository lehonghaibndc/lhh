<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
							class="btn btn-primary">Liên hệ</a> <a href="Form.jsp"
							class="btn btn-primary">Đăng Xuất</a>
					</div>
				</div>
				<hr width="90%" size="10px" align="center" />
				<form class="form-horizontal" action="AddTopic">
					<div class="form-group">
						<table width="100%">
							<tr>
								<td><label class="col-sm-2 control-label" for="NameV"
									style="width: 50%;">Tên Đề Tài(Tiếng Việt) :</label></td>
								<td><div class="col-sm-10">
										<input class="form-control" id="NameV" type="text"
											name="NameV">
									</div></td>
							</tr>
							<tr>
								<td><label class="col-sm-2 control-label" for="NameE"
									style="width: 50%;">Tên Đề Tài(Tiếng Anh) :</label></td>
								<td><div class="col-sm-10">
										<input class="form-control" id="nametopic" type="text"
											name="NameE">
									</div></td>
							</tr>


							<tr>
								<td><label class="col-sm-2 control-label" for="NameI"
									style="width: 50%;">Giáo Viên Hướng Dẫn :</label></td>
								<td><div class="col-sm-10">
										<input class="form-control" id="NameStu" type="text"
											name="nametea">
									</div></td>
							</tr>
							<tr>
							<td>
								<label class="col-sm-2 control-label" for="NameI"
								style="width: 50%;">Tên Sinh Viên:</label>
							</td>
							<td><div class="col-sm-10">
								<input class="form-control"  type="text"
									   name="namestu">
							</div></td>

						</tr>
							<tr>
								<td>
									<label class="col-sm-2 control-label" for="NameI"
									style="width: 50%;">Tên Tài Khoản:</label>
								</td>
								<td><div class="col-sm-10">
									<input class="form-control"  type="text"
										   name="nameuser">
								</div></td>

							</tr>
							<tr>
								<td><label class="col-sm-2 control-label" for="GmailI"
									style="width: 50%;">Gmail :</label></td>
								<td><div class="col-sm-10">
										<input class="form-control" id="GmailI" type="text"
											name="gmail">
									</div></td>
							</tr>
							<tr>
								<td><label class="col-sm-2 control-label" for="Content"
									style="width: 50%;">Nội Dung Đề Tài :</label></td>
								<td><div class="col-sm-10">
										<textarea class="form-control" rows="5" id="Content"></textarea>
									</div></td>
							</tr>
						</table>
						<h2></h2>
						<input type="submit" name="Xác Nhận" value="Xác Nhận" width="100%"
							style="background-color: gray;" />
					</div>
				</form>
				<hr width="90%" size="10px" align="center" />


				<div class="Logo">
					<div>
						<h6>
							<i>Copyright © 2013, Trường Đại Học Sư Phạm Kỹ Thuật - Tp.HCM</i>
						</h6>
					</div>
				</div>
				<br />
				<div class="Logo">
					<div>
						<h6>
							<i><u>Địa chỉ: </u>1 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ
								Đức, Thành phố Hồ Chí Minh.</i>
						</h6>
					</div>
				</div>
				<br />
				<div class="Logo">
					<div>
						<h6>
							<i><u>Điện thoại: </u> (+84 - 8) 38968641 - (+84 - 8)
								38961333</i>
						</h6>
					</div>
				</div>
				<br />
				<div class="Logo">
					<div>
						<h6>
							<i><u>Fax: </u> (+84-8) 38964922</i>
						</h6>
					</div>
				</div>
				<br />
				<div class="Logo">
					<div>
						<h6>
							<i><u>E-mail: </u> pmo@hcmute.edu.vn</i>
						</h6>
					</div>
				</div>
				<br />
			</div>
		</div>
	</div>
</body>
</html>