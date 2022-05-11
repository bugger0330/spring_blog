const inputData = document.querySelectorAll(".input-data");
const changeBtn = document.querySelectorAll(".change-btn");

for(let i = 0; i < changeBtn.length; i++){
	changeBtn[i].onclick = () => {
		const data = {};
		const name = inputData[i + 1].name;
		data[""+name] = inputData[i + 1].value;
		console.log(data);
		$.ajax({
			type : "post",
			url : "/app/profile/change",
			data : data,
			dataType : "text",
			success : function(data){
				if(data == "true"){
					alert("닉네임이 중복됩니다");
				}else{
					alert("변경되었습니다");
				}
			},
			error : function(data){
				alert("비동기 처리 오류");
			}
		});
	}
}


/*changeBtn[0].onclick = () => {
	alert("회원정보 수정 버튼 클릭");
	
	const profile = inputProfile();
	$.ajax({
		type : "post",
		url : "/app/profile/change",
		data : {
			username : profile[0].value
		},
		dataType : "text",
		success : function(data){
			if(data == "true"){
				alert("닉네임이 중복됩니다");
			}else{
				alert("변경되었습니다");
			}
		},
		error : function(data){
			alert("비동기 처리 오류");
		}
	});
}
changeBtn[1].onclick = () => {
	$.ajax({
		
	});
}
changeBtn[2].onclick = () => {
	$.ajax({
		
	});
}*/

function inputProfile(){
	const profile = {
		username : inputData.value[0],
		nickname : inputData.value[1],
		address : inputData.value[2],
		gender : inputData.value[3]
	};
}




