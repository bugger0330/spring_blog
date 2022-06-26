const userInfo = document.querySelector("#user-info");
const black = document.querySelector(".black");
const useroverBtn = document.querySelector("#userover-btn");
const passwordCheck = document.querySelector("#password-check");


const session = loginSession();
const userinfo = session.username;
console.log("세션아이디:"+session.username);
black.value = userinfo;



useroverBtn.onclick = () => {
	if(passwordCheck.value == ""){
		alert("비밀번호를 입력해 주세요!");
	}
	
	$.ajax({
		type : "post",
		url : "/app/mypage/password-update/check",
		data : {
			username : userinfo,
			password : passwordCheck.value
		},
		dataType : "text",
		success : function(data){
			if(data == "false"){
				alert("비밀번호가 틀립니다.");
			}else{
				deleteUser();
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});

}


function deleteUser(){
		console.log("userid : " +userinfo);
		console.log("userpw : " +passwordCheck.value);
		$.ajax({
			type : "delete",
			url : "/app/mypage/user-over/ok",
			data : JSON.stringify({
				username : userinfo,
				password : passwordCheck.value
			}),
			contentType : "application/json",
			dataType : "text",
			success : function(data){
				if(data == "true"){
					alert("성공");
					location.href = "/app/";
				}else{
					alert("실패");
				}
			},
			error : function(data){
				alert("비동기 처리 오류");
			}
			
			
		});
}



















