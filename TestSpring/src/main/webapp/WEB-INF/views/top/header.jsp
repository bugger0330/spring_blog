<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>���θ�</title>
<!-- ��Ʈ��Ʈ�� CSS, Fontawesome ������, ��������, reply.js -->
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
					<li class="nav-item"><a class="nav-link active" id="aaa5" href="/app/auth/signin">�α���</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa6" href="/app/auth/signup">ȸ������</a></li>
					<li class="nav-item"><a class="nav-link active" id="aaa4" href="/app/logout">�α׾ƿ�</a></li>
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
                        <a href="/app/" class="home1">�߰���</a>
                    </li>
                    <!-- ======================================== -->
                    <li class="first">
                        <a href="#" class="dep01">����/����Ʈ</a>
                        <ul class="ul2">
                            <!-- ======================================== -->
                            <li class="li2">
                                <a class="li2-a" href="#">�⼮üũ</a>
                            </li>
                            <!-- ======================================== -->
                        </ul>
                    </li>
                    <!-- ======================================== -->
                    <li class="first">
                        <a href="#" class="dep01">��ǰ</a>
                        <ul class="ul2">
                            <!-- ======================================== -->
                            <li class="li2">
                                <a class="li2-a" href="#">����Ʈ��</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="#">�º�</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="#">��Ʈ��</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="#">��Ÿ IT���</a>
                            </li>
                            <!-- ======================================== -->
                        </ul>
                    </li>
                    <!-- ======================================== -->
                    <li class="first">
                        <a href="#" class="dep01">��ٱ���</a>
                        <ul class="ul2">
                            <!-- ======================================== -->
                            <li class="li2">
                                <a class="li2-a" href="/app/product/order">��ٱ���</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/product/order2">����������</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/product/register">�Ǹ��ϱ�</a>
                            </li>
                            <!-- ======================================== -->
                        </ul>
                    </li>
                    <!-- ======================================== -->
                    <li class="first">
                        <a href="/app/auth/mypage" class="dep01">����������</a>
                        <ul class="ul2">
                            <!-- ======================================== -->
                            <li class="li2">
                                <a class="li2-a" href="/app/mypage/order-lists">�ֹ�/��� ��ȸ</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/mypage/modify">ȸ������ ����</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/mypage/password-modify">��й�ȣ ����</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/mypage/user-over">ȸ�� Ż��</a>
                            </li>
                            <!-- ======================================== -->
                        </ul>
                    </li>
                    <!-- ======================================== -->
                    <li class="first">
                        <a href="#" class="dep01">������</a>
                        <ul class="ul2">
                            <!-- ======================================== -->
                            <li class="li2">
                                <a class="li2-a" href="#">��������</a>
                            </li>
                            <li class="li2">
                                <a class="li2-a" href="/app/board/community">�����Խ���</a>
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
