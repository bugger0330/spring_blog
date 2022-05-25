<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../auth/nav.jsp"></jsp:include>
<link href="/app/static/css/product/insert.css" rel="stylesheet">



    <div class="main">
        <table>
            <tr>
                <th colspan="2" style="text-align: center">상품등록</th>
            </tr>
            <tr>
                <th class="th1">카테고리</th>
                <td class="select-items">
                    스마트폰
                </td>
            </tr>
            <tr>
                <th>상품명</th>
                <td><input type="text" name="title" class="input-items"></td>
            </tr>
            <tr>
                <th>이미지</th>
                <td><input type="file" name="img" class="input-items"></td>
            </tr>
            <tr>
                <th>이미지들</th>
                <td class="img-items"><img src=""></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><input type="text" name="content" class="input-items"></td>
            </tr>
            <tr>
            	<td colspan="2"><button class="submit-btn">등록하기</button></td>
            </tr>
        </table>
    </div>







<script src="/app/static/javascript/product.js">

</script>
<jsp:include page="../auth/footer.jsp"></jsp:include>