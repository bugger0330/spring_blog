const imgUploadBtn = document.querySelector(".input_file");
const images = document.querySelectorAll(".img_inputs");
const image_wrapper = document.querySelector(".sc-eInJlc");
const submitBtn = document.querySelector(".submit-btn");
const title = document.querySelector(".sc-jKmXuR2");
const content = document.querySelector(".textarea");

const hiddenInput = document.querySelector(".hidden-input");
const hiddenInput2 = document.querySelector(".hidden-input2");
let sessionActive = loginSession();
const username1 = sessionActive.user != null ? sessionActive.user.username : null;

let phone1 = sessionActive.phone;
console.log("세션 아이디 가져오기 : "+username1);
hiddenInput.value = username1;
hiddenInput2.value = phone1;
console.log("세션 아이디 히든 : "+hiddenInput.value);
const formData = new FormData(document.querySelector("form"));
console.log(formData.getAll("file"));


const select = document.querySelectorAll("select");
const select1 = select[0].querySelectorAll("option");
const select2 = select[1].querySelectorAll("option");
const select3 = select[2].querySelectorAll("option");
const select4 = select[3].querySelectorAll("option");
let option1 = "";
let option2 = "";
let option3 = "";
let option4 = "";
/*
	0 = 카테고리
	1 = 결제방법
	2 = 제품상태
	3 = 교환/환불
*/

//카테고리
for(let i = 0; i < select1.length; i++){
	if(select1[i].selected){
		option1 = select1[i].value;
	}
}

//결제방법
for(let i = 0; i < select2.length; i++){
	if(select2[i].selected){
		option2 = select2[i].value;
	}
}

//제품상태
for(let i = 0; i < select3.length; i++){
	if(select3[i].selected){
		option3 = select3[i].value;
	}
}

//환불/교환
for(let i = 0; i < select4.length; i++){
	if(select4[i].selected){
		option4 = select4[i].value;
	}
}

console.log("선택 : " + option1);
console.log("선택 : " + option2);
console.log("선택 : " + option3);
console.log("선택 : " + option4);





imgUploadBtn.onchange = (event) => {
	if(event.target.files.length > 6){
		alert("이미지는 6장까지만 업로드 가능합니다");
		return;
	}
	for(let i = 0; i < event.target.files.length; i++) {
		const reader = new FileReader();
		reader.onloadend = (e) => {
			const li = makeImgTag(e.target.result);
			image_wrapper.appendChild(li);
			setTimeout(() => {
				li.classList.add("active");
			}, 0);
		}
		reader.readAsDataURL(event.target.files[i]);
	}
}

function makeImgTag(img_src) {
	const li = document.createElement("li");
	li.className = "img_inputs";
	li.innerHTML = `<img class="img_inputs" src="${img_src}">`;
	
	return li;
}


submitBtn.onclick = () => {	
	const formData = new FormData(document.querySelector("form"));
	formData.append("product_select", option1);
	formData.append("product_delivery", option2);
	formData.append("product_status", option3);
	formData.append("product_exchange", option4);
	
	
	$.ajax({
		type : "post",
		url : "/app/product/insert",
		data : formData,
		encType : "multipart/form-data",
		processData : false,
		contentType : false,
		dataType: "text",
		success : function(data){
			if(data == "true"){
				alert("업로드 완료 되었습니다.");
			}else{
				alert("업로드 실패 하였습니다.");
			}
			
		},
		error : function(data){
			console.log("비동기처리 오류");
		}
	});
}













