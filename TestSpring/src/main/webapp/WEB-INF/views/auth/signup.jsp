
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="nav.jsp"></jsp:include>
<link rel="stylesheet" href="/app/static/css/signup.css">


    <div class="main-div">
        <form action="/app/auth/signup" method="post">
        <table border="1">
            <tr>
                <th colspan="2">ȸ������</th>
            </tr>
            <tr>
                <td>���̵�</td>
                <td><input type="text" id="username" class="input-data" name="username">
                	<button type="button" id="checkBtn">���̵� üũ</button>
                </td>
            </tr>
            <tr>
                <td>��й�ȣ</td>
                <td><input type="password" class="input-data" name="password"></td>
            </tr>
            <tr>
                <td>�̸�</td>
                <td><input type="text" class="input-data" name="name"></td>
            </tr>
            <tr>
                <td>��ȭ��ȣ</td>
                <td><input type="text" class="input-data" name="phone"></td>
            </tr>
            <tr>
                <td colspan="2"><button>����</button></td>
            </tr>
        </table>
        </form>
    </div>
    <script src="/app/static/javascript/signup.js"></script>
</body>
</html>