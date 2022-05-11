const username = document.querySelector("#username");
const checkBtn = document.querySelector("#checkBtn");

checkBtn.onclick = () => {
	$.ajax({
		type : "get",
		url : "/app/auth/username/check",
		data : {
			username : input.value
		},
		dataType : "text",
		success : function(data){
			alert(data);
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}

 
	
}