
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
        <h4 class="mb-3">ȸ������</h4>
        
        <form class="validation-form" action="/app/auth/signup" method="post" novalidate>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="username">���̵�<button type="button" id="checkBtn">�ߺ�Ȯ��</button></label>
              <input type="text" class="form-control" id="username" name="username" placeholder="" value="" required>
              <div class="invalid-feedback">
                ���̵� �Է����ּ���.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="nickname">�г���</label>
              <input type="text" class="form-control" id="nickname" name="nickname" placeholder="" value="" required>
              <div class="invalid-feedback">
                �г����� �Է����ּ���.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="password">��й�ȣ</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="" required>
            <div class="invalid-feedback">
              ��й�ȣ�� �Է����ּ���.
            </div>
            
          </div>
          <div class="mb-3">
            <label for="password1">��й�ȣ Ȯ��</label>
            <input type="password" class="form-control" id="password1" placeholder="" required>
            <div class="invalid-feedback">
              ��й�ȣ�� �Է����ּ���.
            </div>
          </div>

			<div class="mb-3">
            <label for="name">�̸�</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="" required>
            <div class="invalid-feedback">
              �̸��� �Է����ּ���.
            </div>
            </div>

          <div class="mb-3">
            <label for="email">�̸���</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="you@example.com" required>
            <div class="invalid-feedback">
              �̸����� �Է����ּ���.
            </div>
          </div>
          
          <div class="mb-3">
            <label for="phone">��ȭ��ȣ</label>
            <input type="text" class="form-control" id="phone" name="phone" placeholder="010-1234-5678" required>
            <div class="invalid-feedback">
              ��ȭ��ȣ�� �Է����ּ���.
            </div>
          </div>

          <div class="mb-3">
            <label for="address">�ּ�</label>
            <input type="text" class="form-control" id="address" name="address" placeholder="����Ư���� ������" required>
            <div class="invalid-feedback">
              �ּҸ� �Է����ּ���.
            </div>
          </div>

          <div class="mb-3">
            <label for="address2">���ּ�<span class="text-muted">&nbsp;(�ʼ� �ƴ�)</span></label>
            <input type="text" class="form-control" id="address2" name="address2" placeholder="���ּҸ� �Է����ּ���.">
          </div>

          
          
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">�������� ���� �� �̿뿡 �����մϴ�.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" id="submit" type="submit">���� �Ϸ�</button>
        
        </form>
      </div>
    </div>
    
  </div>
 </div>
    <jsp:include page="../top/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/signup.js"></script>
</body>
</html>