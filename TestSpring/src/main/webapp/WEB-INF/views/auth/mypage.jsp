<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.test.app.domain.user.Profile" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ȸ������</title>
    <style>
        body{
            text-align: center;
            position: relative;

        }
        .main-div{
        	margin-top: 100px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        table{
            font-size: 40px;
            padding: 10px;
        }
        .input-data{
            font-size: 40px;
            border: none;
        }
        button{
            font-size: 40px;
        }

    </style>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
    <div class="main-div">
        
        <table border="1">
            <tr>
                <th colspan="2">����������</th>
            </tr>
            <tr>
                <td>���̵�</td>
                <td><input type="text" class="input-data" name="username" value="${sessionScope.profile.username}"></td>
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
            	</td>
            </tr>
        </table>
        
    </div>
    <script src="/app/static/javascript/mypage.js"></script>
</body>
</html>