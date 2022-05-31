<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>

<div class="row">
	<div class="col-md-8" style="margin: 0px auto; ">
	<div class="mb-3">
		<label class="form-label">제목</label> <input type="text"
			class="form-control" name="writer">
	</div>

	<div class="mb-3">
		<label class="form-label">내용</label>
		<textarea class="form-control" rows="12" name='content' ></textarea>
	</div>
	
	<div class="row " style="margin-top: 10px; margin-bottom: 10px;">
		<div class="col" align="right">
			<button type="button" class="btn btn-outline-primary btn_modify"><i class="fas fa-eraser"></i>등록</button>
			<button type="button" class="btn btn-outline-danger btn_remove"><i class="fas fa-times"></i>삭제</button>
		
		</div>
	</div>

	
	<hr>
	
	<!-- 댓글 -->
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header with-border ">
				<h5 class="card-title" style="margin-top:10px; margin-bottom:10px;">
					<i class="fa fa-comments fa-fw"></i>댓글창입니다
				</h5>
			</div>
			<div class="card-body">
				<div class="row">
				
				<!-- 댓글 출력 -->	
				<ul class="chat" style="list-style:none;">
				</ul>

				</div>
			
				<button type="button" id="addReplyBtn" class="btn btn-outline-primary"  style="float:right;">등록</button>

			</div>
			

			<div class="card-footer">
				<nav aria-label="Contacts Page Navigation">
					<ul class="pagination pagination-sm no-margin justify-content-center m-0">
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<!-- 댓글 -->


		</div>
	</div>
</div>

<!-- Page 420 새로운 댓글 처리 → 모달창 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">&times;</button>
				<h4 class="modal-title" id="myModalLabel">답변 모달</h4>
			</div>
			
			<div class="modal-body">
				<div class="form-group">
					<label>답변</label>
					<input class="form-control" name="reply" value="새로운 답변">
				</div>
				<div class="form-group">
					<label>작성자</label>
					<input class="form-control" name="replyer" value=''>
				</div>
				<div class="form-group">
					<label>작성일</label>
					<input class="form-control" name="replyDate" value="">
				</div>
			</div>
			
			<div class="modal-footer">

						<button type="button" id="modalModBtn" class="btn btn-outline-primary">수정</button>
						<button type="button" id="modalRemoveBtn" class="btn btn-outline-danger">삭제</button>

				<button type="button" id='modalRegisterBtn' class="btn btn-outline-primary">등록</button>
				<button type="button" id='modalCloseBtn'  class="btn btn-outline-default" data-dismiss="modal" aria-hidden="true">닫기</button>
			</div>
		</div>
	</div>
</div>


	<jsp:include page="../top/footer.jsp"></jsp:include>