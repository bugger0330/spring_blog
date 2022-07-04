const check = document.querySelector(".ft_sb_p");
const checkDiv = document.querySelector(".check-go-btn-bg");

const li = document.querySelectorAll("li");

check.onmouseover = () => {
    checkDiv.classList.add("check_go_btn_on");
    // checkDiv.style.background = "background: rgba(255, 255, 255, 0.1);";
} // 커서 갖다댔을때 백그라운드 이미지 바꾸는거 // 아직 구현 못함
check.onmouseout = () => {
    checkDiv.classList.remove("check_go_btn_on");
    // checkDiv.style.background = "background: rgba(255, 255, 255, 0.1);";
}

check.onclick = () => {
    alert("출석되었습니다.");

}


for(let i = 0; i < li.length; i++){
    li[i].onclick = () => {
        let liP = li[i].querySelector("p");
        if(li[i].className == "ch_on"){
            alert("이미 출석 되었습니다.");
        }else{
            li[i].classList.add("ch_on");
            liP.classList.add("ch_on_p");
            alert("출석되었습니다.");
        }
    }
}