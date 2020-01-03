<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal fade" id="chatModal" tabindex="-1" role="dialog"
	aria-labelledby="cLabel" aria-hidden="true">

	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="cLabel">채팅방</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>			
			</div>
			<div class="modal-body">
				<div id="pchatdiv"></div>
				<ul id="chatarea" class="list-unstyled"></ul>
				<input id="chatText" type="text" class="form-control" placeholder="메세지를 입력하세요">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-warning closebtn"
					data-dismiss="modal" id="outbtn">종료</button>
				<button type="button" class="btn btn-success" id="sendbtn">보내기</button>
			</div>
		</div>
	</div>
</div>