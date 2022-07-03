function loginSession(){ 
	let User;
	$.ajax({
		type : "get",
		url : "/app/api/session",
		dataType : "json",
		async: false,
		success : function(data){
			console.log("세션 동기화 : " + data);
			User = data;
		},
		error : function(data){
			alert("세션 비동기처리 오류")
		}
	});
	return User;
}
let user1 = loginSession();
let username1 = user1.username;
console.log("아이디1 : " + username1);












