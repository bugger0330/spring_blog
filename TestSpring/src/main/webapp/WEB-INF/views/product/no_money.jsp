<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link href="/app/static/css/product/no_money.css" rel="stylesheet">
	<style type="text/css">
		.butt{
			border: 0px;
			background: red;
			color: white;
			width: 100px;
			height: 30px;
			font-size: 20px;
			margin: 20px auto;
			display: flex;
			justify-content: center;
		}
		
	</style>
</head>

<body>
    <!-- ==============================================무통장 입금======================================== -->
    <div class="pop">
        <table cellpadding="7" cellspacing="0" class="no_table">
            <colgroup>
                <col width="20%" class="tbl002">
                <col width="80%" class="lpad15">
            </colgroup>
            <tbody>
                <tr>
                    <td colspan="2" height="1" class="tbl003">
                    </td>
                </tr>
                <tr>
                    <td class="tbl002" nowrap="" >
                        선택방법</td>
                    <td class="td22">무통장입금 결제</td>
                </tr>
                <tr>
                    <td colspan="2" height="1" class="tbl003">
                    </td>
                </tr>
                <tr>
                    <td class="tbl002" nowrap="" >
                        총주문액</td>
                    <td class="td22">
                        <b>1,654,000 원</b>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="1" class="tbl003">
                    </td>
                </tr>
            </tbody>


        </table>
        <br>
        <table cellpadding="7" cellspacing="0">
            <colgroup>
                <col width="20%">
            </colgroup>
            <tbody>
                <tr>
                    <td colspan="2" height="1" class="tbl003">
                    </td>
                </tr>
                <tr>
                    <td class="tbl002" nowrap="">
                        입금은행</td>
                    <td class="lpad15">
                        <input type="radio" name="account1" value="">
                        신한은행 :111-22-345678<font class="olive">
                            - 예금주 : 홍길동</font><br>
                        <input type="radio" name="account1" value="">
                        국민은행 :111-22-345678<font class="olive">
                            - 예금주 : 홍길동</font><br>
                        <input type="radio" name="account1" value="">
                        부산은행 :111-22-345678<font class="olive">
                            - 예금주 : 홍길동</font><br>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="1" class="tbl003">
                    </td>
                </tr>
                <tr>
                    <td class="tbl002" nowrap="">
                        입금자명</td>
                    <td class="lpad15a">
                        <input type="text" name="bankowner" class="box">
                        <font class="small">- 실제 입금하실 분의 성함을 정확히 입력해
                            주세요.</font>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="1" class="tbl003">
                    </td>
                </tr>
                <tr>
                    <td class="tbl002 lpad20" nowrap="">
                        입금예정일</td>
                    <td class="lpad15">
                        <select name="bankdate_year" class="box">
                            <option value="2022" selected="">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                        </select>년
                        <select name="bankdate_month" class="box">
                            <option value="01" selected="">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>월
                        <select name="bankdate_day" class="box">
                            <option value="01" selected="">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                        </select>일
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="1" class="tbl003">
                    </td>
                </tr>
            </tbody>
        </table>

        <br>
        <table cellpadding="7" cellspacing="0">
            <colgroup>
                <col width="20%" class="tbl002">
                <col width="80%" class="lpad15">
            </colgroup>
            <tbody>
                <tr>
                    <td colspan="2" height="1" class="tbl003">
                    </td>
                </tr>
                <tr>
                    <td class="tbl002" nowrap="" >
                        현금영수증 발행</td>
                    <td class="td22">
                        <input type="radio" name="taxsave" value="">발행합니다.
                        <input type="radio" name="taxsave" value="" checked="">발행하지 않습니다.<br>
                        <div class="hidd"></div>
                        <font class="small">- 현금영수증 발행을 위해선
                            <a href="#" class="small_a" target="_blank">
                                <font class="sky">국세청 현금영수증
                                    사이트 - 현금영수증.kr</font>
                            </a>에 가입이 되어있어야 합니다.
                            <br>- 현금영수증 발행내역은 주문 후<font class="sky">마이페이지</font>
                            에서 확인 가능하며, 마이페이지에서 발행신청도 가능합니다.
                            <br>
                        </font>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="1" class="tbl003">
                    </td>
                </tr>
            </tbody>
        </table>

    </div>
    <!-- ==============================================무통장 입금======================================== -->
<button class="butt">결제하기</button>
</body>

</html>