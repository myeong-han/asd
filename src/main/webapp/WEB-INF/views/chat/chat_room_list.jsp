<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ASD &mdash; Oppertunity knocks.</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free Dating Site by TEAM 403-1" />
<meta name="keywords" content="friend, dating, contact" />
<meta name="author" content="TEAM 403-1" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="/resources/images/icon/icon.ico">

<!-- Google Webfonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'	rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gaegu&display=swap"	rel="stylesheet">

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
<link rel="stylesheet" href="/resources/css/main.css?ver=11">

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
		
		<ul id="chatting-rooms" class="list-group list-unstyled">
			<c:choose>
				<c:when test="${not empty roomsList}">
					<c:forEach var="item" items="${roomsList}">
						<li class="list-group-item room">${item.room} (참가자 ${item.size}명)</li>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<li class="room">현재 개설된 채팅방이 없습니다.</li>
				</c:otherwise>
			</c:choose>
		</ul>
		
		<form action="/chat/join" onsubmit="return checkRoomNameDuplicate();">
			<div class="form-group">
				<label for="nickname" class="col-form-label"> 닉네임  </label>
				<input type="text" id="nickname" name="nickname" class="form-control" value="${name}" readonly>
			</div>
			
						
			<fieldset class="border p-2">
				<legend class="w-auto">새로운 채팅방 만들기</legend>
				<div class="form-group">
					<label for="room" class="col-form-label"> 채팅방 이름  </label>
					<input type="text" id="room" name="room" class="form-control" placeholder="채팅방 이름을 입력하세요.">
				</div>
					<input type="submit" class="btn btn-success" value="채팅방 참가하기">
			</fieldset>
		</form>
		
			
					
		</div>
		</div>
		</div>
		</div>
		
		<div class="clearfix"></div>
		
	<jsp:include page="../include/receiveModal.jsp" />
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
	
<script>
	var objUl = document.getElementById('chatting-rooms');
	var nickname = document.getElementById('nickname');
	var room = document.getElementById('room'); 
		
	$('li.room').on('mouseover', function(){
		$(this).addClass('active');
	});
	
	function showRoomsList(){
		$.ajax({
			url: '/chat/roomsList',
			success: function (arr) {
				console.log(arr);
				
				let str = '';
				if (arr.length > 0) {
					arr.forEach(function (item) {
						str += '<li class="room">' + item.room + ' (참가자 ' + item.size + '명)</li>';
					});
				} else {
					str = '<li class="room">현재 개설된 채팅방이 없습니다.</li>';
				}
				
				objUl.innerHTML = str;
			}
		});
	} // showRoomsList
	
	setInterval(showRoomsList, 20000); 
	// showRoomsList의 실행 인터벌 설정. 인터벌 설정과 함께 시작.. 
	
	function checkRoomNameDuplicate() {
		
		if (nickname.value == '') {
			alert('닉네임은 필수 입력사항입니다.');
			nickname.focus();
			return false;
		}
		if (room.value == '') {
			alert('채팅방 이름은 한 글자 이상이어야 합니다.');
			room.focus();
			return false;
		}
		
		var isRoomDuplicate = false;
		
		$.ajax({
			async: false,
			url: '/chat/checkRoomNameDuplicate',
			data: { room : room.value },
			success: function (data) {
				console.log(data);
				isRoomDuplicate = data;
				console.log(isRoomDuplicate);
			}
		});
		
		console.log(data);
		
		if (isRoomDuplicate) {
			alert('이미 존재하는 채팅방 이름입니다.\n다른 채팅방 이름으로 생성해주세요.');
			return false;
		} else {
			return true;
		}
	} // checkRoomNameDuplicate
	
	$(document).on('dblclick', 'li.room', function (event) {
		let room = event.target.innerText;
		let index = room.indexOf(' (');
		room = room.substr(0, index);
		
		if (nickname.value == '') {
			alert('닉네임은 필수 입력사항입니다.');
			nickname.focus();
			return;
		}
		
		$.ajax({
			async: false,
			url: '/chat/checkNicknameDuplicate',
			data: { room: room, nickname: nickname.value },
			success: function (isNicknameDuplicate) {
				if (isNicknameDuplicate == true) {
					alert('닉네임이 중복됩니다.\n다른 닉네임으로 입장해 주세요.');
				} else {
					location.href = '/chat/join?room=' + room + '&nickname=' + nickname.value;
				}
			}
		});
	});
	
	
	
	
	
</script>
	
</body>
</html>