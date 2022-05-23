
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="nav.jsp"></jsp:include>
<link rel="stylesheet" href="/app/static/css/signup.css">


    <div class="main-div">
        <form action="/app/auth/signup" method="post">
        <table border="1">
            <tr>
                <th colspan="2">회원가입</th>
            </tr>
            <tr>
                <td>아이디</td>
                <td><input type="text" id="username" class="input-data" name="username">
                	<button type="button" id="checkBtn">아이디 체크</button>
                </td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" class="input-data" name="password"></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" class="input-data" name="name"></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input type="text" class="input-data" name="phone"></td>
            </tr>
            <tr>
                <td colspan="2"><button>가입</button></td>
            </tr>
        </table>
        </form>
    </div>
    <script src="/app/static/javascript/signup.js"></script>
</body>
</html>