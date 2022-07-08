const inputItem = document.querySelectorAll(".input-item");
const submitBtn = document.querySelector(".submit");
const inputTag = document.querySelectorAll("input");
const hidden1 = document.querySelector(".hidden");
const session = loginSession();
const userinfo = session.user != null ? session.user.username : null;

const password = document.querySelector("#password");
const address1 = document.querySelector("#address1");
const address2 = document.querySelector("#address2");
const address3 = document.querySelector("#address3");








/*
inputItem 인덱스
0 - 아이디
1 - 이름
2 - 닉네임
3 - 이메일
4 - 휴대폰

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
	hidden1.value = ss.usercode;
}

submitBtn.onclick = () => {
	let flag9 = false;
	for(let i = 0; i < inputTag.length; i++){
		if(inputTag[i].value == ""){
			flag9 = true;
		}
	}
	if(flag9 == true){
		alert("값을 입력해주세요!");
	}else{
		$.ajax({
			type : "post",
			url : "/app/mypage/password-update/check",
			data : {
				username : inputItem[0].value,
				password : password.value
			},
			dataType : "text",
			success : function(data){
				if(data == "true"){
					alert("비밀번호 맞음");
					profileUP();
				}else{
					alert("비밀번호가 틀립니다.");
				}
			},
			error : function(data){
				console.log("비동기 처리 오류");
			}
		});
	}
}


	
		
		
	function profileUP(){
		$.ajax({
				type : "post",
				url : "/app/mypage/profile/update",
				data : {
					username : inputItem[0].value,
					nickname : inputItem[2].value,
					email : inputItem[3].value,
					phone : inputItem[4].value,
					address_num : address1.value,
					address : address2.value,
					address2 : address3.value
				},
				dataType : "json",
				success : function(data){
					if(data == true){
						alert("성공");
					}else{
						alert("실패");
					}
				},
				error : function(data){
					alert("비동기 처리 오류");
				}
			});
	}




//도로명 주소 검색
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                /*document.getElementById("sample6_extraAddress").value = extraAddr;*/
            
            }/* else {
                document.getElementById("sample6_extraAddress").value = '';
            }*/

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('address1').value = data.zonecode;
            document.getElementById("address2").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("address3").focus();
        }
    }).open();
}















