<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../top/header.jsp"></jsp:include>
	<link href="/app/static/css/product/order.css" rel="stylesheet">



    <div id="container">
        <h1 class="tit-cart">
            주문서 작성</h1>

        <div class="form-tbl-new">
            <h4 class="form_h4">주문상품 내역</h4>
            <div class="clearfix">
                <table width="900px" height="100px">
                    <thead>
                        <tr>
                            <th scope="col">
                                <div class="tb-center">선택</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center">이미지</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center">상품명</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center">가격</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center">삭제</div>
                            </th>
                        </tr>
					</thead>
                        <!-- ========================================================================================================= -->
					<tbody></tbody>
                </table>
                                <h4 class="flag">장바구니가 비어있습니다.</h4>
            </div>
            <div class="btns">
            	<button class="back-btn">뒤로가기</button>
            	<button class="delete-btn2">선택삭제</button>
            	<button class="order2">모두 결제하기</button>
            </div>

        </div>


    </div>
<script src="/app/static/javascript/product/order.js"></script>
<jsp:include page="../top/footer.jsp"></jsp:include>
    