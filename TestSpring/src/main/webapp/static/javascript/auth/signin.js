const submit_button = document.querySelector("#submit");
const submit_button2 = document.querySelector("#submit2");

const inputs = document.querySelectorAll(".form-control");




inputs[0].onblur = () => {
	$.ajax({
		type : "get",
		url : "/app/auth/username/check",
		data : {
			username : inputs[0].value
		},
		contentType : "application/json",
		dataType : "text",
		success : function(data){
			if(data == "true"){
				
			}else{
				alert("아이디를 확인해주세요!");
			}
			
			
		},
		error : function(data){
			console.log("비동기 처리 오류");
		}
	});
}

	
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
			if(data == "null"){
				alert("아이디나 비밀번호를 확인해주세요!");
			}else{
				alert("로그인 되었습니다.");
			location.href = "/app"
			}
			
		},
		error : function(data){
			console.log("비동기 처리 오류");
		}
	});
	
	
	
}

submit_button2.onclick = () => {	
	location.href="/app/auth/signup";
}





