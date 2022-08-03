localStorageLoad();

//쿠키에 최근 본 상품 코드 배열로 저장하는 소스

function localStorageLoad() {
	arr = JSON.parse(window.localStorage.getItem("code_list"));//json형태로 변환해야 쓰기 편하다
	if(arr == null) {
		arr = new Array();
	}
	
	if(!arr.includes(num2)) {
		arr.push(num2);
	}
	
	window.localStorage.setItem("code_list", JSON.stringify(arr));
	
	console.log("arr길이 : " + arr.length);
	
	for(let i = 0; i < arr.length; i++){
		console.log("쿠기22222 : " + arr[i]);
	}
}