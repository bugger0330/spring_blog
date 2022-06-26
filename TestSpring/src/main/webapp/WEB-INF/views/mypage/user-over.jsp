<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link href="/app/static/css/mypage/user-over.css" rel="stylesheet">
<link href="/app/static/css/mypage/mypage.css" rel="stylesheet">
        
            <div class="out">
                <div class="mypage-sub-title">
                    <h2>ȸ��Ż��</h2>
                    <p>
                        �׵��� ���θ��� �̿����ּż� �����մϴ�.
                        <br>
                        ������ �� �Ѻ� �Ѻ��� ������ �ͱ���̸� ���� ����ϰڽ��ϴ�.
                    </p>
                    <div class="precaution">
                        <img src="/app/static/images/mypage/pre_ic.png">
                        <span>�� �о����.</span>
                        <p>
                            ȸ��Ż��� ȸ������ ������ �� ���������� �Ҹ�˴ϴ�.
                            <br>
                            �ѹ� Ż���� ���̵�� �ٽ� ����Ͻ� �� �����ϴ�.
                        </p>
                    </div>
                </div>
                <div class="out-wrap">
                    <h3>� ���� �����ϼ̳���?</h3>
                    <p>�����ϼ̴� ���� �˷��ֽø� ���� ���񽺸� ���� ������ ������ Ȱ���ϰڽ��ϴ�.</p>
                    <div class="discontent">
                        <div class="sub-inner">
                            <ul class="reason-box">
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason01" name="reason-id" type="radio" value="1" checked="true">
                                            <label for="reason01">�������� ���� ���</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason02" name="reason-id" type="radio" value="2">
                                            <label for="reason02">��ǰǰ�� �Ҹ���</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason03" name="reason-id" type="radio" value="3">
                                            <label for="reason03">�������</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason04" name="reason-id" type="radio" value="4">
                                            <label for="reason04">�̿�� ����</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason05" name="reason-id" type="radio" value="5">
                                            <label for="reason05">��ȯ/ȯ�� �Ҹ���</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason06" name="reason-id" type="radio" value="6">
                                            <label for="reason06">A/S �Ҹ���</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason07" name="reason-id" type="radio" value="7">
                                            <label for="reason07">����Ʈ �ӵ� ����</label>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="check-box">
                                        <span class="check-box-cus">
                                            <input id="reason08" name="reason-id" type="radio" value="8">
                                            <label for="reason08">Ư���� ���� ����</label>
                                        </span>
                                    </div>
                                </li>
                            </ul>
                            <textarea name="reason-desc" placeholder="���θ��� �ϰ� ���� ���� �����ּ��� (4,000�� �̳�)"></textarea>
                        </div>
                        <p class="id-check">����Ȯ��</p>
                    </div>
                    <div class="id-check-wrap sub-inner" id="user-info">
                        <p>
                            <label>���̵�</label>
                            <span>|</span>
                            <input type="text" readonly class="black">
                        </p>
                        <p>
                            <label>��й�ȣ</label>
                            <span>|</span>
                            <input type="password" id="password-check" placeholder="��й�ȣ�� �Է����ּ���" class="border-on"
                                required>
                        </p>
                    </div>
                    <div class="submit-box">
                        <input type="submit" id="userover-btn" value="Ż��" class="submit-icon red">
                        <input type="reset" value="���" class="submit-icon gray">
                    </div>
                </div>
            </div>

 <jsp:include page="../top/footer.jsp"></jsp:include>
    <script src="/app/static/javascript/mypage/user-over.js"></script>
    