<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="nav.jsp"></jsp:include>
<link rel="stylesheet" href="/app/static/css/signin.css">


    <div class="main-div">
        <form action="/app/auth/signin" method="post">
        <table border="1">
            <tr>
                <th colspan="2">�α���</th>
            </tr>
            <tr>
                <td>���̵�</td>
                <td><input type="text" class="input-data" name="username"></td>
            </tr>
            <tr>
                <td>��й�ȣ</td>
                <td><input type="password" class="input-data" name="password"></td>
            </tr>
            <tr>
                <td colspan="2">
                	<button  type="button" class="signin-button">�α���</button>
                	<button  type="button" class="signin-button1">ȸ������</button>
                </td>
            </tr>
        </table>
        </form>
    </div>
    
    <script src="/app/static/javascript/signin.js"></script>
</body>
</html>