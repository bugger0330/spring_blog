const sp01 = document.querySelectorAll(".sp01");
const sp02 = document.querySelectorAll(".sp02");

const link =  location.pathname;
console.log("현재 주소는 " + link);
//app/product/detail/14
let product_code = link.substring(1, link.length).split("/")[3]; //split("/")[3] 의 의미는 /를 기준으로 블록을 나누고, 인덱스 0부터 시작해서 그 블록을 선택하는것 [3] == 14(맨 뒤)
console.log(product_code);

const img1 = document.querySelector(".img_1");
const title = document.querySelector(".title");
const price = document.querySelector(".price");
const delivery = document.querySelector("#delivery");
const username = document.querySelector("#username1");
const phone = document.querySelector("#phone1");
const status = document.querySelector("#status");
const exchange = document.querySelector("#exchange");
const content = document.querySelector(".content");

const imgs = document.querySelectorAll(".imgs");



load1();

function load1(){
	$.ajax({
		type : "get",
		url : `/app/product/get/${product_code}`,
		contentType : "application/json",
		dataType : "text",
		success : function(data){
			if(data != null){
				alert("성공");
				let data2 = JSON.parse(data);
				getProductList(data2);
				/*getImgList(data2);*/
			}else{
				alert("실패");
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}

function getProductList(ss){
	img1.src = `/app/static/upload_img/` + `${ss.product_img1}`;
	console.log(`/app/static/upload_img/` + `${ss.product_img1}`);
	
	title.textContent = `${ss.product_title}`;
	price.textContent = `${ss.product_price}`;
	delivery.textContent = `${ss.product_delivery}`;
	username.textContent = `${ss.product_username}`;
	phone.textContent = `${ss.product_phone}`;
	status.textContent = `${ss.product_status}`;
	exchange.textContent = `${ss.product_exchange}`;
	content.textContent = `${ss.product_content}`;
}

function getImgList(ss){
	if(ss.product_img1 != null){
		imgs[0].className = "imgs_on";
		imgs[0].src = "static/upload_img/${ss.product_img1}";
	}else if(ss.product_img2 != null){
		imgs[1].className = "imgs_on";
		imgs[1].src = "static/upload_img/${ss.product_img1}";
	}else if(ss.product_img3 != null){
		imgs[2].className = "imgs_on";
		imgs[2].src = "static/upload_img/${ss.product_img1}";
	}else if(ss.product_img4 != null){
		imgs[3].className = "imgs_on";
		imgs[3].src = "static/upload_img/${ss.product_img1}";
	}else if(ss.product_img5 != null){
		imgs[4].className = "imgs_on";
		imgs[4].src = "static/upload_img/${ss.product_img1}";
	}else if(ss.product_img6 != null){
		imgs[5].className = "imgs_on";
		imgs[5].src = "static/upload_img/${ss.product_img1}";
	}
	
	
	
	
	
	
	
	
}



















