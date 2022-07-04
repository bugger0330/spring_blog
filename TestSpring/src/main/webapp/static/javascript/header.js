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












