<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link href="/app/static/css/mypage/user_modify.css" rel="stylesheet">
<link href="/app/static/css/mypage/mypage.css" rel="stylesheet">
         <div class="container">
        
            <div class="mypage-sub-title" style="border-bottom: 0;">
                <h2>��й�ȣ ����</h2>
                <p>
                    ȸ������ ���������� ������ �� �ֽ��ϴ�.
                    <br>
                    ���� ���� �̿��� ���Ͽ� ��Ȯ�� ������ �Է��� �ֽñ� �ٶ��ϴ�.
                </p>
            </div>
            <div class="revise-wrapper">
                <h5>�⺻���� �Է�</h5>
                <div class="modify-box sub-inner">
                    <input type="hidden" name="method" value="put">
                    <input type="hidden" name="token" value="">
                    <input type="hidden" name="email">
                    <div>
                        <label>���̵�</label>
                        <div class="input-box">
                            <input type="text" id="username" readonly>
                        </div>
                    </div>
                    <div>
                        <label>��й�ȣ</label>
                        <div class="input-box">
                            <input type="password" id="password" class="border-on gray w80"
                                placeholder="���� ������ ���� ���� ��й�ȣ�� �Է����ּ���.">
                        </div>
                    </div>
                    <div>
                        <label>�� ��й�ȣ</label>
                        <div class="input-box">
                            <input type="password" id="password1" class="border-on gray w80"
                                placeholder="��й�ȣ�� 4~16���� ����/���ڸ� �����Ͽ� �Է��ؾ� �մϴ�.">
                            <span class="change">��й�ȣ ����� �Է����ּ���.</span>
                        </div>
                    </div>
                    <div>
                        <label>�� ��й�ȣ Ȯ��</label>
                        <div class="input-box">
                            <input type="password" id="password2" class="border-on gray w80"
                                placeholder="��й�ȣ Ȯ���� ���� �ٽ��ѹ� �Է����ּ���.">
                            <span class="change">��й�ȣ ����� �Է����ּ���.</span>
                        </div>
                    </div>
                    
                           
                    <div class="submit-box">
                        <input type="submit" value="Ȯ��" class="submit">
                    </div>
                </div>
            </div>
        </div>
<jsp:include page="../top/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/mypage/password_modify.js"></script>
    