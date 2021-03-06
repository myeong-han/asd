<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ASD &mdash; Oppertunity knocks.</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Google Webfonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>


<!-- Animate.css -->
<link rel="stylesheet" href="/asd/resources/hydrogen/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/asd/resources/hydrogen/css/icomoon.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/asd/resources/hydrogen/css/magnific-popup.css">
<!-- Salvattore -->
<link rel="stylesheet" href="/asd/resources/hydrogen/css/salvattore.css">
<!-- Theme Style -->
<link rel="stylesheet" href="/asd/resources/hydrogen/css/style.css">
<!-- Main Style -->
<link rel="stylesheet" href="/asd/resources/hydrogen/css/main.css?v=5">



<!-- Modernizr JS -->
<script src="/asd/resources/hydrogen/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>

	<jsp:include page="../include/menu.jsp" />
	<jsp:include page="../include/header.jsp" />
	<!-- END .header -->


	<div id="fh5co-main">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h2>Personal Bio</h2>

					<div class="fh5co-spacer fh5co-spacer-sm"></div>

					<form action="/member/additional" method="post" name="myfrm"
						enctype="multipart/form-data">
						<input type="hidden" name="email" value="${email}">
						<input type="hidden" name="mpic" value="${addition.mpic}">

						<div class="table-responsive-md">
							<table id="uptable" class="table">
								<tr>
									<th class="text-center">취미</th>
									<td><select class="form-control" name="hobby">
										<option value="술" <c:if test="${addition.hobby == '술'}">selected</c:if>>술</option>
										<option value="음식" <c:if test="${addition.hobby == '음식'}">selected</c:if>>음식</option>
										<option value="운동" <c:if test="${addition.hobby == '운동'}">selected</c:if>>운동</option>
										<option value="공부" <c:if test="${addition.hobby == '공부'}">selected</c:if>>공부</option>
										<option value="여행" <c:if test="${addition.hobby == '여행'}">selected</c:if>>여행</option>
									</select></td>
								</tr>

								<tr>
									<th class="text-center">휴대폰 번호</th>
									<td><input class="form-control" type="text" name="mobile"
										value="${addition.mobile}"></td>
								</tr>
								
								<tr>
									<th class="text-center">한마디</th>
									<td><input class="form-control" type="text" name="intro"
										value="${addition.intro}"></td>
								</tr>
							</table>
						</div>

						<br><br>						
						<input type="submit" value="추가정보 입력/수정" class="btn btn-info col-md-offset-4 col-md-4">

					</form>

				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../include/footer.jsp" />


	<!-- jQuery -->
	<script src="/asd/resources/hydrogen/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/asd/resources/hydrogen/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="/asd/resources/hydrogen/js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="/asd/resources/hydrogen/js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="/asd/resources/hydrogen/js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="/asd/resources/hydrogen/js/main.js"></script>
</body>
</html>
