package com.test.app.web.script;

public class Logout {
	StringBuilder script = new StringBuilder();
	
	public String logoutScript(boolean result) {
		if(result) {
			script.append("<script>");
			script.append("alert(\"로그아웃 완료.\");");
			script.append("location.replace(\"/app/\");"); // replace 히스토리가 삭제되서 뒤로가기가 안된다
			script.append("</script>");
		}else {
			script.append("<script>");
			script.append("alert(\"로그아웃 실패.\");");
			script.append("history.back();"); 
			script.append("</script>");
		}
		
		
		return script.toString();
	}
	
	
	
	

}
