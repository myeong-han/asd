<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TEST PAGE 4 </title>


<!-- Animate.css -->
<link rel="stylesheet" href="/resources/hydrogen/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/resources/hydrogen/css/icomoon.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/resources/hydrogen/css/magnific-popup.css">
<!-- Salvattore -->
<link rel="stylesheet" href="/resources/hydrogen/css/salvattore.css">
<!-- Theme Style -->
<link rel="stylesheet" href="/resources/hydrogen/css/style.css?ver=001">
<!-- Main Style -->
<link rel="stylesheet" href="/resources/css/main.css?ver=008">
<!-- Modernizr JS -->
<script src="/resources/hydrogen/js/modernizr-2.6.2.min.js"></script>
</head>
<body>

   <jsp:include page="../include/menu.jsp" />
   <jsp:include page="../include/header.jsp" />

   <div id="fh5co-main">
   <div class="container">
   <div class="row">
      
   <form>   
   
      <div class="container" style="width:60%;">
      <table class="table">
      <tr>
         <c:choose>
         <c:when test="${not empty member.mpic }">
         <td colspan="${fn:length(picList)}" class="text-center" id="bigimgtd">
         <div class="crop-gall">
         <img src="/resources/upload/${member.mpic }" id="bigimg" class="img-rounded">
         </div>
         </td>
         </c:when>
         <c:otherwise>
         <td><img src="/resources/images/noimage.gif" class="img-rounded"></td>
         </c:otherwise>
         </c:choose>
      </tr>
      <tr>
         <c:choose>
         <c:when test="${not empty picList}">
            <c:forEach var="pic" items="${picList}" varStatus="status">
               <td class="text-center" id="pictd" style="z-index: 0;">
	               <img src="/resources/upload/${pic}" 
	                  class="img-thumbnail" id="${status.index}" data-num="${status.index}" data-pic="${pic}" style="z-index: -1;">
	               <a href="javascript:delSelectedFile()" style="margin-top: 20px;text-decoration: none; color: #DDDDDD;">
	               <br />X</a>
               </td>
            </c:forEach>
         </c:when>
         <c:otherwise>
            <td><img src="/resources/images/noimage.gif" class="img-thumbnail"></td>
         </c:otherwise>
         </c:choose>   
      </tr>
      
      <tr><td colspan="${fn:length(picList)}" class="text-center">
      <input type="hidden" value="${member.mpic }" id="mpic" name="mpic">
      <button type="submit" class="btn btn-success btn-lg">메인 사진 변경</button>
      </td></tr>
      </table>
      </div>


   </form>

   </div>
   </div>
   </div>
   <div id="fh5co-main">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h2>Personal Bio</h2>

					<div class="fh5co-spacer fh5co-spacer-sm"></div>

					<form action="/member/attach" method="post" name="myfrm"
						enctype="multipart/form-data">
						<input type="hidden" name="email" value="${email}">

						<div class="table-responsive-md">
							<table id="uptable" class="table">
								<tr>
									<th class="text-center">파일</th>
									<td>
										<div id="file_container">
											<input class="form-control" type="file" name="files" multiple="multiple">
										</div>
									</td>
								</tr>
							</table>
						</div>

						<br><br>						
						<input type="submit" value="이미지 업로드" class="btn btn-info col-md-offset-4 col-md-4">

					</form>

				</div>
			</div>
		</div>
	</div>
   
   <jsp:include page="../include/footer.jsp" />


   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
   <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

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
$('td#pictd').on('click',function(){
   var $img1 = $(this).find('img');
   var picname = $img1.data('pic');
   console.log(picname);
   
   var bigimg = $('img#bigimg');
   bigimg.attr('src','/resources/upload/'+picname);
   
})

</script>
   
</body>
</html>
