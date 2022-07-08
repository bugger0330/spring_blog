const formControl = document.querySelectorAll(".form-control");
const contentList = document.querySelector("#content-list");

const link =  location.pathname;
console.log("현재 주소는 " + link);
//app/product/detail/14
let num = link.substring(1, link.length).split("/")[4]; //split("/")[3] 의 의미는 /를 기준으로 블록을 나누고, 인덱스 0부터 시작해서 그 블록을 선택하는것 [3] == 14(맨 뒤)
console.log(num);

const userinfo = loginSession();
const username1 = userinfo.user != null ? userinfo.user.username : null;


load1();

function load1(){
	let data2 = "";
	$.ajax({
		type : "post",
		url : `/app/board/notice/read/${num}`,
		dataType : "text",
		success : function(data){
			if(data != null){
				data2 = JSON.parse(data);
				getBoardData(data2);
			}else{
				alert("로딩에 실패했습니다.");
			}
		},
		error : function(data){
			console.log("비동기 처리 오류");
		}
	});
}

function getBoardData(ss){
	let innr = "";
	innr += `
			<div class="mb-3">
				<label class="form-label">작성자</label> 
				<input type="text" class="form-control" id="userinfo" value="${ss.username}" readonly="readonly">
			</div>
			<div class="mb-3">
				<label class="form-label">제목</label> <input type="text"
					class="form-control" value="${ss.title}" readonly="readonly">
			</div>
			<div class="mb-3">
				<label class="form-label">내용</label>
				<textarea class="form-control" rows="12" readonly="readonly" disabled>${ss.content}</textarea>
			</div>
			<button class="update-btn">수정</button>
			`;
			
	contentList.innerHTML = innr;
	
	const updateBtn = document.querySelector(".update-btn");
	const inputItems = document.querySelectorAll(".form-control");
	updateBtn.onclick = () => {
		if(inputItems[0].value != username1){
			alert("본인만 게시글을 수정할 수 있습니다.");
		}else{
			location.href = `/app/board/notice/update/${ss.board_code}`;
		}
	}
	
	
}

















