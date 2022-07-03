<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link href="/app/static/css/mypage/user_modify.css" rel="stylesheet">
<link href="/app/static/css/mypage/mypage.css" rel="stylesheet">
         <div class="container">
        
            <div class="mypage-sub-title" style="border-bottom: 0;">
                <h2>���� ��������</h2>
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
                            <input type="text" class="input-item" readonly>
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
                        <label>�̸�</label>
                        <div class="input-box">
                            <input type="text" class="input-item" readonly>
                        </div>
                    </div>
                    
                    <div>
                        <label>�̸���</label>
                        <div class="input-box">
                            <input type="text" class="input-item">
                        </div>
                    </div>
                    <div>
                        <label>�޴���</label>
                        <div class="input-box">
                            <input type="text" class="input-item">
                        </div>
                    </div>
                    <div>
                        <label style="vertical-align: top;">�ּ�</label>
                        <div class="input-box">
                            <div class="line-contents">
                                <div>
                                    <input type="text" name="postcode" value class="address border-on" id="address1"
                                        readonly>
                                    <button type="button" class="btn">�ּҰ˻�</button>
                                </div>
                                <input type="text" name="postcode"  class="address border-on" id="address1-1">
                                <input type="text" name="postcode-detail"  class="address border-on" id="address2">
                            </div>
                        </div>
                    </div>
                    <div class="submit-box">
                        <input type="submit" value="Ȯ��" class="submit">
                    </div>
                </div>
            </div>
        </div>
<jsp:include page="../top/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/mypage/user_modify.js"></script>
    