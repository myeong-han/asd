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
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,100,500'
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
<link rel="stylesheet" href="/resources/css/main.css?ver=15">

<!-- Modernizr JS -->
<script src="/resources/hydrogen/js/modernizr-2.6.2.min.js"></script>
</head>
<body>

	<jsp:include page="../include/menu.jsp" />
	<jsp:include page="../include/header.jsp" />

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
								<div class="fh5co-desc">로그인 하셔서 멋진 ASD 회원들을 만나보세요! </div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_2.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_2.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc"> 가능성과 기회, 그리고 ASD. </div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_3.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_3.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc"> 사람의 가치는 타인과의 관계로서만 측정될 수 있다. </div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_4.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_4.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc"> 자신에겐 엄격하고, 남에게는 관대하라 </div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_5.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_5.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc"> 사람에게는 사람이 필요하다 </div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_6.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_6.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">모든 만남을 우연으로 보는 사람, 모든 만남을 기적으로 보는 사람.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_7.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_7.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">행운에 다가가기 위해선, 끝까지 해보는 것 밖에 없어</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_8.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_8.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">모든 생성은 이유를 가지고, 그렇기에 필연이다.</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_9.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_9.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc">아무튼 ASD 가입해라</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_21.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_21.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc"> 그러면 사진을 볼수 있을 것이니</div>
								</div>
							</div>
							<div class="item">
								<div class="animate-box">
									<a href="/resources/hydrogen/images/img_10.jpg"
										class="image-popup fh5co-board-img"> <img
										src="/resources/hydrogen/images/img_10.jpg"
										alt="Free HTML5 Bootstrap template"></a>
									<div class="fh5co-desc"> 그 후의 일은 너의 뇌가 인도하리라</div>
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

								<c:forEach var="ma" items="${maList}">

									<div class="item">
										<div class="animate-box">

											<c:choose>
												<c:when test="${empty ma['addition'].mpic }">
													<a href="/resources/hydrogen/images/img_1.jpg"
														class="image-popup fh5co-board-img"
														title="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?">
														<img src="/resources/hydrogen/images/img_1.jpg"
														alt="회원사진이 등록 되지 않았습니다.">
													</a>
												</c:when>
												<c:otherwise>
													<img class="cardimage" data-num="${ma['member'].unum }" 
													src="/resources/upload/${ma['addition'].mpic }">
												</c:otherwise>
											</c:choose>

											<c:choose>
												<c:when test="${empty ma['addition'].intro }">
													<div class="fh5co-desc">자기소개가 아직 작성되지 않았습니다.</div>
												</c:when>
												<c:otherwise>

													<div class="intro">
														<div class="line1">
															${ma['member'].username} &nbsp;
															
															${ma['member'].age }세  &nbsp;
															
															${ma['member'].local }
														</div>

														<div class="line2">
															<c:if test="${ma['member'].gender eq '남' }">
																<img src="/resources/images/icon/30/man.png"
																	width="30" height="30">
															</c:if>
															<c:if test="${ma['member'].gender eq '여' }">
																<img src="/resources/images/icon/30/woman.png"
																	width="30" height="30">
															</c:if>

															<!-- hobby -->
															<c:if test="${ma['addition'].hobby eq '술' }">
																<img src="/resources/images/icon/30/drink.png" width="30"
																	height="30">
															</c:if>

															<c:if test="${ma['addition'].hobby eq '음식' }">
																<img src="/resources/images/icon/30/food.png" width="30"
																	height="30">
															</c:if>

															<c:if test="${ma['addition'].hobby eq '운동' }">
																<img src="/resources/images/icon/30/healty.png" width="30"
																	height="30">
															</c:if>

															<c:if test="${ma['addition'].hobby eq '공부' }">
																<img src="/resources/images/icon/30/study.png" width="30"
																	height="30">
															</c:if>

															<c:if test="${ma['addition'].hobby eq '여행' }">
																<img src="/resources/images/icon/30/trip.png" width="30"
																	height="30">
															</c:if>
															
															
															<span data-toggle="modal"
																data-target="#messageModal"
																data-whatever="${ma['member'].username}"> 
																<img src="/resources/images/icon/30/mail.png" 
																	onmouseover="this.src='/resources/images/icon/30/mail2.png';"
																	onmouseout="this.src='/resources/images/icon/30/mail.png';"
																width="30" height="30">
															</span>
																																											
														</div>
														
														<div class="line3">
															<span class="comment">${ma['addition'].intro }</span>
														</div>
													</div>


												</c:otherwise>

											</c:choose>

										</div>
									</div>

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
	$('img.cardimage').each(function (index, item) {
		var $img = $(item);
		var num = $img.data('num');
		console.log('num값을 받아오는 가? :'+num);
						
		$.ajax({
			url: '/popup',
			data: {unum: num},
			dataType:"JSON",
			success: function (data) {
				console.log('data는 표시되는가?' + data);
				console.log('data의 타입은 무엇인가?'+typeof data);
				
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
	
	</script>
	
	<script>
	
	$('#message-text').on('keyup', function() {

       if($(this).val().length > 500) {
           $(this).val($(this).val().substring(0, 500));
        }
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
