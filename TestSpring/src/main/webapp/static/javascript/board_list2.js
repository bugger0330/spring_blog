const tableAll = document.querySelector(".table-all");
const inputItems = document.querySelector(".input-items");
const number = document.querySelector(".number");
const nextBtn = document.querySelectorAll(".next-btn");



const uuu = loginSession();
console.log("User : "+uuu);


const nowPage = 1;

load();



function load(){
	$.ajax({
		type : "get",
		url : "/app/board/count",
		dataType : "text",
		success : function(data){
			const result = Number(data);
			numbers(result);
		},
		error : function(data){
			alert("비동기처리 오류");
		}
	});
}


function numbers(data){
	let numberList = '';
	
	for(let i = 0; i < data; i++){
		
		numberList += `<div class="numberBtn">${i + 1}</div>`;
			}
			
	number.innerHTML = numberList;
	const numberBtn = document.querySelectorAll(".numberBtn");
	numberClick(numberBtn);
}

nextBtn[0].onclick = () => {
	
}
nextBtn[1].onclick = () => {
	
}

function numberClick(numberBtn){
	alert("버튼 밸류 : " + numberBtn[1].textcontent);
	for(let i = 0; i < numberBtn.length; i++){
		numberBtn[i].onclick = () => {
			const data = {
				username : "aaa",
				page : numberBtn[i].textcontent
			};
			$.ajax({
				type : "post",
				url : "/app/board/list",
				data : JSON.stringify(data),
				contentType : "application/json",
				dataType : "text",
				success : function(data){
					const boardData = JSON.parse(data);
					getBoardList(boardData);
				},
				error : function(data){
					alert("비동기 처리 오류");
				}
			});
		}
	}
}

function getBoardList(data){
	const tbody = tableAll.querySelector("tbody");
	let tr = "";
	
	for(let i = 0; i < data.length; i++){
		tr += `
		<tr>
			<td>${data[i].boardCode}</td>
			<td>${data[i].username}</td>
			<td>${data[i].title}</td>
			<td>${data[i].count}</td>
		</tr>
		`;
	}
	tbody.innerHTML = tr;      
}












