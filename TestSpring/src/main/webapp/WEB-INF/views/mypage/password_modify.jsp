<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link href="/app/static/css/mypage/user_modify.css" rel="stylesheet">
<link href="/app/static/css/mypage/mypage.css" rel="stylesheet">
         <div class="container">
        
            <div class="mypage-sub-title" style="border-bottom: 0;">
                <h2>비밀번호 수정</h2>
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
                    <input type="hidden" name="token" value="">
                    <input type="hidden" name="email">
                    <div>
                        <label>아이디</label>
                        <div class="input-box">
                            <input type="text" id="username" readonly>
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
                        <label>새 비밀번호</label>
                        <div class="input-box">
                            <input type="password" id="password1" class="border-on gray w80"
                                placeholder="비밀번호는 4~16자의 영문/숫자를 조합하여 입력해야 합니다.">
                            <span class="change">비밀번호 변경시 입력해주세요.</span>
                        </div>
                    </div>
                    <div>
                        <label>새 비밀번호 확인</label>
                        <div class="input-box">
                            <input type="password" id="password2" class="border-on gray w80"
                                placeholder="비밀번호 확인을 위해 다시한번 입력해주세요.">
                            <span class="change">비밀번호 변경시 입력해주세요.</span>
                        </div>
                    </div>
                    
                           
                    <div class="submit-box">
                        <input type="submit" value="확인" class="submit">
                    </div>
                </div>
            </div>
        </div>
<jsp:include page="../top/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/mypage/password_modify.js"></script>
    