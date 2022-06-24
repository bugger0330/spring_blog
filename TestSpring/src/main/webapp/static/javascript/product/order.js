const tbody = document.querySelector("tbody");

const backBtn = document.querySelector(".back-btn");
const checkDeleteBtn = document.querySelector(".delete-btn2");
const order2 = document.querySelector(".order2");

const endOrderBtn = document.querySelector(".submit-btn");


const userinfo = loginSession();
const username1 = userinfo.username;
console.log(username1);

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
                        <td><img class="img01" src="/app/static/upload_img/${ss[i].product_img1}" width="100px" height="80px" /></td>
                        <td class="td1">${ss[i].product_title}</td>
                        <td class="td2">${ss[i].product_price}원</td>
                        <td><button class="delete-btn" value="${ss[i].product_code}">삭제</button></td>
                    </tr>
				`;
	}
	tbody.innerHTML = innr;
	
	const productCode = document.querySelectorAll(".check");
	const productImage = document.querySelectorAll(".img01");
	const productTitle = document.querySelectorAll(".td1");
	const productPrice = document.querySelectorAll(".td2");
	
	
	const deleteBtn = document.querySelectorAll(".delete-btn");
	const selectBtn = document.querySelectorAll(".check");
	let deleteBtn1 = "";
	let select1 = "";
	
	for(let i = 0; i < deleteBtn.length; i++){
		deleteBtn[i].onclick = () => {
			if(confirm("정말로 삭제하시겠습니까?") == false){
				alert("취소하였습니다.");
			}else{
				deleteBtn1 = deleteBtn[i].value;
				console.log("버튼 클릭시 :"+deleteBtn[i].value);
				deleteQuery(deleteBtn1);
			}
		}
	}
	
	checkDeleteBtn.onclick = () => {
		for(let i = 0; i < deleteBtn.length; i++){
			if(selectBtn[i].checked){
				select1 = selectBtn[i].value;
				console.log("체크박스 선택번호 : " + select1);
				deleteQuery(select1);
			}
		}
	}

	
}

function deleteQuery(ss){
	console.log("삭제 번호 : " + ss);
	console.log("유저정보11 : " + username1);
	let product_code = Number(ss);
	$.ajax({
		type : "delete",
		url : `/app/product/order/delete/${product_code}`,
		dataType : "text",
		success : function(data){
			if(data == "true"){
				alert("삭제성공");
				location.reload();
			}else{
				alert("삭제실패");
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}



order2.onclick = () => {
	location.href = "/app/product/order2";
}

backBtn.onclick = () => {
	history.back();
}











