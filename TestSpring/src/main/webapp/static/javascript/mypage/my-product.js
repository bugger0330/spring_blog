const imgLists = document.querySelector("#img-lists");

const session = loginSession();
const userinfo = session.username;
console.log("세션아이디:"+session.username);



load1();

function load1(){
	$.ajax({
		type : "post",
		url : "/app/mypage/product",
		data : {
			username : userinfo
		},
		dataType : "text",
		success : function(data){
			if(data == null){
				alert("불러오기 실패");
			}else{
				alert("불러오기 성공");
				let list = JSON.parse(data);
				homeImgLists(list);
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}
function homeImgLists(ss){
	console.log(ss[0].product_img1);
	let innr = "";
	for(let i = 0; i < ss.length; i++){
		innr += `
			<div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top" style="height:200px;" src="/app/static/upload_img/${ss[i].product_img1}">
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">${ss[i].product_title}</h5>
                            <!-- Product price-->
                            ${ss[i].product_price}원
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/app/product/detail/${ss[i].product_code}">구경가기</a></div>
                    </div>
                </div>
            </div>
				`;
	}
	imgLists.innerHTML = innr;
}

