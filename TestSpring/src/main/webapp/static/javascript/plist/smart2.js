const imgLists = document.querySelector("#img-lists");
let allRow = 0;
let nowPage = 1;

//검색
const selects = document.querySelector("select");
const options = selects.querySelectorAll("option");
const searchInput = document.querySelector("#keyword");
const searchBtn2 = document.querySelector("#search");
let select = "";
let search = "";
let arr2 = new Array();

searchBtn2.onclick = () => {
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
	
	load1(nowPage, arr2);
}






load1(nowPage);

function load1(page, arr) {
	
	if(arr == null){
		$.ajax({
			type : "get",
			url : "/app/home",
			data : {
				number : page
			},
			async: false,
			contentType : "application/json",
			dataType : "text",
			success : function(data){
				if(data == null){
					console.log("불러오기 실패");
				}else{
					console.log("불러오기 성공");
					let list = JSON.parse(data);
					console.log("데이타1번 코드번호 : " + list.products1[0].product_code);
					homeImgLists1(list);
					allRow = list.products1[0].count1;
					console.log("카운트 : " + allRow);
					createPageNumber(allRow);
				}
			},
			error : function(data){
				console.log("비동기 처리 오류");
			}
		});
	}else{
		$.ajax({
			type : "get",
			url : "/app/home/search",
			data : {
				number : page,
				select : arr[0],
				search : arr[1]
			},
			async: false,
			contentType : "application/json",
			dataType : "text",
			success : function(data){
				if(data == null){
					console.log("불러오기 실패");
				}else{
					console.log("불러오기 성공");
					let list = JSON.parse(data);
					console.log("데이타1번 코드번호 : " + list.products1[0].product_code);
					homeImgLists1(list);
					allRow = list.products1[0].count1;
					console.log("카운트 : " + allRow);
					createPageNumber(allRow);
				}
			},
			error : function(data){
				console.log("비동기 처리 오류");
			}
		});
	}
	
		
}

function homeImgLists1(ss){
/*	const realPath = ss.product_address;
	console.log("함수 - 리얼패스 : " + realPath);*/
	
	const data1 = ss.products2;
	let innr1 = "";
	for(let i = 0; i < data1.length; i++){
		let numb1 = data1[i].product_price;
		let numb2 = numb1.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		innr1 += `
			<div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top" style="height:200px;" src="/app/static/upload_img/${data1[i].product_img1}">
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">${data1[i].product_title}</h5>
                            <!-- Product price-->
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div style="text-align: center; font-size:25px; margin-bottom:10px;">${numb2}원</div>
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/app/product/detail/${data1[i].product_code}">구경가기</a></div>
                    </div>
                </div>
            </div>
				`;
	}
	imgLists.innerHTML = innr1;
	
}


function createPageNumber(data) {
	const boardListPage = document.querySelector('.board-list-page');
	const preNextBtn = document.querySelectorAll('.pre-next-btn');	
	
	const totalBoardCount = data;
	const totalPageCount = data % 10 == 0 ? data / 10 : (data / 10) + 1;
	
	const startIndex = nowPage % 10 == 0 ? nowPage - 9 : nowPage - (nowPage % 10) + 1;
	const endIndex = startIndex + 9 <= totalPageCount ? startIndex + 9 : totalPageCount;
	
	let pageStr = ``;
	
	for(let i = startIndex; i <= endIndex; i++){
		pageStr += (i == nowPage) ? `<div class="page-link_on" style="margin : 0px 10px; cursor:pointer">${i}</div>`
		: `<div class="page-link" style="margin : 0px 10px; cursor:pointer">${i}</div>`;
	}
	
	boardListPage.innerHTML = pageStr;
	
	preNextBtn[0].onclick = () => {
		nowPage = startIndex != 1 ? startIndex - 1 : 1;
		load1(nowPage);
	}
	
	preNextBtn[1].onclick = () => {
		nowPage = endIndex != totalPageCount ? endIndex + 1 : totalPageCount;
		load1(nowPage);
	}
	
	
	let pageButton = boardListPage.querySelectorAll('div');
	for(let i = 0; i < pageButton.length; i++){
	pageButton[i].onclick = () => {
		nowPage = pageButton[i].textContent;
		load1(nowPage);
		pageButton = boardListPage.querySelectorAll('div');
		pageButton[i].className = "page-link_on";
		
	}
}


}





