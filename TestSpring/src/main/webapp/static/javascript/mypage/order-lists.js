const tbody = document.querySelector("tbody");



const userinfo = loginSession();
const username1 = userinfo.username;
console.log(username1);




load1();

function load1(){
	$.ajax({
		type : "post",
		url : "/app/mypage/order-lists",
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
                        <td class="td2" id="${ss[i].product_price}">${ss[i].product_price}원</td>
                        <td><button class="delete-btn" value="${ss[i].product_code}">조회</button></td>
                    </tr>
				`;
	}
	tbody.innerHTML = innr;

}








