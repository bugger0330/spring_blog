<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="../auth/nav.jsp"></jsp:include>
<link rel="stylesheet" href="/app/static/css/board_insert.css">
	<div>
        <table>
            <tr>
                <th>제목</th>
                <td><input type="text"></td>
            </tr>
            <tr>
                <th>아이디</th>
                <td></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><textarea></textarea></td>
            </tr>
        </table>
        <button class="submit-btn">수정</button>
    </div>
	

    <script src="/app/static/javascript/board_update.js"></script>
</body>
</html>