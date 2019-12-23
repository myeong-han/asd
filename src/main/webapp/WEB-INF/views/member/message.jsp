<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message for you</title>

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
<link rel="stylesheet" href="/resources/css/main.css?ver=2">

<!-- Modernizr JS -->
<script src="/resources/hydrogen/js/modernizr-2.6.2.min.js"></script>
</head>
<body>

<jsp:include page="../include/menu.jsp" />
<jsp:include page="../include/header.jsp" />



<div id="fh5co-main">
<div class="container">
<div class="row">


<div id="mainframe">
<table class="table table-hover border-top-1 border-bottom-1 border-left-0 border-right-0">
    <tr>
       	<th>보낸사람</th>
    	<th>메시지 내용</th>
    	<th>시간</th>
    </tr>
	
	<c:if test="${not empty messageList }">
	<c:forEach var="me" items="${messageList }">
    	<tr>
    	<td id="sendname">${me.sendname }</td>
    	<td id="message">${me.message }</td>
    	<td id="regtime">${me.regtime }</td>
        </tr>       										
	</c:forEach>
	</c:if>       					
</table>  					        
</div>

</div></div></div>

<jsp:include page="../include/footer.jsp" />

	<!-- jQuery -->
	<script src="/resources/hydrogen/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/resources/hydrogen/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="/resources/hydrogen/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="/resources/hydrogen/js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="/resources/hydrogen/js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="/resources/hydrogen/js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="/resources/hydrogen/js/main.js"></script>

</body>
</html>