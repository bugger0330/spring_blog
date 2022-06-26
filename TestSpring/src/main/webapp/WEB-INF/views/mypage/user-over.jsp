<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link href="/app/static/css/mypage/user-over.css" rel="stylesheet">
<link href="/app/static/css/mypage/mypage.css" rel="stylesheet">
        
            <div class="out">
                <div class="mypage-sub-title">
                    <h2>회원탈퇴</h2>
                    <p>
                        그동안 쇼핑몰을 이용해주셔서 감사합니다.
                        <br>
                        앞으로 고객 한분 한분의 말씀에 귀기울이며 더욱 노력하겠습니다.
                    </p>
                    <div class="precaution">
                        <img src="/app/static/images/mypage/pre_ic.png">
                        <span>꼭 읽어보세요.</span>
                        <p>
                            회원탈퇴시 회원님의 적립금 및 할인쿠폰은 소멸됩니다.
                            <br>
                            한번 탈퇴한 아이디는 다시 사용하실 수 없습니다.
                        </p>
                    </div>
                </div>
                <div class="out-wrap">
                    <h3>어떤 점이 불편하셨나요?</h3>
                    <p>불편하셨던 점을 알려주시면 향상된 서비스를 위한 소중한 정보로 활용하겠습니다.</p>
                    <div class="discontent">
                        <div class="sub-inner">
                            <ul class="reason-box">
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason01" name="reason-id" type="radio" value="1" checked="true">
                                            <label for="reason01">개인정보 유출 우려</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason02" name="reason-id" type="radio" value="2">
                                            <label for="reason02">상품품질 불만족</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason03" name="reason-id" type="radio" value="3">
                                            <label for="reason03">배송지연</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason04" name="reason-id" type="radio" value="4">
                                            <label for="reason04">이용빈도 낮음</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason05" name="reason-id" type="radio" value="5">
                                            <label for="reason05">교환/환불 불만족</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason06" name="reason-id" type="radio" value="6">
                                            <label for="reason06">A/S 불만족</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason07" name="reason-id" type="radio" value="7">
                                            <label for="reason07">사이트 속도 느림</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason08" name="reason-id" type="radio" value="8">
                                            <label for="reason08">특별한 사유 없음</label>
                                        </span>
                                    </div>
                                </li>
                            </ul>
                            <textarea name="reason-desc" placeholder="쇼핑몰에 하고 싶은 말을 남겨주세요 (4,000자 이내)"></textarea>
                        </div>
                        <p class="id-check">본인확인</p>
                    </div>
                    <div class="id-check-wrap sub-inner" id="user-info">
                        <p>
                            <label>아이디</label>
                            <span>|</span>
                            <input type="text" readonly class="black">
                        </p>
                        <p>
                            <label>비밀번호</label>
                            <span>|</span>
                            <input type="password" id="password-check" placeholder="비밀번호를 입력해주세요" class="border-on"
                                required>
                        </p>
                    </div>
                    <div class="submit-box">
                        <input type="submit" id="userover-btn" value="탈퇴" class="submit-icon red">
                        <input type="reset" value="취소" class="submit-icon gray">
                    </div>
                </div>
            </div>

 <jsp:include page="../top/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/mypage/user-over.js"></script>
    