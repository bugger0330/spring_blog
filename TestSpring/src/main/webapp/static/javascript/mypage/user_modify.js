const inputItem = document.querySelectorAll(".input-item");
const submitBtn = document.querySelector(".submit");


const session = loginSession();
const userinfo = session.user != null ? session.user.username : null;

/*
inputItem 인덱스
0 - 아이디
1 - 이름
2 - 이메일
3 - 휴대폰

*/

load1();

function load1(){
	let data2 = "";
	$.ajax({
		type : "get",
		url : "/app/mypage/profile",
		data : {
			username : userinfo
		},
		dataType : "text",
		success : function(data){
			if(data != null){
				alert("성공");
				data2 = JSON.parse(data);
				load2(data2);
			}else{
				alert("실패");
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}


function data2(ss){
	inputItem[0].value = ss.username;
	inputItem[1].value = ss.name;
}

