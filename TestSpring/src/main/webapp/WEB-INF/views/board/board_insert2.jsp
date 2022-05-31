<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link rel="stylesheet" href="/app/static/css/board_insert.css">

	<div class="main">
        <table>
            <tr>
                <th>제목</th>
                <td><input type="text" class="input-item"></td>
            </tr>
            <tr>
                <th>아이디</th>
                <td></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><textarea class="input-item"></textarea></td>
            </tr>
        </table>
        <button class="submit-btn">등록</button>
    </div>
	

    <script src="/app/static/javascript/board_insert.js"></script>
    <jsp:include page="../top/footer.jsp"></jsp:include>
</body>
</html>