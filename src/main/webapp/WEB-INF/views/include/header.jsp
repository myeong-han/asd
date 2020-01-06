<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header id="fh5co-header" role="banner">
	<div class="container">
		<div class="row">
			<div id="headerID">
				<c:choose>
				<c:when test="${empty email}" >
					<button class="btn btn-success btn-sm pull-left onebtn" id="joinlink"
					data-toggle="modal" data-target="#joinModal">JOIN </button> 
					<button class="btn btn-success btn-sm pull-left onebtn" id="loginlink"
					data-toggle="modal" data-target="#loginModal">LOGIN</button>
				</c:when>
				<c:otherwise>
					<button id="logoutbtn" onclick="location.href='/member/logout';" class="btn btn-danger btn-sm pull-left">LOGOUT</button>
				</c:otherwise>
				</c:choose>
				
				<a href="#" class="fh5co-menu-btn js-fh5co-menu-btn">Menu 
				<i class="icon-menu"></i></a> 
						
				<a href="/" id="mainlogo">
					<img src="/resources/images/logo/logo.png">				
				</a>
			</div>
		</div>
	</div>
</header>
