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

