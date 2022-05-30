<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="auth/nav.jsp"></jsp:include>
<link href="/app/static/css/home/home.css" rel="stylesheet">

    <!-- 검색창 -->
    <section class="hero">
        <div class="container">
            <div class="row">
                
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                
                                <input type="text" placeholder="상품을 입력하세요!">
                                <button type="submit" class="site-btn">검색</button>
                            </form>
                        </div>
                        
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- 검색창 -->
    
    
<!-- 이미지 리스트 -->
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
<!-- =============================================================================== -->            
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top" src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg"/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">상품명</h5>
                            <!-- Product price-->
                            가격
                        </div>
                    </div>
                    <!-- Product actions-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">구경가기</a></div>
                    </div>
                </div>
            </div>
<!-- =============================================================================== -->            
	    </div>
	</div>
</section>
<!-- 이미지 리스트 -->
<div class="conn">
	<div class="main-div">
	        
	</div>
</div>


	<jsp:include page="auth/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/home.js"></script>
