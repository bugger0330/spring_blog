<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="top/header.jsp"></jsp:include>
<link href="/app/static/css/home/home.css" rel="stylesheet">


    <!-- 검색창 -->
    <section class="hero">
        <div class="container">
            <div class="row" id=""main-div1>

                <div class="col-lg19">
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
    
<div class="smart">
	<div class="options">스마트폰</div>
	<div class="options-go" style="cursor: pointer;">더보기▶</div>
</div>
<section class="py-1" id="img-div1">
    <div class="container px-4 px-lg-5 mt-5">
        <div id="img-lists1" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"></div>
	</div>
</section>

<div class="smart">
	<div class="options">태블릿</div>
	<div class="options-go" style="cursor: pointer;">더보기▶</div>
</div>
<section class="py-1" id="img-div2">
    <div class="container px-4 px-lg-5 mt-5">
        <div id="img-lists2" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"></div>
	</div>
</section>

<div class="smart">
	<div class="options">PC</div>
	<div class="options-go" style="cursor: pointer;">더보기▶</div>
</div>
<section class="py-1" id="img-div3">
    <div class="container px-4 px-lg-5 mt-5">
        <div id="img-lists3" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"></div>
	</div>
</section>

<div class="smart">
	<div class="options">기타 IT기기</div>
	<div class="options-go" style="cursor: pointer;">더보기▶</div>
</div>
<section class="py-1" id="img-div4">
    <div class="container px-4 px-lg-5 mt-5">
        <div id="img-lists4" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"></div>
	</div>
</section>



	<jsp:include page="top/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/home.js"></script>
    

