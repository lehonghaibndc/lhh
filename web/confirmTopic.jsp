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
				</div>
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
					<a href="Admin.jsp" class="btn btn-primary">Tư vấn SV</a> <a
						href="#" class="btn btn-primary">Liên hệ</a> <a href="#"
						class="btn btn-primary" class="btn btn-info btn-lg"
						data-toggle="modal" data-target="#myModal">Đăng nhập</a>
					<div id="myModal" class="modal fade" role="dialog">
						<div class="modal-dialog">
							<form action="Admin.jsp">
								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Đăng Nhập Tài Khoản</h4>
									</div>
									<div class="modal-body">
										<div class="form-group">
											<label for="usr">Tên Đăng Nhập:</label> <input type="text"
												class="form-control" id="usr">
										</div>
										<div class="form-group">
											<label for="pwd">Mật Khẩu:</label> <input type="password"
												class="form-control" id="pwd">
										</div>
									</div>
									<div class="form-group">
										<label class="radio-inline"
											style="margin-left: 20px; padding-left: 60px;"><input
											type="radio" name="optradio">Admin</label> <label
											class="radio-inline"><input type="radio"
											name="optradio">NV Quản Lí</label> <label
											class="radio-inline"><input type="radio"
											name="optradio">Giảng Viên</label> <label
											class="radio-inline"><input type="radio"
											name="optradio">Sinh Viên</label>
									</div>
									<div class="modal-footer">


										<input type="submit" style="width: 100%;" value="Đăng Nhập">
							</form>
							<div>
								<h6>
									<a href="Signup.jsp" class="btn btn-primary"
										style="width: 100%;">Đăng Kí</a>
								</h6>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<form class="form-horizontal">
			<h3 align="left">Mã xác nhận đề tài đăng kí đã được gửi tới
				gmail của bạn,kiểm tra gmail và nhập mã xác nhận để tiếp tục.</h3>
			<div class="form-group">
				<table width="100%">
					<tr>
						<td><label class="col-sm-2 control-label" for="User"
							style="width: 50%;">Mã Xác Nhận :</label></td>
						<td><div class="col-sm-10">
								<input class="form-control" id="User" type="text" name="User">
							</div></td>
					</tr>
				</table>
				<input type="submit" name="Signup" value="Đăng Kí"
					style="width: 100%" />
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
					<i><u>Điện thoại: </u> (+84 - 8) 38968641 - (+84 - 8) 38961333</i>
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

</body>
</html>