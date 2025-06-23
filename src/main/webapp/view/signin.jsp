<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>[농사랑] 충남 농특산물 온라인 직거래 장터</title>
    <link rel="stylesheet" href="../css/reset.css" />
    <link rel="stylesheet" href="../css/common.css" />
    <link rel="stylesheet" href="../css/signIn.css" />
    <script src="${pageContext.request.contextPath}/js/signin.js"></script>
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
            <li><a href="signin.jsp">로그인</a></li>
            <li><a href="signUp.jsp">회원가입</a></li>
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
	<div class="loginAll">
        <section class="login-area">
            <div class="login-container">
                <h2 class="login-title">로그인</h2>
             	<%
				String error = request.getParameter("error");
				String message = null;
				
				if ("no_id".equals(error)) {
				    message = "존재하지 않는 아이디입니다.";
				} else if ("wrong_pw".equals(error)) {
				    message = "비밀번호가 일치하지 않습니다.";
				} else if ("error".equals(error)) {
				    message = "알 수 없는 오류가 발생했습니다.";
				}
				%>
				
				<% if (message != null) { %>
				<p style="color:red;"><%= message %></p>
				<% } %>
                <form method="post" action = "${pageContext.request.contextPath}/signin" class="form">
                    <div class="login-items">
                        <div class="input-item">
                            <input type="text" name="userId" placeholder="아이디" required>
                        </div>
                        <div class="input-item">
                            <input type="password" name="password" placeholder="비밀번호" required>
                        </div>
                        <button type="submit" class="login-btn">로그인</button>
                    </div>
                    <div class="login-options">
                        <div class="find-links">
                            <a href="#" class="find-link">아이디 찾기</a>
                            <span class="divider">/</span>
                            <a href="#" class="find-link">임시비밀번호 받기</a>
                        </div>
                    </div>
                </form>
            </div>
        </section>
      
    </div>
      <div class = "go-signIn">
     	 <div> 
      		<h2 class = "tit">농사랑 회원가입</h2>
            <span class = "disc">농사랑회원이 되시면 더 많은 혜택과 이벤트에 참여하실 수 있습니다.</span>
           </div>
           <div>
           <a href = "signUp.jsp"><button class = "signIn-btn">농사랑 회원가입</button></a> 
           </div>
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
  </body>
</html>