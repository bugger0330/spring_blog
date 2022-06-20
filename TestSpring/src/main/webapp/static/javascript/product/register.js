let sessionActive = loginSession();
alert("유저정보 : " + sessionActive.username);

const imgUploadBtn = document.querySelector(".input_file");
const images = document.querySelectorAll(".img_inputs");
const image_wrapper = document.querySelector(".sc-eInJlc");
const submitBtn = document.querySelector(".submit-btn");
const title = document.querySelector(".sc-jKmXuR2");
const content = document.querySelector(".textarea");


imgUploadBtn.onchange = (event) => {
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
	$.ajax({
		type : "post",
		url : "/app/product/insert",
		data : formData,
		encType : "multipart/form-data",
		processData : false,
		contentType : false,
		dataType: "text",
		success : function(data){
			alert("성공 : "+ data);
		},
		error : function(data){
			alert("비동기처리 오류");
		}
	});
}













