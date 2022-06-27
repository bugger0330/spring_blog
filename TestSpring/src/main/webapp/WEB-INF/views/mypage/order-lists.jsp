<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../top/header.jsp"></jsp:include>
	<link href="/app/static/css/mypage/order-lists.css" rel="stylesheet">



    <div id="container">
        <h1 class="tit-cart">
            주문 내역</h1>

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
                                <div class="tb-center">배송조회</div>
                            </th>
                        </tr>
					</thead>
                        <!-- ========================================================================================================= -->
					<tbody></tbody>
                </table>
            </div>
          

        </div>


    </div>
<script src="/app/static/javascript/mypage/order-lists.js"></script>
<jsp:include page="../top/footer.jsp"></jsp:include>
    