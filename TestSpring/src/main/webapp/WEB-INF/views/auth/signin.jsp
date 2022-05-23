<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="nav.jsp"></jsp:include>
<link rel="stylesheet" href="/app/static/css/signin.css">


    <div class="main-div">
        <form action="/app/auth/signin" method="post">
        <table border="1">
            <tr>
                <th colspan="2">로그인</th>
            </tr>
            <tr>
                <td>아이디</td>
                <td><input type="text" class="input-data" name="username"></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" class="input-data" name="password"></td>
            </tr>
            <tr>
                <td colspan="2">
                	<button  type="button" class="signin-button">로그인</button>
                	<button  type="button" class="signin-button1">회원가입</button>
                </td>
            </tr>
        </table>
        </form>
    </div>
    
    <script src="/app/static/javascript/signin.js"></script>
</body>
</html>