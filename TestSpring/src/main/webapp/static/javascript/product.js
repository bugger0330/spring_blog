const submitBtn = document.querySelector(".submit-btn");
const inputItems = document.querySelectorAll(".input-items");
const selectItems = document.querySelector(".select-items");
const image = document.querySelector(".img-items > img");

let User = loginSession();
alert(User.username);

inputItems[1].onchange = () => {
	let reader = new FileReader();
	reader.onloadend = (e) => {
		console.log(e);
		image.src = e.target.result;
		/*inputItems[1].value;*/
	}
	reader.readAsDataURL(inputItems[1].files[0]);
}

submitBtn.onclick = () => {
	console.log("submit button clicked");
	product();
}

function product(){
/*	inputItems[1].onchange = () => {*/
	let formData = new FormData(document.createElement("form"));
	
	/*for(let i = 0; i < inputItems[1].files.length; i++){
		formData.append("file", inputItems[1].files[i]);
	}*/
	console.log(inputItems[0].value);
	console.log(inputItems[1].files[0]);
	console.log(inputItems[2].value);
	
	formData.append("file", inputItems[1].files[0]);
	formData.append("select", selectItems.textContent.trim());
	formData.append("title" , inputItems[0].value);
	formData.append("content" , inputItems[2].value);
	formData.append("username" , User.username);
	
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
	











/*<form class="form-data">
	<div>
		<input type="file" class="file" name="files">
	</div>
	<button>추가</button>
</form>

==========================================================

const file = document.querySelector(".file");

file.onchange = () => {

	const fileReader = new FileReader();
	fileReader.onloadend = (event) => {

		let formData = new FormData(document.createElement("form"));
		formData.append("file", file.files[0]);
		
		$.ajax({
			type : "post",
			url : "/app/test",
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
	fileReader.readAsDataURL(file.files[0]);
}
*/