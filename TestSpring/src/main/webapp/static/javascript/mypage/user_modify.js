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
				data2 = JSON.parse(data);
				innrInput(data2);
			}else{
				console.log("실패");
			}
		},
		error : function(data){
			console.log("비동기 처리 오류");
		}
	});
}


function innrInput(ss){
	inputItem[0].value = ss.username;
	inputItem[1].value = ss.name;
}

