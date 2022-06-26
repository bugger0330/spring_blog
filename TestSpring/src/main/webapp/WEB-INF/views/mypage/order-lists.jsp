<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link href="/app/static/css/mypage/order-lists.css" rel="stylesheet">
<link href="/app/static/css/mypage/mypage.css" rel="stylesheet">
<div class="container">
        <div id="nav">
            <div class="nav-top">
                <div class="top-left">
                    <div class="top-left-items"><a href="#">출석체크</a></div>
                    <div class="top-left-items"><a href="#">단체화</a></div>
                    <div class="top-left-items"><a href="#">고객센터</a></div>
                </div>
                <div class="top-right">
                    <div class="top-right-items"><a href="#">로그아웃</a></div>
                    <div class="top-right-items"><a href="#">마이페이지</a></div>
                    <div class="top-right-items"><a href="#">주문배송</a></div>
                    <div class="top-right-items"><a href="#">장바구니</a></div>
                </div>
            </div>
            <div class="nav-bottom">
                <div></div>
                <div class="nav-bottom-content-box">
                    <div class="bottom-left">
                        <ul class="left-content">
                            <li class="bottom-items01">
                                <a href="#">남성</a>
                                <div class="bottom-items02-box">
                                    <ul class="bottom-items02">
                                        <li>
                                            <ul class="bottom-items03">
                                                <li><a href="#">드레스</a></li>
                                                <li><a href="#">캐쥬얼</a></li>
                                                <li><a href="#">키높이</a></li>
                                                <li><a href="#">광폭</a></li>
                                                <li><a href="#">GORE-TEX</a></li>
                                                <li><a href="#">골프화</a></li>
                                                <li><a href="#">등산화</a></li>
                                                <li><a href="#">메쉬</a></li>
                                                <li><a href="#">샌들</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="bottom-items01">
                                <a href="#">여성</a>
                                <div class="bottom-items02-box">
                                    <ul class="bottom-items02">
                                        <li>
                                            <ul class="bottom-items03">
                                                <li><a href="#">드레스</a></li>
                                                <li><a href="#">캐쥬얼</a></li>
                                                <li><a href="#">샌들</a></li>
                                                <li><a href="#">골프화</a></li>
                                                <li><a href="#">등산화</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="bottom-items01">
                                <a href="#">가방</a>
                                <div class="bottom-items02-box">
                                    <ul class="bottom-items02">
                                        <li>
                                            <ul class="bottom-items03">
                                                <li><a href="#">남성</a></li>
                                                <li><a href="#">여성</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="bottom-items01">
                                <a href="#">패션잡화</a>
                                <div class="bottom-items02-box">
                                    <ul class="bottom-items02">
                                        <li>
                                            <ul class="bottom-items03">
                                                <li><a href="#">남성지갑</a></li>
                                                <li><a href="#">여성지갑</a></li>
                                                <li><a href="#">벨트</a></li>
                                                <li><a href="#">양말</a></li>
                                                <li><a href="#">케어용품</a></li>
                                                <li><a href="#">의류</a></li>
                                                <li><a href="#">파우치</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <h1><a href="#"><img src="/static/images/mypage/logo.png"></a></h1>
                    <div class="bottom-right">
                        <ul class="right-conetent">
                            <li class="bottom-items01">
                                <a href="#">기획전</a>
                            </li>
                            <li class="bottom-items01">
                                <a href="#">아울렛</a>
                            </li>
                            <li class="bottom-items01">
                                <a href="#"><img src="/static/images/mypage/search_ic.png"></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="mypage-menu high">
            <div class="top-my-box">
                <h3>MY 금강</h3>
                <p>
                    안녕하세요!
                    <span>윤성준</span>
                    님
                </p>
            </div>
            <div class="bottom-my-box">
                <div class="my-menu01">
                    <h4>쇼핑내역 관리</h4>
                    <ul>
                        <li><a href="#">주문배송 조회</a></li>
                        <li><a href="#">교환/반품/취소 내역</a></li>
                    </ul>
                </div>
                <div class="my-menu01">
                    <h4>쇼핑혜택 관리</h4>
                    <ul>
                        <li><a href="#">적립금</a></li>
                        <li><a href="#">할인쿠폰</a></li>
                    </ul>
                </div>
                <div class="my-menu01">
                    <h4>나의 게시물 관리</h4>
                    <ul>
                        <li><a href="#">1:1 문의</a></li>
                        <li><a href="#">나의 상품평</a></li>
                    </ul>
                </div>
                <div class="my-menu01">
                    <h4>나의 정보 관리</h4>
                    <ul>
                        <li><a href="#">나의 정보수정</a></li>
                        <li><a href="#">회원탈퇴</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="mypage">
            <div class="mypage-top">
                <div class="mypage-top-content">
                    <div class="top-content-box sub-inner">
                        <div class="top-content-items">
                            <img src="/static/images/mypage/mypage_top_content_items_01.png">
                            <p>
                                <span>적립금</span>
                                5,000P
                            </p>
                        </div>
                        <div class="top-content-items">
                            <img src="/static/images/mypage/mypage_top_content_items_02.png">
                            <p>
                                <span>쿠폰</span>
                                1장
                            </p>
                        </div>
                        <div class="top-content-items">
                            <img src="/static/images/mypage/mypage_top_content_items_03.png">
                            <p>
                                <span>회원등급</span>
                                일반회원
                            </p>
                        </div>
                    </div>
                </div>
                <div class="mypage-class-info">
                    <a href="">회원등급 안내<img src="/static/images/mypage/mypage_class_info_right.png"></a>
                </div>
            </div>
            <div class="order-search">
                <div class="order-title">
                    <h2>주문배송 조회</h2>
                    <p>고객님의 주문내역을 조회하실 수 있습니다.</p>
                </div>
                <div class="search-period sub-inner clearfix">
                    <ul>
                        <li class="on"><a href="javascript:void(0);"
                                wire:click="setPeriod('2022-05-07', '2022-06-07')">1개월</a></li>
                        <li><a href="javascript:void(0);">3개월</a></li>
                        <li><a href="javascript:void(0);">6개월</a></li>
                        <li><a href="javascript:void(0);">1년</a></li>
                    </ul>
                    <h4>기간별 검색</h4>
                    <div class="search-box">
                        <div class="search-content">
                            <input type="date" name="datebox" wire:model.defer="datebox" class="date-box">
                            <span>~</span>
                            <input type="date" name="date-until" wire:model.defer="date-until" class="date-box">
                            <input type="submit" class="search-submit">
                        </div>
                    </div>
                </div>
                <div>
                    <div id="app-orders" class="mypage-table-box">
                        <table class="sub-inner">
                            <colgroup>
                                <col width="125px">
                                <col width="160px">
                                <col width="*">
                                <col width="100px">
                                <col width="100px">
                                <col width="115px">
                                <col width="115px">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>주문일</th>
                                    <th>주문번호</th>
                                    <th>상품정보</th>
                                    <th>수량</th>
                                    <th>상품금액</th>
                                    <th>진행상황</th>
                                    <th>상품평</th>
                                </tr>
                            </thead>
                        </table>
                        <p style="padding: 1em; text-align: center;">항목이 없습니다.</p>
                        <div class="write-pop-wrap proview">
                            <div class="write-pop-wrap-inner">
                                <h3 class="write-pop-wrap-title flex-box">
                                    <span class="title-text">상품평쓰기</span>
                                    <span class="close-btn"><img src="/static/images/mypage/pop_close_btn.png"></span>
                                </h3>
                                <ul class="review-box">
                                    <li class="review-dep-li">
                                        <h5>상품은 만족하셨나요?</h5>
                                        <p class="star-num">
                                        <div class="star-rating">
                                            <fieldset>
                                                <input type="radio" name="rating" value="5" id="rate1"><label
                                                    for="rate1">⭐</label>
                                                <input type="radio" name="rating" value="4" id="rate2"><label
                                                    for="rate2">⭐</label>
                                                <input type="radio" name="rating" value="3" id="rate3"><label
                                                    for="rate3">⭐</label>
                                                <input type="radio" name="rating" value="2" id="rate4"><label
                                                    for="rate4">⭐</label>
                                                <input type="radio" name="rating" value="1" id="rate5"><label
                                                    for="rate5">⭐</label>
                                            </fieldset>
                                        </div>
                                        </p>
                                    </li>
                                    <li class="review-dep-li">
                                        <h5>사용후기를 자세히 남겨주세요.</h5>
                                        <textarea name="review-content" id="review-content"></textarea>
                                    </li>
                                    <div class="submit-box">
                                        <button class="submit-btn">등록</button>
                                        <button class="cancel-btn">취소</button>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="clear: both; margin: 0px 0px 4em;">
                <div></div>
            </div>
            <div class="sub-inner order-step-wrap">
                <h4 class="help-title">
                    교환/반품진행 단계 도움말
                </h4>
                <ul class="flex-box-center">
                    <li class="con">
                        <img src="/static/images/mypage/mp_bottom_icon_01.png">
                        <h5>1. 교환/반품요청</h5>
                    </li>
                    <li class="mid">
                        <img src="/static/images/mypage/next_bottom_icon.png">
                    </li>
                    <li class="con">
                        <img src="/static/images/mypage/mp_bottom_icon_02.png">
                        <h5>2. 교환/반품승인</h5>
                    </li>
                    <li class="mid">
                        <img src="/static/images/mypage/next_bottom_icon.png">
                    </li>
                    <li class="con">
                        <img src="/static/images/mypage/mp_bottom_icon_05.png">
                        <h5>3. 환불중 (반품요청시)</h5>
                    </li>
                    <li class="mid">
                        <img src="/static/images/mypage/next_bottom_icon.png">
                    </li>
                    <li class="con">
                        <img src="/static/images/mypage/mp_bottom_icon_04.png">
                        <h5>4. 교환/반품 완료</h5>
                        <br>
                    </li>
                </ul>
            </div>
            <span class="line"></span>
            <div class="sub-inner order-step-wrap">
                <h4 class="help-title">
                    취소진행 단계 도움말
                </h4>
                <ul class="flex-box-center">
                    <li class="con">
                        <img src="/static/images/mypage/mp_bottom_icon_01.png">
                        <h5>1. 취소요청</h5>
                    </li>
                    <li class="mid">
                        <img src="/static/images/mypage/next_bottom_icon.png">
                    </li>
                    <li class="con">
                        <img src="/static/images/mypage/mp_bottom_icon_02.png">
                        <h5>2. 취소승인</h5>
                    </li>
                    <li class="mid">
                        <img src="/static/images/mypage/next_bottom_icon.png">
                    </li>
                    <li class="con">
                        <img src="/static/images/mypage/mp_bottom_icon_05.png">
                        <h5>3. 환불중</h5>
                    </li>
                    <li class="mid">
                        <img src="/static/images/mypage/next_bottom_icon.png">
                    </li>
                    <li class="con">
                        <img src="/static/images/mypage/mp_bottom_icon_04.png">
                        <h5>4. 취소/환불 완료</h5>
                    </li>
                </ul>
            </div>
        </div>
 <jsp:include page="../top/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/home.js"></script>
    