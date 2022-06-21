const imgLists = document.querySelector("#img-lists");

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
				console.log("절대경로 : " + list.product_address);
				console.log("0번째 번호 : "+list.products[0].product_code);
				homeImgLists(list);
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}
function homeImgLists(ss){
	const realPath = ss.product_address;
	console.log("함수 - 리얼패스 : " + realPath);
	const data = ss.products;
	let innr = "";
	for(let i = 0; i < data.length; i++){
		innr += `
			<div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top" src="C:/upload_img/${data[i].product_img1}">
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">${data[i].product_title}</h5>
                            <!-- Product price-->
                            ${data[i].product_price}원
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">구경가기</a></div>
                    </div>
                </div>
            </div>
				`;
	}
	imgLists.innerHTML = innr;
}







