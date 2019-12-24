<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 메세지 보내기 모달 -->
<div class="modal fade" id="messageModal" tabindex="-1" role="dialog"
	aria-labelledby="mLabel" aria-hidden="true">
	<form action="/member/message" method="post" name="messagefrm"
		enctype="multipart/form-data">


		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="mLabel">새로운 메시지</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="sendname" class="col-form-label">보내는 사람:</label> 
						<input type="text" class="form-control" id="sendname" name="sendname"
							readonly>
					</div>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">받는 사람:</label>
						<input type="text" class="form-control" id="recipient-name"
							name="username" readonly>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Message:</label>
						<textarea class="form-control" id="message-text" name="message" rows="10"></textarea>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger closebtn"
						data-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-success">메세지 보내기</button>
				</div>


			</div>
		</div>
	</form>
</div>
<!-- 메세지 보내기 모달 종료-->