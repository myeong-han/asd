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
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gaegu&display=swap"
	rel="stylesheet">


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
<link rel="stylesheet" href="/resources/css/main.css?ver=10">

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
<!-- 	<button onclick="location.href='/member/testMember'">testMemberGenerate</button> -->
<!-- 	<button onclick="location.href='/member/testLatLng'">testLatLngGenerate</button> -->
<!--  	<button onclick="location.href='/member/testAddition'">testAdditionGenerate</button> -->
	<!-- END .header -->
	<c:choose>
		<c:when test="${empty email}">

			<div id="fh5co-main">
				<div class="container">
					<div class="row">
						<div id="fh5co-board" data-columns>


							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_1.jpg"
										class="image-popup fh5co-board-img"
										title="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?">
										<img src="/resources/hydrogen/images/img_1.jpg"
										alt="Free HTML5 Bootstrap template">
									</a>
								</div>
								<div class="fh5co-desc">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Explicabo, eos?</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_2.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_2.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Veniam voluptatum voluptas
										tempora debitis harum totam vitae hic quos.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_3.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_3.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Optio commodi quod vitae, vel,
										officiis similique quaerat odit dicta.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_4.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_4.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Dolore itaque deserunt sit, at
										exercitationem delectus, consequuntur quaerat sapiente.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_5.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_5.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Tempora distinctio inventore,
										nisi excepturi pariatur tempore sit quasi animi.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_6.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_6.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Sequi, eaque suscipit accusamus.
										Necessitatibus libero, unde a nesciunt repellendus!</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_7.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_7.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Necessitatibus distinctio eos
										ipsam cum hic temporibus assumenda deleniti, soluta.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_8.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_8.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Debitis voluptatum est error
										nulla voluptate eum maiores animi quasi?</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_9.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_9.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Maxime qui eius quisquam quidem
										quos unde consectetur accusamus adipisci!</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_21.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_21.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Deleniti aliquid, accusantium,
										consectetur harum eligendi vitae quaerat reiciendis sit?</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_10.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_10.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">Incidunt, eaque et. Et odio
										excepturi, eveniet facilis explicabo assumenda.</div>
								</div>
							</div>



				


			</div>
			</div>
			</div>
			</div>

		</c:when>

		<c:otherwise>
			<div id="fh5co-main">
			<div class="container">
			<div class="row">
			<div id="fh5co-board" data-columns>

							<c:if test="${not empty maList}">

								<c:forEach var="ma" items="${maList}" varStatus="status">
									<c:choose>
									<c:when test="${not empty ma['addition'].intro }"><%-- 자기소개 쓴 사람 --%>
									
									
									<div class="item">
										
										<div class="animate-box">

											<c:choose>
												<c:when test="${not empty ma['addition'].mpic }"> <%-- 메인이미지 있는 사람 --%>
													<img class="cardimage" data-num="${ma['member'].unum }" 
													src="/resources/upload/${ma['addition'].mpic }">
												</c:when>
											</c:choose>

											<div class="intro">
												<div class="line1">
													${ma['member'].username} &nbsp;
													
													${ma['member'].age }세  &nbsp;
													
													${ma['member'].local }
												</div>

												<div class="line2">
													<c:if test="${ma['member'].gender eq '남' }">
														<img src="/resources/images/icon/man.png"
															width="30" height="30">
													</c:if>
													<c:if test="${ma['member'].gender eq '여' }">
														<img src="/resources/images/icon/woman.png"
															width="30" height="30">
													</c:if>

													<!-- hobby -->
													<c:if test="${ma['addition'].hobby eq '술' }">
														<img src="/resources/images/icon/drink.png" width="30"
															height="30">
													</c:if>

													<c:if test="${ma['addition'].hobby eq '음식' }">
														<img src="/resources/images/icon/food.png" width="30"
															height="30">
													</c:if>

													<c:if test="${ma['addition'].hobby eq '운동' }">
														<img src="/resources/images/icon/health.png" width="30"
															height="30">
													</c:if>

													<c:if test="${ma['addition'].hobby eq '공부' }">
														<img src="/resources/images/icon/study.png" width="30"
															height="30">
													</c:if>

													<c:if test="${ma['addition'].hobby eq '여행' }">
														<img src="/resources/images/icon/trip.png" width="30"
															height="30">
													</c:if>
													
													
													<span data-toggle="modal"
														data-target="#messageModal"
														data-whatever="${ma['member'].username}"> 
														<img src="/resources/images/icon/t_mail.png" class="mail-btn" width="30" height="30">
													</span>
													
													<span data-toggle="modal"
														data-target="#chatModal"
														data-username="${ma['member'].username}">
														<img src="/resources/images/icon/t_chat.png" class="chat-btn" width="30" height="30">
													</span>
													
													
												</div>
												
												<div class="line3">
													<span class="comment">${ma['addition'].intro }</span>
												</div>
											</div>

										</div>

									</div>
									
									
									</c:when><%-- 자기소개 쓴 사람 --%>
									</c:choose>

								</c:forEach>
							</c:if>
							
							
					
					
					



			</div>
			</div>
			</div>
			</div>


		</c:otherwise>

	</c:choose>

	<jsp:include page="../include/sendModal.jsp" />
	<jsp:include page="../include/receiveModal.jsp" />
	<jsp:include page="../include/joinModal.jsp" />
	<jsp:include page="../include/loginModal.jsp" />


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
	// 이미지 마우스 오버&아웃 이벤트
	var imgloc = '/resources/images/icon/';
	
	// 메일버튼 :
	$('.mail-btn').mouseover(function () {
		$(this).each(function() {
			$(this).attr('src', imgloc+'t_mail2.png');
		});
	}).mouseout(function () {
		$(this).each(function() {
			$(this).attr('src', imgloc+'t_mail.png');
		});
	});
	// 채팅버튼 :
	$('.chat-btn').mouseover(function () {
		$(this).each(function() {
			$(this).attr('src', imgloc+'t_chat2.png');
		});
	}).mouseout(function () {
		$(this).each(function() {
			$(this).attr('src', imgloc+'t_chat.png');
		});
	});
	</script>
	
	
	
	<script>
	$('#message-text').on('keyup', function() {

       if($(this).val().length > 500) {
           $(this).val($(this).val().substring(0, 500));
        }
    });

	
	$('img.cardimage').each(function (index, item) {
		var $img = $(item);
		var num = $img.data('num');
		console.log(num);
		
		$.ajax({
			url: '/popup',
			data: {unum: num},
			success: function (data) {
				console.log(data);
				
				$($img).magnificPopup({
					items: data,
					gallery: {
					      enabled: true
					},
								
					type:'image'
				});	
				
			}
		});
		
	});
	
	$('#messageModal').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget) // Button that triggered the modal
		  var recipient = button.data('whatever') 
		  var modal = $(this)
		  modal.find('.modal-title').text('New message to ' + recipient)
		  modal.find('.modal-body input#recipient-name').val(recipient)
		  modal.find('.modal-body input#sendname').val("${name}")
	});
	
	
	$('#messageIcon').on('click', function(){
		var username=$(this).data('name');
		
		$.ajax({
			type:'POST',
			url:'/member/getMessagesL',
			data:{username:username},
			dataType:'json',
			success:function(data){
				
				$('#receiveTable > tbody').empty();
				$('#receiveTable').append("<tr><th>보낸사람</th><th>메시지내용</th><th>보낸시간</th></tr>");
				
				$.each(data, function(index, item){
					
					var t = new Date(item.regtime);
					var tt = t.toLocaleString();
												
					
					$('#receiveTable').append(
							"<tr><td>"+item.sendname+
							"</td><td>"+item.message+
							"</td><td>"+tt+
							"</td></tr>"
					);			
					
					
				});
			}
		});
		
		
	});
	
	
	
	
	</script>
</body>
</html>
