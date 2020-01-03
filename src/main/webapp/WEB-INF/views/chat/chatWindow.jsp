<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅창입니다</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
</head>
<body>

	<div class="container">
	

		<h3 class="bg-warning">법 어기지마라.</h3>
		<p>${nickname} 님이 참가하셨습니다. </p>
		<p>채팅방 이름 : ${room}</p>
		
				
		<div id="pchatdiv"></div>
		<ul id="chatarea" class="list-unstyled"></ul>
	
		<input id="chatText" type="text" class="pull-left" placeholder="메세지를 입력하세요">
		<button type="button" class="btn btn-warning closebtn" id="outbtn">종료</button>
		<button type="button" class="btn btn-success" id="sendbtn">보내기</button>

		<div class="clearfix"></div>

	</div>

	<script src="/resources/hydrogen/js/jquery.min.js"></script>
	<script src="/resources/hydrogen/js/bootstrap.min.js"></script>
	<script src="/resources/hydrogen/js/main.js"></script>
	<script>
		var nickname="${nickname}";
		var websocket=null;
	
		function startWebSocket() {
			websocket = new WebSocket('ws://localhost:80/chat?room=${room}&nickname=${nickname}');
			websocket.onopen = function(event) {
				onOpen(event)
			};
			websocket.onclose = function(event) {
				onClose(event)
			};
			websocket.onmessage = function(event) {
				onMessage(event)
			};
			websocket.onerror = function(event) {
				onError(event)
			};
		}

		function onOpen(event) {
			var str = '<span style="color:green;">연결되었습니다</span><br>';
			$('#pchatdiv').append(str);
		}
		function onClose(event) {
			var str = '<span style="color:red;">접속이 종료되었습니다.</span><br>';
			$('#pchatdiv').append(str);
		}
		function onMessage(event) {
			var message = JSON.parse(event.data);
			console.log(message.name);
			console.log(message.content);
			var str = message.name + '▶' + message.content + '<br>';
			$('#pchatdiv').append(str);
			$('#pchatdiv').scrollTop = $('#pchatdiv').scrollHeight;
		}
		function onError(event) {
			var str = '<span style="color:blue;"> 에러 : </span>' + event.data;
			$('#pchatdiv').append(str);
		}


		if (websocket == null || websocket == undefined	|| websocket.readyState === WebSocket.CLOSED) {
			startWebSocket();
		}
		
		//서버로 메시지 보내기	 (send 활용)
		function send() {
			
			if (websocket == null || websocket == undefined	|| websocket.readyState === WebSocket.CLOSED) {
				startWebSocket();
			}
			
			let meseg = $('#chatText').val();
			if (meseg == '') {
				return;
			}

			var objec = {};
			objec.name = nickname;
			objec.content = meseg;

			websocket.send(JSON.stringify(objec));
			$('#chatText').val('');
		}

		$('button#sendbtn').on('click', function() {
			send();
		});

		$('button#outbtn').on('click', function() {
			websocket.close();
		});

		$('input#chatText').on('keydown', function(event) {
			if (event.keyCode == 13) { // 엔터키
				send();
			}
		});
	</script>

</body>
</html>