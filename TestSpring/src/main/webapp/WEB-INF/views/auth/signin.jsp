<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link rel="stylesheet" href="/app/static/css/signin.css">
<!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>


<div class="body">
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">로그인</h4>
        
        <!-- <form class="validation-form" novalidate> -->
          <div class="mb-3">
            <label for="username">아이디</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="아이디를 입력해 주세요." required>
            <div class="invalid-feedback">
              아이디를 입력해주세요.
            </div>
          </div>
          
          <div class="mb-3">
            <label for="password">비밀번호</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력해 주세요." required>
            <div class="invalid-feedback">
              비밀번호를 입력해주세요.
            </div>
          </div>
          <div class="mb-4"></div>
          
          <button class="btn btn-primary btn-lg btn-block" id="submit" type="button">로그인</button>
          <button class="btn btn-primary btn-lg btn-block" id="submit2" type="button">회원가입</button>
        <!-- </form> -->
        
      </div>
    </div>
  </div>
</div>
  <script src="/app/static/javascript/auth/signin.js"></script>
<jsp:include page="../top/footer.jsp"></jsp:include>
</body>
</html>