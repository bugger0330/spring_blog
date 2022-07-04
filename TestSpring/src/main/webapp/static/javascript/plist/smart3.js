const preNextBtn = document.querySelectorAll(".pre-next-btn");
const innrNumList = document.querySelector(".board-list-page");
const imgLists = document.querySelector("#img-lists");
let allRow = 0;

const page = 0;
let nowPage = 0;

load1(nowPage);

function load1(page){
	$.ajax({
		type : "get",
		url : "/app/home",
		data : {
			number : page
		},
		contentType : "application/json",
		dataType : "text",
		success : function(data){
			if(data == null){
				alert("불러오기 실패");
			}else{
				alert("불러오기 성공");
				let list = JSON.parse(data);
				console.log("데이타1 : " + list.products1);
				homeImgLists1(list);
				allRow = list.products1[0].count1 / 16;
				console.log("카운트 : " + allRow);
				numberList();
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}

function homeImgLists1(ss){
/*	const realPath = ss.product_address;
	console.log("함수 - 리얼패스 : " + realPath);*/
	
	const data1 = ss.products3;
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
                            ${numb2}원
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/app/product/detail/${data1[i].product_code}">구경가기</a></div>
                    </div>
                </div>
            </div>
				`;
	}
	imgLists.innerHTML = innr1;
	
}

function numberList(){
	let innr = "";
	for(let i = 1; i < 11; i++){
		innr += `
					<div class="page-link" style="margin : 0px 10px; cursor:pointer">${i}</div>
				`;
	innrNumList.innerHTML = innr;
	}
}











