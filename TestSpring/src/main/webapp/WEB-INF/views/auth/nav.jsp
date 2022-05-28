<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="/app/static/javascript/nav.js"></script>
    <link rel="stylesheet" href="/app/static/css/nav.css">
    <link href="/app/static/css/home/home.css" rel="stylesheet">
<!-- 	<link href="/app/static/css/home/bootstrap.min.css" rel="stylesheet"> -->
    
	<!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <!-- 장바구니 버튼 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
	
</head>

    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            
                            <div class="header__top__right__auth">
                                <a href="/app/auth/signin"><i class="fa fa-user"></i>로그인</a>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="/app/auth/signup"><i class="fa fa-user"></i>회원가입</a>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="/app/auth/mypage"><i class="fa fa-user"></i>마이페이지</a>
                            </div>
                        </div>
                    </div>
                    <form>
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>

                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><!-- <img src="/static/images/logo.png" alt=""> --></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="/app/">홈</a></li>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">카테고리</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="/app/product/insert">스마트폰</a></li>
                                    <li><a href="#">태블릿</a></li>
                                    <li><a href="#">주변기기</a></li>
                                    <li><a href="#">기타</a></li>
                                </ul>
                            </li>
                            <li><a href="/app/board/list">커뮤니티</a></li>
                            <li><a href="#">고객센터</a></li>
                           
                        </ul>
                    </nav>
                </div>
            </div>
            
        </div>
    </header>


