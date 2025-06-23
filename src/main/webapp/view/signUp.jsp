<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>[농사랑] 충남 농특산물 온라인 직거래 장터</title>
    <link rel="stylesheet" href="../css/reset.css" />
    <link rel="stylesheet" href="../css/common.css" />
    <link rel="stylesheet" href="../css/signUp.css" />
</head>
<body>
 <header>
      <div class="headertop">
        <div class="topmenu1">
          <div class="topmenu1left">
            <img class="topbutton" src="../img/document.png" alt="document" />
            <a href="">공지사항 </a>
          </div>
          <div class="topmenu1right">
            <img src="../img/downbotton.png" alt="downbutton" />
            <img src="../img/upbutton.png" alt="upbotton" />
            <a href="">[2025/3/25]충남고향사랑기부제 답례품 후기 이벤트</a>
          </div>
        </div>
        <div class="topmenu2">
          <ul>
			<li><a href="<%=request.getContextPath()%>/view/signin.jsp">로그인</a></li>
			<li><a href="<%=request.getContextPath()%>/view/signUp.jsp">로그인</a></li>
            <li><a href="">마이페이지</a></li>
            <li><a href="">주문조회</a></li>
		    <li><a href="<%=request.getContextPath()%>/inquiry/list1">고객센터</a></li>
          </ul>
        </div>
      </div>
      <div class="logo">
        <a href= "/Web/index.jsp"><img src="../img/logo.png" alt="logo" /></a>
      </div>
      <div class="headerbottom">
        <div class="category">
          <div class="categoryimgl"><img src="../img/menu.png" alt="menu" /></div>
          <span>카테고리</span>
          <div class="categorydetail">
          </div>
          <div class="categoryimgr">
            <img src="../img/downarrow.png" alt="arrow" />
          </div>
        </div>
        <nav>
          <ul>
            <li><a href="">베스트</a></li>
            <li><a href="">신상품</a></li>
            <li><a href="">지역특산물</a></li>
            <li><a href="">기획전</a></li>
            <li><a href="">푸드체험단</a></li>
            <li><a href="">상품후기</a></li>
          </ul>
        </nav>
        <div class="finder">
          <form action="">
            <fieldset>
              <input type="search" placeholder="충남의 건강한 쇼핑몰 농사랑!" />
              <img src="../img/search1.png" alt="search" />
            </fieldset>
          </form>
        </div>
      </div>
    </header>
    <div class="signup-wrap">
	    <h2 class="signup-title">회원가입</h2>
	    <form method="post" action ="${pageContext.request.contextPath}/signup" class="signup-form">
	      <table class="signup-table">
	        <tr>
	          <th><span class="required">*</span> 이름</th>
	          <td>
	            <input type="text" name="userName" required />
	          </td>
	        </tr>
	        <tr>
	          <th><span class="required">*</span> 아이디</th>
	          <td class="id-cell">
	            <input type="text" name="userId" required />
	            <button type="button" class="duplicate-btn">중복확인</button>
	          </td>
	        </tr>
	        <tr>
	          <th><span class="required">*</span> 비밀번호</th>
	          <td>
	             <input type="password" name="password" required />
	          </td>
	        </tr>
	        <tr>
	          <th><span class="required">*</span> 비밀번호 확인</th>
	          <td>
	            <input type="password" name="passwordConfirm" required />
	          </td>
	        </tr>
	      </table>
	      <div class="submit-row">
	        <button type="submit" class="signup-submit-btn">회원가입</button>
	      </div>
	    </form>
    </div>

	<footer>
      <div class="subnav3">
        <ul>
          <li><a href="">농사랑소개</a></li>
          <li><a href="">충남오감</a></li>
          <li><a href="">이메일무단수집거부</a></li>
          <li><a href="">개인정보처리방침</a></li>
          <li><a href="">이용약관</a></li>
          <li><a href="">입점신청</a></li>
          <li><a href="">푸드체험관</a></li>
          <li><a href="">고객센터</a></li>
        </ul>
      </div>
      <div class="footerdetail">
        <div class="footerlogo">
          <img src="../img/footerlogo.png" alt="" />
        </div>
        <div class="footerwrite">
          <span>(재)충남경제진흥원</span><br />
          <span>호스팅제공자 (주)커넥트웨이브 | 이메일 cepa5678@naver.com</span
          ><br /><span
            >원장 김찬배 사업자등록번호 312-82-06581 [사업자정보확인]
            통신판매업신고번호 2022-충남아산-0280호</span
          ><br />
          <span
            >주소 충청남도 예산군 삽교읍 의향로 359 고객센터 070-5217-9477</span
          ><br />
          <span
            >충남농사랑은 충청남도의 위탁으로 충남경제진흥원에서 관리하는
            쇼핑몰입니다.</span
          ><br /><br /><span
            >copyright (C) 2014 by nongsarang. all rights reserved.
          </span>
        </div>
        <div class="contact">
          <h4>고객행복센터 070-5217-9477</h4>
          <span>평일 10:00 ~ 17:00 / 점심시간 12:00 ~ 13:00</span><br /><span
            >주말, 공휴일 휴무</span
          ><br />
          <div class="kakao">
            <img src="../img/kakao.png" alt="" />
            <a href="">교환환불문의</a>
          </div>
          <br />
          <br />
          <div class="sns">
            <div class="snsicon">
              <a href=""><img src="../img/instagram.png" alt="" /></a>
            </div>
            <div class="snsicon">
              <a href=""><img src="../img/facebook.png" alt="" /></a>
            </div>
            <div class="snsicon">
              <a href=""><img src="../img/x.png" alt="" /></a>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <script>

	    document.querySelector('.duplicate-btn').addEventListener('click', function() {
	        const userId = document.querySelector('input[name="userId"]').value;
	
	        if (!userId) {
	            alert('아이디를 입력해주세요.');
	            return;
	        }
	
	        fetch('/Web/checkId?userId=' + encodeURIComponent(userId))
	            .then(response => response.text())
	            .then(result => {
	                if (result === 'duplicate') {
	                    alert('이미 사용 중인 아이디입니다.');
	                } else {
	                    alert('사용 가능한 아이디입니다.');
	                }
	            })
	            .catch(error => {
	                console.error('오류 발생:', error);
	            });
	    });
	    
        document.querySelector('input[name="passwordConfirm"]').addEventListener('blur', function() {
            const password = document.querySelector('input[name="password"]').value;
            const passwordConfirm = this.value;
            
            if (passwordConfirm && password !== passwordConfirm) {
                this.style.borderColor = '#ff4757';

            } else if (passwordConfirm) {
                this.style.borderColor = '#2ed573';
            }
        });
    </script>
</body>
</html>