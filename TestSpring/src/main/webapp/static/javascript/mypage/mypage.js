const inputData = document.querySelectorAll(".input-data");
const changeBtn = document.querySelectorAll(".change-btn");
const logoutBtn = document.querySelector(".logout-btn");
const deleteBtn = document.querySelector(".delete-btn");

const doumiBtn = document.querySelector(".doumi-btn");

const userinfo = loginSession();
const username1 = userinfo.user != null ? userinfo.user.username : null;

doumiBtn.onclick = () => {
	location.href = "/app/board/list";
}


for(let i = 0; i < changeBtn.length; i++){
	changeBtn[i].onclick = () => {
		const data = {};
		const name = inputData[i+1].name;
		data["" + name] = inputData[i+1].value;
		
		console.log(inputData[i].value);
		console.log(JSON.stringify(data));
				
		$.ajax({
			type : "put",
			url : "/app/profile/change",
			data : JSON.stringify(data),
			contentType : "application/json; charset=utf-8",
			dataType: "text",
			success : function(data){
				if(data == "true"){
					alert("변경되었습니다.");
				}else{
					alert("데이터가 중복됩니다.");
				}
			},
			error : function(data){
				console.log("비동기 처리 오류 : "+data);
			}
		});
	}
}

logoutBtn.onclick = () => {
	$.ajax({
		type : "get",
		url : "/app/logout",
		success : function(data){
			if(data == "true"){
				alert("로그아웃 되었습니다");
				location.href="/app";
			}
			
		},
		error : function(data){
			console.log("비동기 처리 오류");
		}
	})
}

deleteBtn.onclick = () => {
	const username = inputData[0].value;
	$.ajax({
		type : "delete",
		url : "/app/delete",
		data : username,
		success : function(data){
				if(data == "true"){
					alert("회원탈퇴 완료 되었습니다");
					location.href="/app/auth/signin";
				}
			},
		errer : function(data){
			console.log("비동기 처리 오류");
		}
	});
}







