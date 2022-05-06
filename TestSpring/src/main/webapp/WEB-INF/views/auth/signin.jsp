<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
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
</head>
<body>
    <div class="main-div">
        <form action="">
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
                <td colspan="2"><button>로그인</button></td>
            </tr>
        </table>
        </form>
    </div>
</body>
</html>