const boardListTable = document.querySelector('#table-main');
const btnRegister = document.querySelector("#btn_register");

const userinfo = loginSession();
const username1 = userinfo.username;
console.log(username1);

let nowPage = 1;

load(nowPage);

//검색
const selects = document.querySelector("select");
const options = selects.querySelectorAll("option");
const searchInput = document.querySelector("#keyword");
const searchBtn0 = document.querySelector("#search");
let select = "";
let search = "";
let arr2 = new Array();

searchBtn0.onclick = () => {
	console.log("검색버튼 클릭");
	for(let i = 0; i < options.length; i++){
		if(options[i].selected){
			select = options[i].value;
		}
	}
	search = searchInput.value;
	console.log("선택:" + select);
	console.log("검색:" + search);
	arr2.push(select);
	arr2.push(search);
	
	load(nowPage, arr2);
}


//글쓰기 버튼 클릭시(애초에 로그인 안하면 게시판에 들어갈수도 없지만)
btnRegister.onclick = () => {
	if(username1 == null){
		alert("로그인 후에 이용 가능합니다.");
		location.href = "/app/auth/signin";
	}else{
		location.href = "/app/board/insert";
	}
}




function load(page, arr) {
	
	if(arr == null){
		console.log("ajax : "+page);
		$.ajax({
			type: "post",
			url: "/app/board/list",
			data: JSON.stringify(page),
			contentType : "application/json",
			dataType: "text",
			success: function(data){
				alert("게시판 불러오기 성공");
				let boardList = JSON.parse(data);
				getBoardList(boardList); // 게시판 글 리스트 불러오기
				boardPageNum(boardList[0].boardCount); // 밑에 번호 추가하기
				
			},
			error: function(){
				alert("비동기 처리 오류");
			}
		});
	}else{
		console.log("ajax클릭 실행 : "+page);
		console.log("ajax클릭 실행 : "+arr[0]);
		console.log("ajax클릭 실행 : "+arr[1]);
		$.ajax({
			type : "post",
			url : "/app/board/list/search",
			data : JSON.stringify({
				number : page,
				select : arr[0],
				search : arr[1]
			}),
			async: false,
			contentType : "application/json",
			dataType : "text",
			success: function(data){
				alert("게시판 불러오기 성공");
				let boardList = JSON.parse(data);
				getBoardList(boardList); // 게시판 글 리스트 불러오기
				boardPageNum(boardList[0].boardCount); // 밑에 번호 추가하기
				
			},
			error : function(data){
				alert("비동기 처리 오류");
			}
		});
	}
	
	
}

// 게시판 리스트 불러오기
function getBoardList(data)	{
	const tableBody = boardListTable.querySelector('tbody');
	let tableStr = ``;
	
	for(let i = 0; i < data.length; i++){
		tableStr += `
			<tr>
				<td>${data[i].board_code}</td>
				<td>
					<a class='move'  style="text-decoration:none;" href='/app/board/read/${data[i].board_code}'>
						<small>[${data[i].title}]</small>
					</a>
				</td>
				<td>${data[i].username}</td>
				<td><small>${data[i].count}</small></td>
				<td><small>${data[i].create_date}</small></td>
			</tr>
		`;
	}
	tableBody.innerHTML = tableStr;
}



function boardPageNum(data) {
	const boardListPage = document.querySelector('.board-list-page');
	const preNextBtn = document.querySelectorAll('.pre-next-btn');	// 이전/다음 버튼
	
	const totalBoardCount = data;
	const totalPageCount = data % 5 == 0 ? Math.floor(data / 5) : Math.floor(data / 5) + 1;
	
	const startIndex = nowPage % 5 == 0 ? (nowPage + 1) : nowPage - Math.floor(nowPage % 5) + 1;
	const endIndex = startIndex + 4 <= totalPageCount ? startIndex + 4 : totalPageCount;
	
	let pageNum = ``;
	
	for(let i = startIndex; i <= endIndex; i++){
		pageNum += `<div class="page-link" style="margin : 0px 10px; cursor:pointer">${i}</div>`;
	}
	 
	boardListPage.innerHTML = pageNum;
	

	
	
	preNextBtn[0].onclick = () => { // 이전 버튼
		nowPage = startIndex != 1 ? startIndex - 1 : 1;
		load(nowPage);
	}
	
	preNextBtn[1].onclick = () => { // 다음 버튼
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




