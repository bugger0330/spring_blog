



const submit_button = document.querySelector(".signin-button");
const submit_button1 = document.querySelector(".signin-button1");
const username_input = document.querySelector("input[name='username']"); 
const password_input = document.querySelector("input[name='password']"); 

	
submit_button.onclick = () => {	
	if(username_input.value == ""){
		alert("아이디를 입력해주세요!");
		username_input.focus();
		return;
	};
	if(password_input.value == ""){
		alert("비밀번호를 입력해주세요!");
		password_input.focus();
		return;
	};

	$.ajax({
		type: "post",
		url: "/app/auth/signin",
		data: { "username": username_input.value,
				"password": password_input.value },
		dataType: "text",
		success: function (data) {
			if(data != "null") {
				alert("로그인 되었습니다.");
				console.log(JSON.parse(data));
				location.href = "/app/auth/mypage";
			}else{
				alert("아이디를 확인해 주세요!");
			}
		},
		error: function(data) {
			
		}
	});
}

submit_button1.onclick = () => {
	alert("회원가입 페이지로 이동");
	location.href = "/app/auth/signup";
	
}