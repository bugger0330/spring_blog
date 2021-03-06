
const boardListTable = document.querySelector('.board-list-table');
const boardListPage = document.querySelector('.board-list-page');

let nowPage = 1;

load(nowPage);

function load(page) {
	
	$.ajax({
		type: "post",
		url: "/app/board/list",
		data: JSON.stringify(page),
		contentType : "application/json",
		dataType: "text",
		success: function(data){
			let boardList = JSON.parse(data);
			getBoardList(boardList);
			createPageNumber(boardList[0].boardCount);
			getBoardItems();
		},
		error: function(){
			alert("비동기 처리 오류");
		}
	});

}

function createPageNumber(data) {
	const boardListPage = document.querySelector('.board-list-page');
	const preNextBtn = document.querySelectorAll('.pre-next-btn');	
	
	const totalBoardCount = data;
	const totalPageCount = data % 5 == 0 ? data / 5 : (data / 5) + 1;
	
	const startIndex = nowPage % 5 == 0 ? nowPage - 4 : nowPage - (nowPage % 5) + 1;
	const endIndex = startIndex + 4 <= totalPageCount ? startIndex + 4 : totalPageCount;
	
	let pageStr = ``;
	
	for(let i = startIndex; i <= endIndex; i++){
		pageStr += `<div>${i}</div>`;
	}
	
	boardListPage.innerHTML = pageStr;
	
	preNextBtn[0].onclick = () => {
		nowPage = startIndex != 1 ? startIndex - 1 : 1;
		load(nowPage);
	}
	
	preNextBtn[1].onclick = () => {
		nowPage = endIndex != totalPageCount ? endIndex + 1 : totalPageCount;
		load(nowPage);
	}
	
	
	
	
	const pageButton = boardListPage.querySelectorAll('div');
	for(let i = 0; i < pageButton.length; i++){
	pageButton[i].onclick = () => {
		nowPage = pageButton[i].textContent;
		load(nowPage);
	}
}
	
}

function getBoardList(data)	{
	/*
	while(boardListTable.hasChildNodes()){
		boardListTable.removeChild(boardListTable.firstChild);
	}
	*/
	const tableBody = boardListTable.querySelector('tbody');
	let tableStr = ``;
	
	for(let i = 0; i < data.length; i++){
		tableStr += `
		<tr class="board-items">
			<td>${data[i].board_code}</td>
			<td>${data[i].title}</td>
			<td>${data[i].username}</td>
			<td>${data[i].count}</td>
		</tr>
		`;
	}
	
	tableBody.innerHTML = tableStr;
	
}




function getBoardItems(){
	const boardItems = document.querySelectorAll('.board-items');
	for(let i = 0; i < boardItems.length; i++){
		boardItems[i].onclick = () => {
			location.href = "/board-info/" + boardItems[i].querySelectorAll('td')[0].textContent;
		}
	}
}



