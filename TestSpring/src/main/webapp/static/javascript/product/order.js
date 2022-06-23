const tbody = document.querySelector("tbody");

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
                        	<input type="checkbox" class="check">
                        	<input type="hidden" class="hidden-code">
                        </td>
                        <td><img src="/app/static/upload_img/${ss[i].product_img1}" width="100px" height="80px" /></td>
                        <td class="td1">${ss[i].product_title}</td>
                        <td>${ss[i].product_price}원</td>
                        <td><button class="delete-btn" value="${ss[i].product_code}">삭제</button></td>
                    </tr>
				`;
	}
	tbody.innerHTML = innr;
	
	
	const deleteBtn = document.querySelectorAll(".delete-btn");
	const selectBtn = document.querySelectorAll(".check");
	let deleteBtn1 = "";
	
	for(let i = 0; i < deleteBtn.length; i++){
		deleteBtn[i].onclick = () => {
			/*if(selectBtn[i].selected){*/
				deleteBtn1 = deleteBtn[i].value;
				console.log("버튼 클릭시 :"+deleteBtn[i].value);
				deleteQuery(deleteBtn1);
			/*}*/
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
			}else{
				alert("삭제실패");
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}










