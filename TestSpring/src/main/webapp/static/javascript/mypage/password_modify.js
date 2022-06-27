const submitBtn = document.querySelector(".submit");
const username = document.querySelector("#username");
const password = document.querySelector("#password");
const password1 = document.querySelector("#password1");
const password2 = document.querySelector("#password2");


const session = loginSession();
const userinfo = session.username;
console.log("세션아이디:"+session.username);

username.value = userinfo;

password.onblur = () => {
	$.ajax({
		type : "post",
		url : "/app/mypage/password-update/check",
		data : {
			username : userinfo,
			password : password.value
		},
		dataType : "text",
		success : function(data){
			if(data == "false"){
				alert("비밀번호가 틀립니다.");
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}



submitBtn.onclick = () => {
	if(password1.value != password2.value){
		alert("새 비밀번호가 일치하지 않습니다.");
	}else if(password.value == password1.value){
		alert("기존의 비밀번호와 같습니다");
	}else{
		$.ajax({
			type : "put",
			url : "/app/mypage/password-update",
			data : JSON.stringify({
				username : userinfo,
				password : password1.value
			}),
			contentType : "application/json",
			dataType : "text",
			success : function(data){
				if(data == "true"){
					alert("비밀번호가 변경되었습니다. 새로 로그인이 필요합니다.");
					location.href = "/app/logout";
				}else{
					alert("실패");
				}
			},
			error : function(data){
				alert("비동기 처리 오류");
			}
		});
	}
}
	



