const submit_button = document.querySelector("#submit");
const submit_button2 = document.querySelector("#submit2");

const inputs = document.querySelectorAll(".form-control");



	
submit_button.onclick = () => {	
	$.ajax({
		type : "post",
		url : "/app/auth/signin",
		data : JSON.stringify({
			username : inputs[0].value,
			password : inputs[1].value
		}),
		dataType : "text",
		contentType : "application/json",
		success : function(data){
			alert("성공");
			alert("user객체 : " + data);
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}

submit_button2.onclick = () => {	
	location.href="/app/auth/signup";
}





