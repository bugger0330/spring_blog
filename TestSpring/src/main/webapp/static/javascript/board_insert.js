const inputItem = document.querySelectorAll(".form-control");
const submitBtn = document.querySelector("#insert-btn");


const userinfo = loginSession();
const username1 = userinfo.username;
console.log(username1);






//등록
submitBtn.onclick = () => {
	$.ajax({
		type : "post",
		url : "/app/board/insert",
		data : {
			username : username1,
			title : inputItem[0].value,
			content : inputItem[1].value,
			count : 0
		},
		dataType : "text",
		success : function(data) {
			alert(data);
			if(data == "true"){
				alert("등록되었습니다");
				location.href = "/app/board/community";
			}else{
				alert("등록 실패");
			}
		},
		error : function(data) {
			alert("비동기 통신 오류");
		}
	});
}

