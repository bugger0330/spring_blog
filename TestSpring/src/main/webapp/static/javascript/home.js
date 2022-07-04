const imgLists1 = document.querySelector("#img-lists1");
const imgLists2 = document.querySelector("#img-lists2");
const imgLists3 = document.querySelector("#img-lists3");
const imgLists4 = document.querySelector("#img-lists4");

const optionsBtn = document.querySelectorAll(".options-go");


load1();

function load1(){
	$.ajax({
		type : "get",
		url : "/app/home",
		data : {
			number : 0
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
				console.log("데이타2 : " + list.products2);
				console.log("데이타3 : " + list.products3);
				console.log("데이타4 : " + list.products4);
				
				/*console.log("절대경로 : " + list.products1.product_address);*/
				console.log("0번째 번호 : "+list.products1[0].product_code);
				homeImgLists1(list);
				homeImgLists2(list);
				homeImgLists3(list);
				homeImgLists4(list);
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
	
	const data1 = ss.products1;
	let innr1 = "";
	for(let i = 0; i < data1.length; i++){
		let numb1 = data1[i].product_price;
		let numb2 = numb1.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		innr1 += `
			<div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top" style="height:200px;" src="static/upload_img/${data1[i].product_img1}">
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
	imgLists1.innerHTML = innr1;
	
}

function homeImgLists2(ss){
/*	const realPath = ss.product_address;
	console.log("함수 - 리얼패스 : " + realPath);*/
	
	const data2 = ss.products2;
	let innr2 = "";
	for(let i = 0; i < data2.length; i++){
		let numb1 = data2[i].product_price;
		let numb2 = numb1.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		innr2 += `
			<div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top" style="height:200px;" src="static/upload_img/${data2[i].product_img1}">
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">${data2[i].product_title}</h5>
                            <!-- Product price-->
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                           <div style="text-align: center; font-size:25px; margin-bottom:10px;">${numb2}원</div>
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/app/product/detail/${data2[i].product_code}">구경가기</a></div>
                    </div>
                </div>
            </div>
				`;
	}
	imgLists2.innerHTML = innr2;
	
}

function homeImgLists3(ss){
/*	const realPath = ss.product_address;
	console.log("함수 - 리얼패스 : " + realPath);*/
	
	const data3 = ss.products3;
	let innr3 = "";
	for(let i = 0; i < data3.length; i++){
		let numb1 = data3[i].product_price;
		let numb2 = numb1.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		innr3 += `
			<div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top" style="height:200px;" src="static/upload_img/${data3[i].product_img1}">
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">${data3[i].product_title}</h5>
                            <!-- Product price-->
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                           <div style="text-align: center; font-size:25px; margin-bottom:10px;">${numb2}원</div>
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/app/product/detail/${data3[i].product_code}">구경가기</a></div>
                    </div>
                </div>
            </div>
				`;
	}
	imgLists3.innerHTML = innr3;
	
}

function homeImgLists4(ss){
/*	const realPath = ss.product_address;
	console.log("함수 - 리얼패스 : " + realPath);*/
	
	const data4 = ss.products4;
	let innr4 = "";
	for(let i = 0; i < data4.length; i++){
		let numb1 = data4[i].product_price;
		let numb2 = numb1.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		innr4 += `
			<div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top" style="height:200px;" src="static/upload_img/${data4[i].product_img1}">
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">${data4[i].product_title}</h5>
                            <!-- Product price-->
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div style="text-align: center; font-size:25px; margin-bottom:10px;">${numb2}원</div>
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/app/product/detail/${data4[i].product_code}">구경가기</a></div>
                    </div>
                </div>
            </div>
				`;
	}
	imgLists4.innerHTML = innr4;
	
}


optionsBtn[0].onclick = () => {
	location.href = "/app/product/smart1";
}
optionsBtn[1].onclick = () => {
	location.href = "/app/product/smart2";
}
optionsBtn[2].onclick = () => {
	location.href = "/app/product/smart3";
}
optionsBtn[3].onclick = () => {
	location.href = "/app/product/smart4";
}




