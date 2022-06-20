<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link href="/app/static/css/product/order2.css" rel="stylesheet">
</head>

<body>



    <div id="container">
        <h1 class="tit-cart">
            주문서 작성</h1>

        <div class="form-tbl-new">
            <h4 class="form_h4">주문상품 내역</h4>
            <div class="clearfix">
                <table width="900px" height="100px">
                    <tbody>
                        <tr>
                            <th scope="col">
                                <div class="tb-center"></div>
                            </th>
                            <th scope="col">
                                <div class="tb-center">이미지</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center">상품명</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center">적립</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center">가격</div>
                            </th>
                        </tr>

                        <!-- ========================================================================================================= -->

                        <tr class="tbody_tr">
                            <td></td>
                            <td><img src="#" width="100px" height="80px" /></td>
                            <td class="td1"></td>
                            <td>원</td>
                            <td>원</td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <h4 align="center">장바구니가 비어있습니다.</h4>
                            </td>
                        </tr>
                    </tbody>
                    <!-- ========================================================================================================= -->
                </table>
            </div>

        </div>

        <div class="form-tbl-new">
            <h4 class="form_h">받으시는 분 정보
            </h4>
            <table summary="주문자정보" class="__se_tbl_ext">
                <colgroup>
                    <col width="16.66666667%">
                    <col>
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row" class="fw-nor">
                            <span class="compulsory">수령자 명</span>
                        </th>
                        <td class="bdtop">
                            <input type="text" class="w-half" placeholder="이름을 입력하세요.">
                        </td>
                    </tr>

                    <tr>
                        <th scope="row" class="fw-nor">
                            <span class="compulsory">집 전화번호</span>
                        </th>
                        <td class="bdtop">
                            <input type="text" class="w-half" placeholder="( - ) 없이 입력하세요!">
                        </td>
                    </tr>

                    <tr>
                        <th scope="row" class="fw-nor">
                            <span class="compulsory">휴대폰 번호</span>
                        </th>
                        <td class="bdtop">
                            <input type="text" class="w-half" placeholder="( - ) 없이 입력하세요!">
                        </td>
                    </tr>



                    <tr>
                        <th scope="row" class="fw-nor">
                            <span class="compulsory">수령주소</span>
                        </th>
                        <td class="addr">
                            <div class="form-inline">
                                <div class="addr-group">
                                    <input type="text" class="zipinp-searchAddr" id="addr-num" readonly="" placeholder="우편번호"
                                        tabindex="8">
                                    <button type="button" class="btn-adress" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
                                </div>
                            </div>
                            <input type="text" class="w-half2" id="addr-con1" readonly="" placeholder="기본주소" tabindex="9">
                            <input type="text" class="w-half3" id="addr-con2" placeholder="나머지주소" tabindex="10">
                            <div id="recvAddrNotice">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" class="fw-nor">
                            배송 시 요청사항
                        </th>
                        <td class="deliv">
                            <textarea cols="30" rows="2" class="w-pull" placeholder="배송시 요청사항을 입력하세요." tabindex="11"
                               ></textarea>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>


        <div>
            <table>

                <tr>
                    <td class="all-price">총 가격 : 원</td>
                </tr>
            </table>
        </div>
        <div class="form-tbl-new">
            <h4 class="tb1-h4">결제 방법</h4>
            <div class="moneys">
                <button class="money1">카드결제</button>
                <button class="money2">계좌이체</button>
                <button class="money3">무통장 입금</button>
            </div>

            <div>
                <div class="stit-area">
                    <div class="help-block">
                        <p class="help_p">
                            주문 변경 시 카드사 혜택 및 할부 적용 여부는 해당 카드사 정책에 따라 변경될 수 있습니다.
                        </p>

                    </div>
                </div>
            </div>
        </div>

        <p>
            <button type="button" class="submit-btn">
                결제하기</button><br>
        </p>


  </div>



    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    </script>



<script src="/app/static/javascript/product/order2.js"></script>
</body>

</html>