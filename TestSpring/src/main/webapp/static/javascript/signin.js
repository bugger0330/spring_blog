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



const submit_button = document.querySelectorAll("#submit");

const username_input = document.querySelector("input[name='username']"); 
const password_input = document.querySelector("input[name='password']"); 


	
submit_button[0].onclick = () => {	
	if(username_input.value == ""){
		alert("아이디를 입력해주세요!");
		username_input.focus();
		return;
	};
	if(password_input.value == ""){
		alert("비밀번호를 입력해주세요!");
		password_input.focus();
		return;
	};

	$.ajax({
		type: "post",
		url: "/app/auth/signin",
		data: { "username": username_input.value,
				"password": password_input.value },
		dataType: "text",
		success: function (data) {
			if(data != "null") {
				alert("로그인 되었습니다.");
				console.log(JSON.parse(data));
				location.href = "/app/auth/mypage";
			}else{
				alert("아이디를 확인해 주세요!");
			}
		},
		error: function(data) {
			
		}
	});
}

submit_button[1].onclick = () => {	
	location.href="/app/auth/signup";
}





