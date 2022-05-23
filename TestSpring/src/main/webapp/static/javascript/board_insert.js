const inputItem = document.querySelectorAll(".input-item");
const submitBtn = document.querySelector(".submit-btn");


//등록
submitBtn[0].onclick = () => {
	$.ajax({
		type : "put",
		url : "/app/board/update",
		data : {
			"title" : inputItem[0].value,
			"content" : inputItem[1].value
		},
		contentType : "application/json",
		dataType : "text",
		success : function(data) {
			alert(data);
			if(data == "true"){
				alert("등록되었습니다");
			}else{
				alert("등록 실패");
			}
		},
		error : function(data) {
			alert("비동기 통신 오류");
		}
	});
}


//삭제
submitBtn[1].onclick = () => {
	const boardCode = 
	$.ajax({
		type : "delete",
		url : "/app/board/delete",
		data : boardCode,
		contentType : "application/json",
		dataType : "text",
		success : function(data) {
			alert(data);
			if(data == "true"){
				alert("등록되었습니다");
			}else{
				alert("등록 실패");
			}
		},
		error : function(data) {
			alert("비동기 통신 오류");
		}
	});
}