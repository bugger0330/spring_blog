<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="../auth/nav.jsp"></jsp:include>
<link rel="stylesheet" href="/app/static/css/board_list.css">

	<div id="container">
		<div class="board-list">
			<table class="board-list-table">
				<thead>
					<tr>
						<th>��ȣ</th>
						<th>����</th>
						<th>�ۼ���</th>
						<th>��ȸ��</th>
					</tr>
				</thead>
				<tbody>
					
				</tbody>
				
			</table>
		</div>
		<button onclick="location.href='/board'">�ۼ�</button>
			
			<div class="board-page-buttons">
				<div class="pre-next-btn">&lt;</div>
				<div class="board-list-page">
				</div>
				<div class="pre-next-btn">&gt;</div>
			</div>
			</div>

	
    <script src="/app/static/javascript/board_list.js"></script>
</body>
</html>