<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal fade" id="joinModal" tabindex="-1" role="dialog"
	aria-labelledby="joinLabel" aria-hidden="true">

	<form action="/member/join" method="post" name="joinfrm"
		enctype="multipart/form-data">

		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="joinLabel">JOIN ASD -</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
       				</button>
				</div>

				<div class="modal-body">
					<div class="form-group">
						<label for="email" class="col-form-label">이메일 : </label>
						<input type="email" class="form-control " id="jemail" name="email"
						placeholder="이메일 주소">
					</div>

					<div class="form-group">
						<label for="passwd" class="col-form-label">비밀번호 : </label>
						<input type="password" class="form-control " id="jpasswd" name="passwd" 
						placeholder="패스워드">
					</div>

					<div class="form-group">
						<label for="username" class="col-form-label">닉네임 : </label>
						<input type="text" class="form-control" id="jusername"
							name="username" placeholder="닉네임">
					</div>

					
					<div class="form-group">
						<label for="local" class="col-form-label"> 거주지역 : </label>
						<select class="form-control" name="local" id="local">
								<option value="" disabled selected>지역</option>
								<option value="서울">서울</option>
								<option value="대전">대전</option>
								<option value="대구">대구</option>
								<option value="부산">부산</option>
							</select>
					</div>
					
					<div class="form-group">
						<label for="residentId" class="col-form-label"> 주민번호 : </label>
						<div class="row">
						<div class="col-md-4 col-md-offset-2" > 
							<input type="text" class="form-control" id="residentId" name="residentIdF" maxlength="6" placeholder="주민번호 앞자리">
						</div>
						
						<div class="col-md-4"> 
							<input type="password" class="form-control" name="residentIdB" maxlength="1" placeholder="주민번호  뒷자리 첫번호">
						</div>
						</div>
					</div>
					
					
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-danger closebtn"
						data-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-success">가입하기</button>
				</div>


			</div>
		</div>
	</form>
</div>
<!-- 메세지 보내기 모달 종료-->