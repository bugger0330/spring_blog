
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link rel="stylesheet" href="/app/static/css/signup.css">
<!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<div class="body">
<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        
        <form class="validation-form" action="/app/auth/signup" method="post" novalidate>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="username">아이디<button type="button" id="checkBtn">중복확인</button></label>
              <input type="text" class="form-control" id="username" name="username" placeholder="" value="" required>
              <div class="invalid-feedback">
                아이디를 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="nickname">닉네임</label>
              <input type="text" class="form-control" id="nickname" name="nickname" placeholder="" value="" required>
              <div class="invalid-feedback">
                닉네임을 입력해주세요.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="password">비밀번호</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="" required>
            <div class="invalid-feedback">
              비밀번호를 입력해주세요.
            </div>
            
          </div>
          <div class="mb-3">
            <label for="password1">비밀번호 확인</label>
            <input type="password" class="form-control" id="password1" placeholder="" required>
            <div class="invalid-feedback">
              비밀번호를 입력해주세요.
            </div>
          </div>

			<div class="mb-3">
            <label for="name">이름</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="" required>
            <div class="invalid-feedback">
              이름을 입력해주세요.
            </div>
            </div>

          <div class="mb-3">
            <label for="email">이메일</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="you@example.com" required>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          
          <div class="mb-3">
            <label for="phone">전화번호</label>
            <input type="text" class="form-control" id="phone" name="phone" placeholder="010-1234-5678" required>
            <div class="invalid-feedback">
              전화번호를 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="address">주소</label>
            <input type="text" class="form-control" id="address" name="address" placeholder="서울특별시 강남구" required>
            <div class="invalid-feedback">
              주소를 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
            <input type="text" class="form-control" id="address2" name="address2" placeholder="상세주소를 입력해주세요.">
          </div>

          
          
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" id="submit" type="submit">가입 완료</button>
        
        </form>
      </div>
    </div>
    
  </div>
 </div>
    <jsp:include page="../top/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/signup.js"></script>
</body>
</html>