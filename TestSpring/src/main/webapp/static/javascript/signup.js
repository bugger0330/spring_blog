const username = document.querySelector("#username");
const checkBtn = document.querySelector("#checkBtn");
const inputs = document.querySelectorAll(".form-control");
const submitBtn = document.querySelector("#submit-btn");

const hiddenUsername = document.querySelector(".hidden-username");



/*빈 값 입력 후 가입시 빨간 테두리 표시*/
window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);



/*아이디 중복체크*/

checkBtn.onclick = () => {
		if(username.value == ""){
			alert("아이디를 입력하세요!");
		}else if(username.value != ""){
			
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
					alert("사용가능합니다.");
					
					hiddenUsername.value = "true";
				}
			},
			error : function(data){
				alert("비동기 처리 오류");
			}
		});

	}
	
	
}



/*회원가입 버튼 클릭시 요청*/

submitBtn.onclick = () => {
	if(hiddenUsername.value != "true"){
		alert("아이디 중복확인을 먼저 해주세요!");
	}/*else{
		$.ajax({
			type : "post",
			url : "/app/auth/signup",
			data : JSON.stringify({
				username : inputs[0].value,
				nickname : inputs[1].value,
				password : inputs[2].value,
				name : inputs[4].value,
				email : inputs[5].value,
				phone : inputs[6].value,
				address : inputs[7].value,
				address2 : inputs[8].value
			}),
			dataType : "text",
			contentType : "application/json",
			success : function(data){
				console.log("성공 : " + data);
				if(data == "true"){
					console.log("회원가입 성공");
					alert("회원가입 성공");
				}else{
					console.log("회원가입 실패");
					alert("회원가입 실패");
				}
				
			},
			error : function(data){
				console.log("비동기 처리 오류");
			}
		});
	}*/
			
}




































