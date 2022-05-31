<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>

<div class="row">
	<div class="col-md-8" style="margin: 0px auto; ">
	<div class="mb-3">
		<label class="form-label">����</label> <input type="text"
			class="form-control" name="writer">
	</div>

	<div class="mb-3">
		<label class="form-label">����</label>
		<textarea class="form-control" rows="12" name='content' ></textarea>
	</div>
	
	<div class="row " style="margin-top: 10px; margin-bottom: 10px;">
		<div class="col" align="right">
			<button type="button" class="btn btn-outline-primary btn_modify"><i class="fas fa-eraser"></i>���</button>
			<button type="button" class="btn btn-outline-danger btn_remove"><i class="fas fa-times"></i>����</button>
		
		</div>
	</div>

	
	<hr>
	
	<!-- ��� -->
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header with-border ">
				<h5 class="card-title" style="margin-top:10px; margin-bottom:10px;">
					<i class="fa fa-comments fa-fw"></i>���â�Դϴ�
				</h5>
			</div>
			<div class="card-body">
				<div class="row">
				
				<!-- ��� ��� -->	
				<ul class="chat" style="list-style:none;">
				</ul>

				</div>
			
				<button type="button" id="addReplyBtn" class="btn btn-outline-primary"  style="float:right;">���</button>

			</div>
			

			<div class="card-footer">
				<nav aria-label="Contacts Page Navigation">
					<ul class="pagination pagination-sm no-margin justify-content-center m-0">
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<!-- ��� -->


		</div>
	</div>
</div>

<!-- Page 420 ���ο� ��� ó�� �� ���â -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">&times;</button>
				<h4 class="modal-title" id="myModalLabel">�亯 ���</h4>
			</div>
			
			<div class="modal-body">
				<div class="form-group">
					<label>�亯</label>
					<input class="form-control" name="reply" value="���ο� �亯">
				</div>
				<div class="form-group">
					<label>�ۼ���</label>
					<input class="form-control" name="replyer" value=''>
				</div>
				<div class="form-group">
					<label>�ۼ���</label>
					<input class="form-control" name="replyDate" value="">
				</div>
			</div>
			
			<div class="modal-footer">

						<button type="button" id="modalModBtn" class="btn btn-outline-primary">����</button>
						<button type="button" id="modalRemoveBtn" class="btn btn-outline-danger">����</button>

				<button type="button" id='modalRegisterBtn' class="btn btn-outline-primary">���</button>
				<button type="button" id='modalCloseBtn'  class="btn btn-outline-default" data-dismiss="modal" aria-hidden="true">�ݱ�</button>
			</div>
		</div>
	</div>
</div>


	<jsp:include page="../top/footer.jsp"></jsp:include>