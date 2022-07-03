<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>쇼핑몰</title>
<!-- 부트스트랩 CSS, Fontawesome 아이콘, 제이쿼리, reply.js -->
<link href="/app/static/css/nav.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="/app/static/javascript/header.js"></script>

</head>


<body>
	<!-- Responsive navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="nav-main">
		<div class="container">
			
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-md-0" id="top-menu">
					<li class="nav-item"><a class="nav-link active" id="aaa5" href="/app/auth/signin">로그인</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa6" href="/app/auth/signup">회원가입</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa4" href="/app/logout">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="sub-innr">
        <div class="sub-innr_con">
            
            <div id="gnb">
                <ul class="ul1">
                    <!-- ======================================== -->
                    <li class="home">
                        <a href="/app/" class="home1">중고마을</a>
                    </li>
                    <!-- ======================================== -->
                    <li class="first">
                        <a href="#" class="dep01">쿠폰/포인트</a>
                        <ul class="ul2">
                            <!-- ======================================== -->
                            <li class="li2">
                                <a class="li2-a" href="#">출석체크</a>
                            </li>
                            <!-- ======================================== -->
                        </ul>
                    </li>
                    <!-- ======================================== -->
                    <li class="first">
                        <a href="#" class="dep01">상품</a>
                        <ul class="ul2">
                            <!-- ======================================== -->
                            <li class="li2">
                                <a class="li2-a" href="#">스마트폰</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="#">태블릿</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="#">노트북</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="#">기타 IT기기</a>
                            </li>
                            <!-- ======================================== -->
                        </ul>
                    </li>
                    <!-- ======================================== -->
                    <li class="first">
                        <a href="#" class="dep01">장바구니</a>
                        <ul class="ul2">
                            <!-- ======================================== -->
                            <li class="li2">
                                <a class="li2-a" href="/app/product/order">장바구니</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/product/order2">결제페이지</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/product/register">판매하기</a>
                            </li>
                            <!-- ======================================== -->
                        </ul>
                    </li>
                    <!-- ======================================== -->
                    <li class="first">
                        <a href="/app/auth/mypage" class="dep01">마이페이지</a>
                        <ul class="ul2">
                            <!-- ======================================== -->
                            <li class="li2">
                                <a class="li2-a" href="/app/mypage/order-lists">주문/배송 조회</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/mypage/modify">회원정보 수정</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/mypage/password-modify">비밀번호 변경</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/mypage/user-over">회원 탈퇴</a>
                            </li>
                            <!-- ======================================== -->
                        </ul>
                    </li>
                    <!-- ======================================== -->
                    <li class="first">
                        <a href="#" class="dep01">고객센터</a>
                        <ul class="ul2">
                            <!-- ======================================== -->
                            <li class="li2">
                                <a class="li2-a" href="#">공지사항</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/board/community">자유게시판</a>
                            </li>
                            <!-- ======================================== -->
                        </ul>
                    </li>
                    <!-- ======================================== -->
                </ul>
            </div>
        </div>
        <div class="gnb_bg"></div>
    </div>
