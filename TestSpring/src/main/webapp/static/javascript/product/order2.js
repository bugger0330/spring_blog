const tbody = document.querySelector("tbody");
const submitBtn = document.querySelector(".submit-btn");


const userinfo = loginSession();
const username1 = userinfo.username;
console.log(username1);



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
				alert("성공");
				let data2 = JSON.parse(data);
				orderListGet(data2);
				
			}else{
				alert("실패");
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}


function orderListGet(ss){
	let innr = "";
	for(let i = 0; i < ss.length; i++){
		innr += `
					<tr class="tbody_tr">
                        <td class="td-01">
                        	<input type="checkbox" class="check" value="${ss[i].product_code}">
                        </td>
                        <td><img class="img01" src="/app/static/upload_img/${ss[i].product_img1}" id="${ss[i].product_img1}" width="100px" height="80px" /></td>
                        <td class="td1">${ss[i].product_title}</td>
                        <td class="td2">${ss[i].product_price}원</td>
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

	let arrays = new Array();
	arrays.push(product_code);
	arrays.push(product_img1);
	arrays.push(product_title);
	arrays.push(product_price);
	
	arrays.push(inputList);//4
	arrays.push(address_num);
	arrays.push(address);
	arrays.push(address2);
	arrays.push(requests);
	arrays.push(allPrice);
	
	
	
	productListGet(arrays);
	
}

/*===========================================================*/



function productListGet(ss){
	let product_code = ss[0];
	let product_img1 = ss[1];
	let product_title = ss[2];
	let product_price = ss[3];
	let inputList = ss[4];
	
	
	submitBtn.onclick = () => {
		for(let i = 0; i < ss[0].length; i++){
			$.ajax({
				type : "post",
				url : "/app/product/order2/insert",
				data : {
					product_code : product_code[i].value,
					product_img1 : product_img1[i].id,
					product_title : product_title[i].textContent,
					product_price : product_price[i].textContent,
					username : username1
				},
				dataType : "text",
				success : function(data){
					if(data != null){
						console.log("product성공");
					}else{
						console.log("product실패");
					}
				},
				error : function(data){
					alert("비동기 처리 오류");
				}
			});
		}
		
		$.ajax({
			type : "post",
			url : "/app/product/order2/userinfo",
			data : {
				username : username1,
				name : inputList[0].value,
				phone : inputList[1].value,
				phone2 : inputList[2].value,
				address_num : ss[5].value,
				address : ss[6].value,
				address2 : ss[7].value,
				requests : ss[8].value,
				all_price : ss[9].textContent
			},
			dataType : "text",
			success : function(data){
				if(data != null){
					console.log("info성공");
				}else{
					console.log("info실패");
				}
			},
			error : function(data){
					alert("비동기 처리 오류");
			}
		});
		
	}
	
}


























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
















