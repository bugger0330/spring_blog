<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link rel="stylesheet" href="/app/static/css/mypage.css">


    <div class="main-div">
        
        <table border="1">
            <tr>
                <th colspan="2">����������</th>
            </tr>
            <tr>
                <td>���̵�</td>
                <td class="td1"><input type="text" class="input-data" name="nickname" value="${sessionScope.profile.username}" readonly="readonly"></td>
            </tr>
            
            <tr>
                <td>�г���</td>
                <td><input type="text" class="input-data" name="nickname" value="${sessionScope.profile.nickname}"><button type="button" class="change-btn">����</button></td>
                
            </tr>
            <tr>
                <td>�ּ�</td>
                <td><input type="text" class="input-data" name="address" value="${sessionScope.profile.address}"><button type="button" class="change-btn">����</button></td>
                
            </tr>
            <tr>
                <td>����</td>
                <td><input type="text" class="input-data" name="gender" value="${sessionScope.profile.gender}"><button type="button" class="change-btn">����</button></td>
               
            </tr>
            <tr>
            	<td colspan="2">
            		<button class="logout-btn">�α׾ƿ�</button>
            		<button class="delete-btn">ȸ��Ż��</button>
            		<button class="doumi-btn">������</button>
            	</td>
            </tr>
        </table>
        
    </div>
    <script src="/app/static/javascript/mypage.js"></script>
<jsp:include page="../top/header.jsp"></jsp:include>