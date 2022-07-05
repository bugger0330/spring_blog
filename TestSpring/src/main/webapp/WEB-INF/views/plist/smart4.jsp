<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link href="/app/static/css/home/home.css" rel="stylesheet">


    
    
<div class="smart">
	<div class="options">기타 IT기기</div>
</div>
<section class="py-1" id="img-div1">
    <div class="container px-4 px-lg-5 mt-5">
        <div id="img-lists" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"></div>
	</div>
	
	<div class="row">
		<div class="col">
			<ul class="pagination justify-content-center">
				<li class="pre-next-btn" id="page-link">이전</a></li>
				
				<li class="board-list-page" style="display: flex; justify-content: center; padding: 0px 10px"></li>
				
				<li class="pre-next-btn" id="page-link">다음</li>
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
	
</section>
<br><br>



	<jsp:include page="../top/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/plist/smart4.js"></script>
    

