const inputItem = document.querySelectorAll(".form-control");
const submitBtn = document.querySelector("#insert-btn");


const userinfo = loginSession();
const username1 = userinfo.user != null ? userinfo.user.username : null;






//등록
submitBtn.onclick = () => {
	$.ajax({
		type : "post",
		url : "/app/board/notice/insert",
		data : {
			username : username1,
			title : inputItem[0].value,
			content : inputItem[1].value,
			count : 0
		},
		dataType : "text",
		success : function(data) {
			if(data == "true"){
				alert("등록되었습니다");
				location.href = "/app/board/notice";
			}else{
				alert("등록 실패 했습니다.");
			}
		},
		error : function(data) {
			console.log("비동기 통신 오류");
		}
	});
}

