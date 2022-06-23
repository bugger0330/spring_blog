<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>쇼핑몰</title>
<!-- 부트스트랩 CSS, Fontawesome 아이콘, 제이쿼리, reply.js -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="/app/static/javascript/header.js"></script>

</head>


<body>
	<!-- Responsive navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" >
		<div class="container">
			<a class="navbar-brand" href="/app/"><i class="fas fa-home"></i>&nbsp;&nbsp;HOME</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-md-0">

					<li class="nav-item"><a class="nav-link active" id="aaa" href="/app/product/register"><i class="fas fa-paw"></i>&nbsp;상품등록</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa" href="/app/product/order"><i class="fas fa-paw"></i>&nbsp;장바구니</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa" href="/app/product/order2"><i class="fas fa-paw"></i>&nbsp;결제페이지</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa" href="/app/logout"><i class="fas fa-paw"></i>&nbsp;로그아웃</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa" href="/app/auth/signin"><i class="fas fa-paw"></i>&nbsp;로그인</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa" href="/app/auth/signup"><i class="fas fa-paw"></i>&nbsp;회원가입</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa" href="/app/auth/mypage"><i class="fas fa-paw"></i>&nbsp;마이페이지</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa" href="/app/board/community"><i class="fas fa-paw"></i>&nbsp;게시판</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa" href="#"><i class="fas fa-paw"></i>&nbsp;상품</a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	
<br><br><br><br>
