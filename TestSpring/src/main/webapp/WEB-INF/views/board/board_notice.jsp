<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>


	<div class="row">
		<div class="col-md-10" style="margin: 0px auto;">
			<header class="panel-heading">
				<h2 class="panel-title" style="text-align:center; margin-bottom:30px; font-family:'Jua'; font-size:3.0em;">
					<i class="fas fa-comments"></i>커뮤니티
				</h2>
			</header>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table mb-none table-hover table-striped" id="table-main"  style="text-align: center;">
						<thead>
							<tr style="border-top:2px solid black;">
								<th style="width: 10%; text">번호</th>
								<th style="width: 30%">제목</th>
								<th style="width: 20%">작성자</th>
								<th style="width: 20%">조회수</th>
								<th style="width: 30%">등록일</th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div>
			</div>


			<div class="row" style="margin: 10px;">
				<div class="col" align="right">
					<!-- <button type="button" class="btn btn-outline-primary" id="btn_register">글쓰기</button> -->
				<!-- 	
					<button type="button" class="btn btn-outline-info ">수정</button>
					<button type="button" class="btn btn-outline-danger ">삭제</button>
				 -->
				</div>
			</div>

			<div class="row">
				<div class="col">
					<ul class="pagination justify-content-center">
						<li class="pre-next-btn"><a class="page-link"  href="#">이전</a></li>
						
						<li class="board-list-page" style="display: flex; justify-content: center; padding: 0px 10px"></li>
						
						<li class="pre-next-btn"><a class="page-link" href="#">다음</a></li>
					</ul>
				</div>
			</div>
			

			
			<div class="row justify-content-center" style="margin-top: 50px;">
				<div class="col-md-4 col-md-offset-3">
					<div class="input-group ">
						<div class="input-group-prepend">
							<select class="custom-select" name="typeSearch" style="height: 38px; margin-right: 10px;">
									<option value="title">제목</option>
									<option value="content">내용</option>
									<option value="username">작성자</option>
							</select>
						</div>
						<input class="form-control" id="keyword" value="" style="margin: 0px 12px 0px 0px;" placeholder="검색">
						<div class="input-group-append" id="button-addon4">
							<button type="button" class="btn btn-outline-secondary btn-search" id="search"><i class="fa fa-search"></i>검색</button>
						</div>
					</div>
				</div>
			</div>	
		</div>
	</div>
<br><br><br>

	<script src="/app/static/javascript/board/board_notice.js"></script>
	<jsp:include page="../top/footer.jsp"></jsp:include>
	


