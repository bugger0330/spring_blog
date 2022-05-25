const submitBtn = document.querySelector(".submit-btn");
const inputItems = document.querySelectorAll(".input-items");
const selectItems = document.querySelector(".select-items");

let User = loginSession();
alert(User.username);

submitBtn.onclick = () => {
	$.ajax({
		type : "post",
		enctype : "multipart/form-data",
		url : "/app/product/insert",
		data : {
			"select" : selectItems.textContent,
			"title" : inputItems[0].value,
			"img" : inputItems[1].value,
			"content" : inputItems[2].value,
			"username" : User.username
		},
		contentType : "application/json",
		dataType : "text",
		success : function(data){
			alert("성공 : " + data);
		},
		error : function(data){
			alert("비동기처리 오류");
		}
		
	});
};