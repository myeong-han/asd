<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
	aria-labelledby="loginLabel" aria-hidden="true">

	<form action="/member/login" method="post" name="loginfrm"
		enctype="multipart/form-data">

		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="title">ASD에 오신 것을 환영합니다.</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
       				</button>
				</div>
				
				<div class="modal-body">
					<div class="form-group">
					<label for="email" class="col-form-label">아이디 : </label>
						<input type="email" class="form-control " id="lemail" name="email"
							placeholder="이메일 주소">
					</div>

					<div class="form-group">
						<label for="passwd" class="col-form-label">비밀번호: </label>
						<input type="password" class="form-control" id="lpasswd" name="passwd" 
							placeholder="패스워드">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger closebtn"
						data-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-success">로그인</button>
				</div>


			</div>
		</div>
	</form>
</div>
<!-- 로그인 모달 종료-->