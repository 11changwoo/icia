//로그인시 아이디, 비번 입력확인
function loginCheck() {
	if(!document.login.id.value || document.login.id.value.trim().length==0) {
		alert("아이디가 입력되지 않았습니다.");
		document.login.id.value = "";
		document.login.id.focus();
		return false;
	}
	
	if(!document.login.pw.value || document.login.pw.trim().length==0) {
		alert("비밀번호를 입력해주세요.");
		document.login.pw.value="";
		document.login.pw.focus();
		return false;
	}
	return true;
}

// 아이디 중복확인
function idCheck() {
	if(document.join.id.value == "") {
		alert("아이디를 입력해주세요.");
		document.join.id.value.focus();
	} else {
		var url = "idCheck?id=" + document.join.id.value;
		window.open(url,"아이디 중복확인","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");		
	}
}

// 아이디 중복확인 체크 후 사용
function idok(id) {
	opener.join.id.value = document.join.id.value;
	opener.join.reid.value = document.join.id.value;
	self.close();
}


// 이메일 입력란 잠금 활성/비활성
function emailCheck() {
	if(document.join.email_select.value == " "){
		 document.join.email_addr.disabled = true;
		 document.join.email_addr.value = "";
		}
		else{
		 document.join.email_addr.disabled = true;
		 document.join.email_addr.value = document.join.email_select.options[document.join.email_select.selectedIndex].value;
		}
}

// 주소 검색
function post_search() {
	var width = 500;
	 var height = 600;
	new daum.Postcode({
		width: width, 
	    height: height,
	    theme: { // 테마 설정
	        searchBgColor: "#E2A9F3", // 검색창 배경색
	        queryTextColor: "#000000" // 검색창 글자색
	    },
	    oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ""; // 최종 주소 변수
            var extraAddr = ""; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType == "R") { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType == "R"){
                // 법정동명이 있을 경우 추가한다.
                if(data.bname != ""){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName != ""){
                    extraAddr += (extraAddr != "" ? "," + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr != "" ? " ("+ extraAddr +")" : "");
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("addr").value = data.zonecode; // 5자리 새우편번호
																	// 사용
            document.getElementById("addr_f").value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr_b").focus();
        }
	}).open({
	    left: ((window.screen.width/2)-(width/2))+'px',
	    top: ((window.screen.height/2)-(height/2))+'px'
		});
}
