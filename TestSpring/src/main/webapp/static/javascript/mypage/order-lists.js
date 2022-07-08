const tbody = document.querySelector("tbody");

const session = loginSession();
const userinfo = session.user != null ? session.user.username : null;

load1();

function load1(){
	
	$.ajax({
		type : "post",
		url : "/app/mypage/order/list",
		data : {
			username : userinfo
		},
		dataType : "json",
		success : function(data){
			if(data != null){
				alert("성공");
				innrHtmls(data);
			}else{
				alert("실패");
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}

function innrHtmls(ss){
		let innr = "";
		console.log("실행");
		for(let i = 0; i < ss.length; i++){
		innr += `
	        <tr>
	            <th scope="rowgroup" rowspan="5" class="deal_info">
	                <div class="date_num">
	                    <p class="dt">
	                        <strong>${ss[i].create_date}</strong>
	                    </p>
	                    <p class="buy_num">
	                        <span class="txt">주문번호</span>
	                        <strong>${ss[i].product_code}</strong>
	                    </p>
	                </div>
	                <div class="payment">
	                    <p>총 주문 금액</p>
	                    <p class="won">
	                        <span class="span01">${ss[i].product_price}</span>
	                        <span class="span02">원</span>
	                    </p>
	                    <p class="delivery">
	                        <a>
	                            ( 배송비
	                            <span class="span3">0원
	                                <span class="span4">
	                                </span>
	                            </span>)
	                            </a>
	                        </p>
	                    
	                </div>
	                <div class="btn"></div>
	            </th>
	        </tr>
	        <tr>
	            <td colspan="3" class="delivery_wrap">
	                <div class="delivery_num">
	                    <span class="span1">배송번호 :</span>
	                    <span class="span2">${ss[i].delivery_code}</span>
	                    
	                </div>
	            </td>
	        </tr>
	        <tr>
	            <th class="sum_up">
	                <div class="thmb_area">
	                        <img src="/app/static/upload_img/${ss[i].product_img1}" width="110" height="110" alt="구매상품 썸네일" class="thmb" style="">
	                    <h4>
	                        <span>${ss[i].product_title}</span>
	                    </h4>
	                    <p class="pay_info">
	                        <span class="won2">
	                            <span class="span5">${ss[i].product_price}</span>원
	                        </span>
	                        </p>
	                </div>
	                
	                <ul class="ticket_lst ">
	                    <li style=" list-style: none;">
	                        <div class="detail">
	                            
	                        </div>
	                    </li>
	                </ul>
	                <div class="seller_contacts_wrap">
	                    <div class="slr_title" style=" float: left;">
	                        <p class="title_wrap" style="margin-left: -1px;">판매자 :
	                            <span class="span6">${ss[i].youname}</span>
	                        </p>
	                    </div>
	                </div>
	            </th>
	            <td class="expiry">
	                <div class="delivery_condition"></div>
	            </td>
	            <td id="td_3236286570_11831524858" class="manage">결제완료
	                <div id="button_3236286570_11831524858"></div>
	                <div class="ly_btn"></div>
	            </td>
	        </tr>
	        <tr>
	            <td colspan="3" class="delivery1">
	                <span title="" class="adr">
	                    <p class="addr"><span class="span7">배송지 정보 :</span>
	                        강민, 010-9046-7290<br>${ss[i].address},${ss[i].address2}</p>
	                </span>
	            </td>
	        </tr>
	        <tr>
	            <td colspan="3" class="delivery2">
	                <span class="adr"><strong>배송지 메모</strong>: ${ss[i].requests}</span></td>
	        </tr>
		`;
	}
		tbody.innerHTML = innr;
}














