<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
        <form action="/app/auth/mypage" method="post">
        <table border="1">
            <tr>
                <th colspan="2">마이페이지</th>
            </tr>
            <tr>
                <td>아이디</td>
                <td><input type="text" class="input-data" name="username" value=""></td>
            </tr>
            
            <tr>
                <td>닉네임</td>
                <td><input type="text" class="input-data" name="nickname" value=""></td>
                <td><button>변경</button></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" class="input-data" name="address" value=""></td>
                <td><button>변경</button></td>
            </tr>
            <tr>
                <td>성별</td>
                <td><input type="text" class="input-data" name="gender" value=""></td>
                <td><button>변경</button></td>
            </tr>
        </table>
        </form>
    </div>
</body>
</html>