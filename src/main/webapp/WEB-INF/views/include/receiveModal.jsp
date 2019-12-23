<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 메세지 확인 모달 시작-->
<div class="modal fade" id="getMessageModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg"
		role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="getMessageModalTitle">받은 메시지</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<div class="modal-body">
				<table class="table table-hover" id="receiveTable">


				</table>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-warning closebtn"
					data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-success">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!-- 메세지 확인 모달 종료-->