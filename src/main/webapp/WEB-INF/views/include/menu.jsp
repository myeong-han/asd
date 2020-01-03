<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="fh5co-offcanvass">

	<a href="#" class="fh5co-offcanvass-close js-fh5co-offcanvass-close">Menu
		<i class="icon-cross"></i>
	</a>

	<c:choose>
		<c:when test="${empty email}">
			<h1 class="fh5co-logo">
				<a class="navbar-brand" href="/">ASD For You</a>
			</h1>
			
			<ul>
				<li class="active"><a href="/">Home</a></li>
				<li><a href="/member/login">Login</a></li>
				<li><a href="/member/join">Join</a></li>
				
			</ul>

		</c:when>
		<c:otherwise>
			<h1 class="fh5co-logo">
				<a class="navbar-brand" href="/">${name}의 페이지 </a>		
			</h1>
												
				<img src="/resources/images/icon/50/mail.png"
					onmouseover="this.src='/resources/images/icon/50/mail2.png';"
					onmouseout="this.src='/resources/images/icon/50/mail.png';"
					id="messageIcon" width="50" height="50"
					data-name="${name}" 
				 	data-toggle="modal" 
				 	data-target="#getMessageModal">
				 
				 <a href="/chat/list">
				 <img src="/resources/images/icon/50/chat.png"
				 	onmouseover="this.src='/resources/images/icon/50/chat2.png';"
					onmouseout="this.src='/resources/images/icon/50/chat.png';"
					id="chatIcon" width="50" height="50"></a>
							
			<ul>
				<li class="active"><a href="/">Home</a></li>
				<li><a href="/member/mypage?email=${email}">My Page</a></li>
				<li><a href="/member/logout">Logout</a></li>
			</ul>

		</c:otherwise>
	</c:choose>


	

</div>