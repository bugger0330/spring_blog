<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="../top/header.jsp"></jsp:include>
<link rel="stylesheet" href="/app/static/css/mypage.css">


    <div class="main-div">
        
        <table border="1">
            <tr>
                <th colspan="2">마이페이지</th>
            </tr>
            <tr>
                <td>아이디</td>
                <td class="td1"><input type="text" class="input-data" name="nickname" value="${sessionScope.profile.username}" readonly="readonly"></td>
            </tr>
            
            <tr>
                <td>닉네임</td>
                <td><input type="text" class="input-data" name="nickname" value="${sessionScope.profile.nickname}"><button type="button" class="change-btn">변경</button></td>
                
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" class="input-data" name="address" value="${sessionScope.profile.address}"><button type="button" class="change-btn">변경</button></td>
                
            </tr>
            <tr>
                <td>성별</td>
                <td><input type="text" class="input-data" name="gender" value="${sessionScope.profile.gender}"><button type="button" class="change-btn">변경</button></td>
               
            </tr>
            <tr>
            	<td colspan="2">
            		<button class="logout-btn">로그아웃</button>
            		<button class="delete-btn">회원탈퇴</button>
            		<button class="doumi-btn">고객센터</button>
            	</td>
            </tr>
        </table>
        
    </div>
    <script src="/app/static/javascript/mypage.js"></script>
<jsp:include page="../top/header.jsp"></jsp:include>