<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header id="fh5co-header" role="banner">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
					<button class="btn btn-info btn-sm pull-left" id="joinlink"
					data-toggle="modal" data-target="#joinModal">JOIN </button> 
				<c:choose>
				<c:when test="${empty email}" >
					<button class="btn btn-success btn-sm pull-left" id="loginlink"
					data-toggle="modal" data-target="#loginModal">LOGIN</button>
				</c:when>
				<c:otherwise>
					<button onclick="location.href='/member/logout';" class="btn btn-danger btn-sm pull-left">LOGOUT</button>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${not empty email}">
				<a href="#" class="fh5co-menu-btn js-fh5co-menu-btn">Menu
				<i class="icon-menu"></i></a>
				</c:when> 
				</c:choose>
				<a class="navbar-brand" href="/">A SHIP DA</a>
			</div>
		</div>
	</div>
</header>
