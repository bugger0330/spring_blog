<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>

<div class="row">
	<div class="col-md-8" style="margin: 0px auto; ">
<!-- 	<div class="mb-3">
		<label class="form-label">�ۼ���</label> <input type="text"
			class="form-control" readonly="readonly">
	</div> -->
	<div class="mb-3">
		<label class="form-label">����</label> <input type="text"
			class="form-control">
	</div>

	<div class="mb-3">
		<label class="form-label">����</label>
		<textarea class="form-control" rows="12" name='content' ></textarea>
	</div>
	
	<div class="row " style="margin-top: 10px; margin-bottom: 10px;">
		<div class="col" align="right">
			<button type="button" class="btn btn-outline-primary btn_modify" id="insert-btn"><i class="fas fa-eraser"></i>���</button>
			<button type="button" class="btn btn-outline-danger btn_remove"><i class="fas fa-times"></i>���</button>
		
		</div>
	</div>

		</div>
	</div>
</div>

<script src="/app/static/javascript/board_insert.js"></script>


	<jsp:include page="../top/footer.jsp"></jsp:include>