const mainDiv = document.querySelector(".main-div");



productLoad();

function productLoad(){

	$.ajax({
		type: "get",
		url : "/app/product/select",
		dataType : "json",
		success : function(data){
			alert("성공 : " + data);
			productSelect(data);
		},
		error : function(data){
			alert("비동기처리 오류");
		}
	});

}


function productSelect(data){
	let ulStyle = "";
	for(let i = 0; i < data.length; i++){
		ulStyle += `
			<ul class="ul-style">
	            <li><img src="/app/static/image/${data[i].product_img}"><br></li>
	            <li>제목 =>${data[i].product_title}<br></li>
	            <li>판매자 =>${data[i].product_username}<br></li>
	            <li><button>상품보기</button></li>
	        </ul>
	        `;
	}
	
	mainDiv.innerHTML = ulStyle;
}