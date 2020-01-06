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
<meta name="description" content="Free Dating Site by TEAM 403-1" />
<meta name="keywords" content="friend, dating, contact" />
<meta name="author" content="TEAM 403-1" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="/resources/images/icon/icon.ico">

<!-- Google Webfonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>


<!-- Animate.css -->
<link rel="stylesheet" href="/resources/hydrogen/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/resources/hydrogen/css/icomoon.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/resources/hydrogen/css/magnific-popup.css">
<!-- Salvattore -->
<link rel="stylesheet" href="/resources/hydrogen/css/salvattore.css">
<!-- Theme Style -->
<link rel="stylesheet" href="/resources/hydrogen/css/style.css">
<!-- Main Style -->
<link rel="stylesheet" href="/resources/css/main.css?v=5">



<!-- Modernizr JS -->
<script src="/resources/hydrogen/js/modernizr-2.6.2.min.js"></script>
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
				<div class="col-md-8 col-md-offset-2" style="text-align: center">
					<h2>회원정보 수정하기</h2>

					<div class="fh5co-spacer fh5co-spacer-sm"></div>

					<form action="/member/updateMember" method="post" name="myinfo"
						enctype="multipart/form-data">
						<input type="hidden" name="email" value="${email}"> 
						<div class="table-responsive-md">
							<table id="uptable" class="table">
							<tr>
								<th class ="text-center">새 비밀번호</th>
								<td><input class="form-control" type="password" name ="passwd"
									value="${members.passwd}"></td>
							</tr>
								<tr>
									<th class="text-center">닉네임</th>
									<td><input class="form-control" type="text"
										name="username" value="${members.username}"></td>
								</tr>

								<tr>
									<th class="text-center">지역</th>
									<td>
										<div class="form-group">
										
												<select class="form-control" name="local" id="local">
													<option value="" disabled selected>지역</option>
													<option value="서울">서울</option>
													<option value="대전">대전</option>
													<option value="대구">대구</option>
													<option value="부산">부산</option>
												</select>
											
										</div>
								</tr>
							</table>
						</div>

						<br>
						<br> 
						
						<div id="">
							<input type="submit" value="회원정보 수정하기"
							class="btn btn-info btn-lg onebtn">
							<button type="button" class="btn btn-success btn-lg" onclick="location.href='/member/mypage?email=${email}';">돌아가기 </button>
							
							<input type ="button" onclick="check();" value ="회원탈퇴"
							class="btn btn-danger btn-lg">
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="../include/sendModal.jsp" />
	<jsp:include page="../include/receiveModal.jsp" />



	<jsp:include page="../include/footer.jsp" />


	<!-- jQuery -->
	<script src="/resources/hydrogen/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/resources/hydrogen/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="/resources/hydrogen/js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="/resources/hydrogen/js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="/resources/hydrogen/js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="/resources/hydrogen/js/main.js"></script>
	<script>
	function check(){
		var result = confirm('${email}님 계정을 정말로 삭제하시겠습니까?');
		if (result == false){
			
		} else {
			location.href='/member/delete?email=${email}';
		}
	
		
	}
	
	</script>
	
</body>
</html>
