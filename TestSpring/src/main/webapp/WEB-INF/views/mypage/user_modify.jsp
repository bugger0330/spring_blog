<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link href="/app/static/css/mypage/user_modify.css" rel="stylesheet">
<link href="/app/static/css/mypage/mypage.css" rel="stylesheet">
         <div class="container">
        
            <div class="mypage-sub-title" style="border-bottom: 0;">
                <h2>나의 정보수정</h2>
                <p>
                    회원님의 개인정보를 수정할 수 있습니다.
                    <br>
                    편리한 서비스 이용을 위하여 정확한 정보를 입력해 주시기 바랍니다.
                </p>
            </div>
            <div class="revise-wrapper">
                <h5>기본정보 입력</h5>
                <div class="modify-box sub-inner">
                    <input type="hidden" name="method" value="put">
                    <!-- <input type="hidden" name="token" value="">
                    <input type="hidden" name="email"> -->
                    <div>
                        <label>아이디</label>
                        <div class="input-box">
                            <input type="text" class="input-item" readonly>
                            <input type="hidden" class="hidden" value="">
                        </div>
                    </div>
                    <div>
                        <label>비밀번호</label>
                        <div class="input-box">
                            <input type="password" id="password" class="border-on gray w80"
                                placeholder="정보 수정을 위해 기존 비밀번호를 입력해주세요.">
                        </div>
                    </div>
                    
                    <div>
                        <label>이름</label>
                        <div class="input-box">
                            <input type="text" class="input-item" readonly>
                        </div>
                    </div>
                    <div>
                        <label>닉네임</label>
                        <div class="input-box">
                            <input type="text" class="input-item">
                        </div>
                    </div>
                    
                    <div>
                        <label>이메일</label>
                        <div class="input-box">
                            <input type="text" class="input-item">
                        </div>
                    </div>
                    <div>
                        <label>휴대폰</label>
                        <div class="input-box">
                            <input type="text" class="input-item">
                        </div>
                    </div>
                    <div>
                        <label style="vertical-align: top;">주소</label>
                        <div class="input-box">
                            <div class="line-contents">
                                <div>
                                    <input type="text" name="postcode" value class="address border-on" id="address1"
                                        readonly>
                                    <button type="button" class="btn" onclick="sample6_execDaumPostcode();">주소검색</button>
                                </div>
                                <input type="text" name="postcode"  class="address border-on" id="address2">
                                <input type="text" name="postcode-detail"  class="address border-on" id="address3">
                            </div>
                        </div>
                    </div>
                    <div class="submit-box">
                        <input type="submit" value="확인" class="submit">
                    </div>
                </div>
            </div>
        </div>
<jsp:include page="../top/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/mypage/user_modify.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    