<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/BigWeb?autoReconnect=true&useSSL=false" user="root" password="conmatto" />
<c:if test="${not empty param.login}">
<sql:query var="Login" dataSource="${db}">select * from Accounts where Accounts.Status=1 and Accounts.NameUser=? and Accounts.Pass=? and Accounts.Class=?<sql:param value="${param.username}"/><sql:param value="${param.password}"/><sql:param value="${param.pos}"/></sql:query>
<c:set var="chk_Login" value="${Login.rowCount}"/>
<c:set var="chk_Pos" value="${param.pos}"/>
<c:if test="${chk_Login>0 and chk_Pos=='Adm'}">

<c:set var="user" value="${param.username}" scope="session"/>
<c:redirect url="guestbook" />
</c:if>
<c:if test="${chk_Login>0 and chk_Pos=='Tea'}">
	<c:set var="user" value="${param.username}" scope="session"/>
	<c:redirect url="Teacher.jsp" />
</c:if>
<c:if test="${chk_Login>0 and chk_Pos=='Stu'}">
	<c:set var="user" value="${param.username}" scope="session"/>
	<c:redirect url="Student.jsp" />
</c:if>
</c:if>
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
							<form action="Form.jsp">
								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Đăng Nhập Tài Khoản</h4>
									</div>
									<div class="modal-body">
										<div class="form-group">
											<label for="usr">Tên Đăng Nhập:</label> <input type="text"
												class="form-control" id="usr" name="username">
										</div>
										<div class="form-group">
											<label for="pwd">Mật Khẩu:</label> <input type="password"
												class="form-control" id="pwd" name="password">
										</div>
									</div>
									<div class="form-group">
										<label class="radio-inline"
											style="margin-left: 23%; padding-left: 60px;"><input
											type="radio" name="pos" value="Adm">Admin</label> <label
											class="radio-inline"><label
											class="radio-inline"><input type="radio"
											name="pos" value="Tea">Giảng Viên</label> <label
											class="radio-inline"><input type="radio"
											name="pos" value="Stu">Sinh Viên</label>
									</div>
									<div class="modal-footer">


										<input type="submit" style="width: 100%;" value="Đăng Nhập"
											name="login">
							</form>
							<a href="ConfirmInt.jsp" style="text-align: center"><h6><i>Quên Mật Khẩu?</i></h6></a>
							<div>
								<h6>
									<a href="Signup.jsp" class="btn btn-primary"
										style="width: 100%;">Đăng Kí</a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<hr width="90%" size="10px" align="center" />

	<div class="body">
			<div class="table">
				<div class="row">
					<div class="contentnew">
						<h2>
							<i>Tin Tức - Sự Kiện</i>
						</h2>
						<sql:query var="listnew" dataSource="${db}">select * from neww</sql:query>
						<c:set var="lastrn" value="${listnew.rowCount}"/>
						<c:set var="new1" value="${listnew.rows[lastrn-1].LinkFile}" />
						<c:set var="new1name" value="${listnew.rows[lastrn-1].NamePage}"/>
						<c:set var="new2" value="${listnew.rows[lastrn-2].LinkFile}"/>
						<c:set var="new2name" value="${listnew.rows[lastrn-2].NamePage}"/>
						<c:set var="new3" value="${listnew.rows[lastrn-3].LinkFile}"/>
						<c:set var="new3name" value="${listnew.rows[lastrn-3].NamePage}"/>
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<form>
									<a href="GuestBookNew?new=${new1name}" >
									<img src="${new1}" style="width: 750px; height: 500px"
										align="left">
									<div class="carousel-caption">
										<h3></h3>
										<p>${new1name}</p>
										<input type="text" name="new" value="${new1}" style="visibility: hidden">
									</div>
									</a>
									</form>
								</div>
								<div class="item">
									<form>
										<a href="GuestBookNew?new=${new2name}" >
									<img src="${new2}" style="width: 750px; height: 500px">
									<div class="carousel-caption">
										<h3></h3>
										<p>${new2name}</p>
										<input type="text" name="new" value="${new2}" style="visibility: hidden">
									</div>
										</a>
									</form>
								</div>

								<div class="item">
									<form>
										<a href="GuestBookNew?new=${new3name}" >
									<img src="${new3}" style="width: 750px; height: 500px">
									<div class="carousel-caption">
										<h3></h3>
										<p>${new3name}</p>
										<input type="text" name="new" value="${new3}" style="visibility: hidden">
									</div>
										</a>
									</form>
								</div>
							</div>
						</div>

					</div>
					<div class="contentrefer">
						<h2>Đề Tài Tham Khảo</h2>
						<sql:query var="refer" dataSource="${db}">select * from TopicRefer</sql:query>
						<c:set var="lastrr" value="${refer.rowCount}"/>
							<ul class="list-group">
								<a href="DownloadTR1?ID=${refer.rows[lastrr-1].LinkFileT}"><li class="list-group-item">${refer.rows[lastrr-1].NameTopic}</li></a>
								<a href="DownloadTR1?ID=${refer.rows[lastrr-2].LinkFileT}"><li class="list-group-item">${refer.rows[lastrr-2].NameTopic}</li></a>
								<a href="DownloadTR1?ID=${refer.rows[lastrr-3].LinkFileT}"><li class="list-group-item">${refer.rows[lastrr-3].NameTopic}</li></a>
								<a href="DownloadTR1?ID=${refer.rows[lastrr-4].LinkFileT}"><li class="list-group-item">${refer.rows[lastrr-4].NameTopic}</li></a>
							</ul>


					</div>
				</div>
			</div>
		</div>
	</div>

	<hr width="90%" size="10px" align="center" />
	<h3>
		<b>Có thể bạn quan tâm</b>
	</h3>
	<br />
	<div class="interest">
		<sql:query var="listInt" dataSource="${db}">select * from Intersetion</sql:query>
		<c:set var="lastr" value="${listInt.rowCount}"/>
		<c:set var="Int1" value="${listInt.rows[lastr-1].LinkFile}" />
		<c:set var="Int1name" value="${listInt.rows[lastr-1].NamePage}"/>
		<c:set var="Int2" value="${listInt.rows[lastr-2].LinkFile}"/>
		<c:set var="Int2name" value="${listInt.rows[lastr-2].NamePage}"/>
		<c:set var="Int3" value="${listInt.rows[lastr-3].LinkFile}"/>
		<c:set var="Int3name" value="${listInt.rows[lastr-3].NamePage}"/>
		<h3>Danh sách đề tài không hợp lệ</h3>
		<h2></h2>
		<a href="/GuestBookInt?interestion=${Int1name}">
		<div class="item">
			<img src="${Int1}" style="width: 500px; height: 200px">
			<div class="carousel-caption"></div>
		</div>
		<h2></h2>
		<h3>${Int1name}</h3> <br />
		</a>
		<h2></h2>
		<a href="/GuestBookInt?interestion=${Int2name}">
			<div class="item">
				<img src="${Int2}" style="width: 500px; height: 200px">
				<div class="carousel-caption"></div>
			</div>
			<h2></h2>
			<h3>${Int2name}</h3> <br />
		</a>
		<h2></h2>
		<a href="/GuestBookInt?interestion=${Int3name}">
			<div class="item">
				<img src="${Int3}" style="width: 500px; height: 200px">
				<div class="carousel-caption"></div>
			</div>
			<h2></h2>
			<h3>${Int3name}</h3> <br />
		</a>
	</div>

	<h2 align="center">
		<a href="#" class="btn btn-primary">Lên đầu trang</a>
	</h2>

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
</body>
</html>