const tbody = document.querySelector("tbody");
const submitBtn = document.querySelector(".submit-btn");

const money1Btn = document.querySelector(".money1");
const money3Btn = document.querySelector(".money3");

const userinfo = loginSession();
const username1 = userinfo.user != null ? userinfo.user.username : null;
console.log(username1);

var IMP = window.IMP; // 생략 가능
IMP.init("imp37413392"); // 예: imp00000000

/*===========================================================*/
load1();

function load1(){
	$.ajax({
		type : "post",
		url : "/app/product/order",
		data : {
			username : username1
		},
		dataType : "text",
		success : function(data){
			if(data != null){
				let data2 = JSON.parse(data);
				orderListGet(data2);
				
			}else{
				console.log("실패");
			}
		},
		error : function(data){
			console.log("비동기 처리 오류");
		}
	});
}


function orderListGet(ss){
	let innr = "";
	for(let i = 0; i < ss.length; i++){
		let numb1 = ss[i].product_price;
		let numb2 = numb1.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		innr += `
					<tr class="tbody_tr">
                        <td class="td-01">
                        	<input type="checkbox" class="check" value="${ss[i].product_code}">
                        </td>
                        <td><img class="img01" src="/app/static/upload_img/${ss[i].product_img1}" id="${ss[i].product_img1}" width="100px" height="80px" /></td>
                        <td class="td1" id="${ss[i].youname}">${ss[i].product_title}</td>
                        <td class="td2" id="${ss[i].product_price}">${numb2}원</td>
                        <td><button class="delete-btn" value="${ss[i].product_code}">삭제</button></td>
                    </tr>
				`;
	}
	tbody.innerHTML = innr;
	
	const product_code = document.querySelectorAll(".check");
	const product_img1 = document.querySelectorAll(".img01");
	const product_title = document.querySelectorAll(".td1");
	const product_price = document.querySelectorAll(".td2");
	
	const inputList = document.querySelectorAll(".w-half");//이름,전화번호2개
	const address_num = document.querySelector("#addr-num");
	const address = document.querySelector(".w-half2");
	const address2 = document.querySelector(".w-half3");
	const requests = document.querySelector(".w-pull");
	const allPrice = document.querySelector(".all-price2");
	let sumPrice = 0;
	let pNum1 = new Array();
	let pNum2 = new Array();
	let today = new Date();
	
	let today2 = "OLD" + today.getFullYear() + today.getMonth() + today.getDay() + "-";
	let today3 = today.getFullYear() + today.getMonth() + today.getDay() + "-A1";
	console.log("주몬번호 : " + today2);
	
	for(let i = 0; i < product_price.length; i++){
		sumPrice += Number(product_price[i].id);
	}
	allPrice.textContent = sumPrice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	
	for(let i = 0; i < product_code.length; i++){
		pNum1.push(`${today2}${product_code[i].value}`); 
		pNum2.push(`${today3}` + Number((`${product_code[i].value}`)*8)); 
	}
		console.log("주문번호222:"+pNum1[1]);
		console.log("주문번호222:"+pNum2[1]);

	let arrays = new Array();
	arrays.push(pNum1);
	arrays.push(pNum2);
	arrays.push(inputList);//4
	arrays.push(address_num);
	arrays.push(address);
	arrays.push(address2);
	arrays.push(requests);
	arrays.push(sumPrice);
	arrays.push(product_img1);
	arrays.push(product_title);
	arrays.push(product_price);
	arrays.push(product_code);
	
	
	productListGet(arrays);
	
}

/*===========================================================*/



function productListGet(ss){
	submitBtn.onclick = () => {
		for(let i = 0; i < ss.length; i++){
			IMP.request_pay({ // param
		        pg: "kakaopay", //어떤 결제 시스템을 쓸껀지 이니시스 = INIpayTest
		        pay_method: "card",
		        merchant_uid: ss[0][i],
		        name: ss[9][i].textContent,
		        amount: ss[7],
		        buyer_email: "gildong@gmail.com",
		        buyer_name: ss[2][0].value,
		        buyer_tel: ss[2][2].value,
		        buyer_addr: `${ss[4].value} ${ss[5].value}`,
		        buyer_postcode: ss[1][i]
		    }, function (rsp) { // callback
		        if (rsp.success) {
		           alert("결제완료 되었습니다.");
		           console.log(JSON.stringify(rsp));
		           let flag1 = ""; //비동기처리 안에서 변수에 값 넣어서 출력하고 싶을땐
					let flag2 = ""; // ajax안에 async: false 를 써야만 한다
					for(let i = 0; i < ss[0].length; i++){
						$.ajax({
							type : "post",
							url : "/app/product/order2/userinfo",
							async: false,
							data : {
								product_code : ss[0][i],
								delivery_code : ss[1][i],
								username : username1,
								name : ss[2][0].value,
								phone : ss[2][1].value,
								phone2 : ss[2][2].value,
								address_num : ss[3].value,
								address : ss[4].value,
								address2 : ss[5].value,
								requests : ss[6].value,
								all_price : ss[7].textContent,
								
								product_img1 : ss[8][i].id,
								product_title : ss[9][i].textContent,
								youname : ss[9][i].id,
								product_price : ss[10][i].textContent
							},
							dataType : "text",
							success : function(data){
								if(data != null){
									console.log("product성공");
									allTrue(ss[11]);
									flag1 = "true";
								}else{
									console.log("product실패");
								}
							},
							error : function(data){
								console.log("비동기 처리 오류");
							}
						});
					}
				           
		        } else {
		            alert("결제실패 되었습니다.");
		        }
		    });
		}

		
		
		
	}
	
}

function allTrue(ss){
	console.log("ss:"+ss[0].value);
	for(let i = 0; i < ss.length; i++){
		$.ajax({
			type : "delete",
			url : `/app/product/order1/delete/${ss[i].value}`,
			dataType : "text",
			success : function(data){
				if(data == "true"){
					console.log("삭제완료");
					location.href = "/app/";
				}else{
					console.log("실패");
				}
			},
			error : function(data){
				console.log("비동기 처리 오류");
			}
		})
	}
	
}

money1Btn.onclick = () => {
	location.href = "/app/product/card";	
}
money3Btn.onclick = () => {
	location.href = "/app/product/no";	
}


//아임포트 결제시스템
/*
function requestPay() {
    // IMP.request_pay(param, callback) 결제창 호출
    IMP.request_pay({ // param
        pg: "INIpayTest", //어떤 결제 시스템을 쓸껀지
        pay_method: "card",
        merchant_uid: `ORD${now.getFullYear()}${now.getMonth()}${now.getDate()}-1`,
        name: "갤럭시s22",
        amount: 649000,
        buyer_email: "gildong@gmail.com",
        buyer_name: "홍길동",
        buyer_tel: "010-4242-4242",
        buyer_addr: "서울특별시 강남구 신사동",
        buyer_postcode: "01181"
    }, function (rsp) { // callback
        if (rsp.success) {
           alert("결제완료");
           console.log(JSON.stringify(rsp));
        } else {
            alert("결제실패");
        }
    });
  }*/



















//도로명 주소 검색
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                /*document.getElementById("sample6_extraAddress").value = extraAddr;*/
            
            }/* else {
                document.getElementById("sample6_extraAddress").value = '';
            }*/

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('addr-num').value = data.zonecode;
            document.getElementById("addr-con1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr-con2").focus();
        }
    }).open();
}
















