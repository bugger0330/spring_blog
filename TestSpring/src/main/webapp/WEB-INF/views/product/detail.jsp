<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../top/header.jsp"></jsp:include>
    <link rel="stylesheet" href="/app/static/css/product/detail.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

    <div id="container">
        <div class="view_top_box">
            <div class="top_left_box">
                <div class="s_w_wrap">
                    <div class="swiper-container">
                            <div class="swiper-slide">
                                <div class="img_box">
                                    
                                    <img class="img_1" src="" alt="">
                                    
                                </div>
                            </div>
                    </div>
                </div>
            </div>
            <div class="top_right_box">
                <div class="t_right01">
                    <span class="title"></span>
                    <span class="price"></span>           
                </div>
                <div class="t_right02">
                    <p>
                        <span class="sp01">결제방법</span>
                        <span class="sp02" id="delivery"></span>
                    </p>
                    <p>
                        <span class="sp01">배송비</span>
                        <span class="sp02">무료배송</span>
                    </p>
                    <p>
                        <span class="sp01">판매자 아이디</span>
                        <span class="sp02" id="username1">
                            <button class="qna-btn">문의하기</button>
                        </span>
                    </p>
                    <p>
                        <span class="sp01">판매자 전화번호</span>
                        <span class="sp02" id="phone1"></span>
                    </p>
                    <p>
                        <span class="sp01">제품 상태</span>
                        <span class="sp02" id="status"></span>
                    </p>
                    <p>
                        <span class="sp01">교환/환불</span>
                        <span class="sp02" id="exchange"></span>
                    </p>
                    <div class="order-div">
                    	<button class="order">장바구니 담기</button>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="content-main">
        	<table>
        		<tr>
        			<th>내용</th>
        		</tr>
        		<tr>
        			<td>
        				<div class="img-list">
        					<img class="imgs" src="">
        					<img class="imgs" src="">
        					<img class="imgs" src="">
        					<img class="imgs" src="">
        					<img class="imgs" src="">
        					<img class="imgs" src="">
        				</div>
        				<hr>
        				<pre class="content"></pre>
        			</td>
        		</tr>
        	</table>
        </div>
</div>
<script src="/app/static/javascript/product/detail.js"></script>
<jsp:include page="../top/footer.jsp"></jsp:include>