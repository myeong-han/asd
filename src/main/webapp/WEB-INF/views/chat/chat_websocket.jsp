<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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
		<div id="mainframe" class="someframe"> 
		
		<article>
		<h1>Chatting</h1>
		<h3>채팅방 이름 : ${room}</h3>
		<p>나의 채팅 닉네임 : ${nickname}</p>

		<div id="chatDiv"></div>
		<ul id="participants-area" class="list-unstyled"></ul>
		<div id="control">
			<input type="text" class="form-control" id="chatInput" placeholder="귓속말은 [/to 닉네임 메시지]">
			<br><br>
			<button type="button" id="btnSend" class="btn btn-success">전송</button>
			<button type="button" id="btnInOut" class="btn btn-warning">현재 채팅방 나가기</button>
		</div>
		</article>
		
		
		
		</div></div></div></div>
		
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
	var ulParticipants = document.getElementById('participants-area');
	var chatDiv = document.getElementById('chatDiv');
	var chatInput = document.getElementById('chatInput');
	var btnSend = document.getElementById('btnSend');
	var btnInOut = document.getElementById('btnInOut');
	
	var socket = null;
	var isJoin = false;
	
	function openSocket() {
		if (socket != null && socket !== undefined && socket.readyState !== WebSocket.CLOSED) {
			chatDiv.innerHTML = '웹소켓이 이미 연결되었습니다.<br>';
			scroll();
			return;
		}
		
		// 웹소켓 객체 생성하여 소켓서버에 연결 요청하기.
		// 채팅방이름과 채팅닉네임도 경로에 함께 보냄.
		socket = new WebSocket('ws://localhost:80/chat?room=${room}&nickname=${nickname}');
		
		
		// 소켓서버와 연결되면 자동호출됨
		socket.onopen = function (event) {
			chatDiv.innerHTML += '연결되었습니다.<br>';
			scroll();
			isJoin = true;
			btnInOut.innerText = '현재 채팅방 나가기';
			
			participants();
		};
		
		socket.onclose = function (event) {
			chatDiv.innerHTML += '연결이 끊어졌습니다.<br>';
			scroll();
			isJoin = false;
			btnInOut.innerText = '현재 채팅방 참가하기';
			
			participants();
		};
		
		// 웹소켓의 message 이벤트는 소켓서버로부터 메시지(채팅내용)를 받을때마다 호출됨
		socket.onmessage = function (event) {
			
			var message = JSON.parse(event.data); // '{ nickname: "고래", content: "안녕~" }'
			var str = message.nickname + ' ▶ ' + message.content + '<br>';
			chatDiv.innerHTML += str;
			scroll();
			
			if (message.content.indexOf('참가') > -1) {
				ulParticipants.innerHTML += '<li class="' + message.nickname + '">' + message.nickname + '</li>';
			}
			if (message.content.indexOf('퇴장') > -1) {
				let target = document.querySelector('li.participant');
				let parent = target.parentElement;
				parent.removeChild(target);
				
				participants();
			}
		};

	} // openSocket
	
	
	function scroll() {
		chatDiv.scrollTop = chatDiv.scrollHeight;
		
		//var top = $('#messages').prop('scrollHeight');
		//$('#messages').scrollTop(top);
	} // scroll
	
	
	function closeSocket() {
		socket.close();
		socket = null;
	} // closeSocket
	
	
	function send() {
		let msg = chatInput.value;
		
		if (msg == '') {
			return;
		}
		
		var obj = {};
		if (msg.indexOf('/to') > -1) { // 귓속말 [/to 닉네임 메시지]
			let fromIndex = msg.indexOf(' ') + 1;
	    	let toIndex = msg.indexOf(' ', fromIndex);
	    	let whisperName = msg.substring(fromIndex, toIndex);
	    	let content = msg.substring(toIndex + 1);
	    	
			obj.nickname = '${nickname}';
			obj.content = content;
			obj.whisperName = whisperName;
		} else {
			obj.nickname = '${nickname}';
			obj.content = msg;
			obj.whisperName = '';
		}
		
		socket.send(JSON.stringify(obj)); // 소켓서버에 전송
		
		
		var str = '';
		if (msg.indexOf('/to') > -1) { // 귓속말 [/to 닉네임 메시지]
			str = '<span style="color: red;">' + obj.nickname + ' ▶ ' + obj.nickname + '님이 ' + obj.whisperName + '님에게 귓속말: ' + obj.content  + '</span><br>';
		} else {
			str = '<span style="color: red;">' + obj.nickname + ' ▶ ' + obj.content  + '</span><br>';
		}
		
		chatDiv.innerHTML += str;
		scroll();
		
		chatInput.value = '';
	} // send
	
	

	btnInOut.addEventListener('click', function (event) {
		if (isJoin == true) {
			closeSocket();
		} else {
			openSocket();
		}
	});
	
	btnSend.addEventListener('click', function (event) {
		send();
	});
	
	chatInput.addEventListener('keydown', function (event) {
		if (event.keyCode == 13) { // 엔터키
			send();
		}
	});
	
	openSocket();
	
	
	function participants() {
		$.ajax({
			url: '/chat/participants',
			data: { room: '${room}' },
			success: function (participants) {
				console.log(participants);
				
				let str = '';
				if (participants.length > 0) {
					participants.forEach(function (participant) {
						str += '<li class="participant">' + participant + '</li>';
					});
				} else {
					str = '<li class="${nickname}">${nickname}</li>';
				}
				
				ulParticipants.innerHTML = str;
			}
		});
	} // participants
	
</script>

</body>
</html>