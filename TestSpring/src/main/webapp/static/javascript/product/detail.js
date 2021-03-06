const sp01 = document.querySelectorAll(".sp01");
const sp02 = document.querySelectorAll(".sp02");

const session = loginSession();
/*console.log("세션아이디111:"+session.user.username);*/
const userinfo = session.user != null ? session.user.username : null;
/*console.log("세션아이디:"+userinfo);*/

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
const productCode = document.querySelector(".hidden1");

const imgs = document.querySelectorAll(".imgs");

const orderBtn = document.querySelector(".order");

load1();
console.log("함수외부 코드 : "+productCode);

function load1(){
	
	$.ajax({
		type : "get",
		url : `/app/product/get/${product_code}`,
		contentType : "application/json",
		dataType : "text",
		success : function(data){
			if(data != null){
				let data2 = JSON.parse(data);
				
				getProductList(data2);
				getImgList(data2);
				orderClick(data2);
			}else{
				console.log("실패");
			}
		},
		error : function(data){
			console.log("비동기 처리 오류");
		}
	});
}
//장바구니 클릭
function orderClick(ss){
	const jqueryDATA = ss;
	
		orderBtn.onclick = () => {
		
		if(userinfo == username.textContent){
			alert("본인이 등록한 상품은 구매가 불가능합니다.");
			location.back();
		}
		console.log("code:"+jqueryDATA.product_code);
		console.log("img:"+jqueryDATA.product_img1);
		console.log("title:"+jqueryDATA.product_title);
		console.log("price:"+jqueryDATA.product_price);
		console.log("username:"+userinfo);
		console.log("youname:"+jqueryDATA.product_username);
		

		if(userinfo == null){
			alert("로그인이 필요합니다.");
			location.href = "/app/auth/signin";
		}else{
			$.ajax({
				type : "post",
				url : "/app/product/order/insert",
				data : {
					product_code : jqueryDATA.product_code,
					product_img1 : jqueryDATA.product_img1,
					product_title : jqueryDATA.product_title,
					product_price : jqueryDATA.product_price,
					username : userinfo,
					youname : jqueryDATA.product_username
				},
				dataType : "text",
				success : function(data){
					if(data == "true"){
						alert("장바구니에 상품이 담겼습니다.");
					}else{
						alert("이미 장바구니에 상품이 담겨 있습니다.");
					}
				},
				error : function(data){
					console.log("비동기 처리 오류");
				}
			});
		}
			
		
	}
}





function getProductList(ss){
	let numb1 = ss.product_price;
	let numb2 = numb1.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	
	img1.src = `/app/static/upload_img/` + `${ss.product_img1}`;
	title.textContent = `${ss.product_title}`;
	price.textContent = `${numb2} 원`;
	delivery.textContent = `${ss.product_delivery}`;
	username.textContent = `${ss.product_username}`;
	phone.textContent = `${ss.product_phone}`;
	status.textContent = `${ss.product_status}`;
	exchange.textContent = `${ss.product_exchange}`;
	content.textContent = `${ss.product_content}`;
	productCode.value = `${ss.product_code}`;
}

function getImgList(ss){
	let imgList = new Array();
	imgList.push(ss.product_img1);
	imgList.push(ss.product_img2);
	imgList.push(ss.product_img3);
	imgList.push(ss.product_img4);
	imgList.push(ss.product_img5);
	imgList.push(ss.product_img6);
	
	for(let i = 0; i < imgList.length; i++){
		if(imgList[i] != null){
			imgs[i].className = "imgs_on";
			imgs[i].src = `/app/static/upload_img/` + `${imgList[i]}`;
		}
	}
	
}

















