const username = document.querySelector("#username");
const checkBtn = document.querySelector("#checkBtn");


checkBtn.onclick = () => {
	alert("중복체크 클릭");
	$.ajax({
		type : "get",
		url : "/app/auth/username/check",
		data : {
			username : username.value
		},
		dataType : "text",
		success : function(data){
			if(data == "true"){
				alert("아이디가 중복됩니다");
			}else{
				alert("아이디가 사용 가능합니다");
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}

