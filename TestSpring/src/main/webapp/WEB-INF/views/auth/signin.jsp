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
        <h4 class="mb-3">�α���</h4>
        
        <!-- <form class="validation-form" novalidate> -->
          <div class="mb-3">
            <label for="username">���̵�</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="���̵� �Է��� �ּ���." required>
            <div class="invalid-feedback">
              ���̵� �Է����ּ���.
            </div>
          </div>
          
          <div class="mb-3">
            <label for="password">��й�ȣ</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="��й�ȣ�� �Է��� �ּ���." required>
            <div class="invalid-feedback">
              ��й�ȣ�� �Է����ּ���.
            </div>
          </div>
          <div class="mb-4"></div>
          
          <button class="btn btn-primary btn-lg btn-block" id="submit" type="button">�α���</button>
          <button class="btn btn-primary btn-lg btn-block" id="submit2" type="button">ȸ������</button>
        <!-- </form> -->
        
      </div>
    </div>
  </div>
</div>
  <script src="/app/static/javascript/auth/signin.js"></script>
<jsp:include page="../top/footer.jsp"></jsp:include>
</body>
</html>