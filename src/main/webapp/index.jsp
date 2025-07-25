<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="img/logo.png " type="image/x-icon" />
    <title>[농사랑] 충남 농특산물 온라인 직거래 장터</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/common.css" />
    <link rel="stylesheet" href="css/main.css" />
	<script src="<%=request.getContextPath()%>/js/header.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.7.0.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/slider.js"></script>


    <script src=""></script>
    <script src="js/"></script>

  </head>
  <body>
    <header>
      <div class="headertop">
        <div class="topmenu1">
          <div class="topmenu1left">
            <img class="topbutton" src="img/document.png" alt="document" />
            <a href="">공지사항 </a>
          </div>
          <div class="topmenu1right">
            <img src="img/downbotton.png" alt="downbutton" />
            <img src="img/upbutton.png" alt="upbotton" />
            <a href="">[2025/3/25]충남고향사랑기부제 답례품 후기 이벤트</a>
          </div>
        </div>
        <div class="topmenu2">
     	<ul>
		<%
		  String userId = (String) session.getAttribute("userId");
		  if (userId == null) {
		%>
			<li><a href="<%=request.getContextPath()%>/view/signin.jsp">로그인</a></li>
			<li><a href="<%=request.getContextPath()%>/view/signUp.jsp">회원가입</a></li>
		<%
		  } else {
		%>
           <li><a href="<%=request.getContextPath()%>/signout" onclick = " return confirmLogout();">로그아웃</a></li>
		<%
		  }
		%>
		  <li><a href="">마이페이지</a></li>
		  <li><a href="">주문조회</a></li>
		  <li><a href="<%=request.getContextPath()%>/inquiry/list1">고객센터</a></li>
		</ul>
        </div>
      </div>
      <div class="logo">
        <img src="img/logo.png" alt="logo" />
      </div>
      <div class="headerbottom">
        <div class="category">
          <div class="categoryimgl"><img src="img/menu.png" alt="menu" /></div>
          <span>카테고리</span>
          <div class="categorydetail">
         
          </div>
          <div class="categoryimgr">
            <img src="img/downarrow.png" alt="arrow" />
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
              <img src="img/search1.png" alt="search" />
            </fieldset>
          </form>
        </div>
      </div>
    </header>
    <div id="slider">
      <div>
        <img src="img/slider.jpg" alt="" class="banner" />
        <img src="img/banner2.jpg" alt="" class="banner" />
        <img src="img/banner3.jpg" alt="" class="banner" />
        <img src="img/banner4.jpg" alt="" class="banner" />
        <img src="img/banner5.jpg" alt="" class="banner" />
        <img src="img/banner6.jpg" alt="" class="banner" />
      </div>
      <div class="subnav">
        <ul>
          <li><span>후기왕이벤트</span></li>
          <li><span>농사랑 신상품</span></li>
          <li><span>충남방문의 해</span></li>
          <li><span>농사랑 축산물</span></li>
          <li><span>농사랑 신선과일</span></li>
          <li><span>농사랑 가공식품</span></li>
        </ul>
      </div>
    </div>
    <div class="container1">
      <h3><span class="chungnam">충남</span>이런 상품도 팔아유~</h3>
      <div class="section1">
      
      </div>
    </div>
    <div class="container2">
      <h3>농사랑 3월 푸드체험단</h3>
      <div class="section2">
        <div class="box2">
          <a href="sub..html" target="_self"
            ><img src="img/container2-4.jpg" alt="" />
            <span class="text"
              >[행복드림용농조합법인] <br />
              <hr />
              <span class="textefect">전용목장 1A우유 대용량</span>
            </span>
            <div class="recoman"></div
          ></a>
        </div>
        <div class="box2">
          <a href="sub..html" target="_self"
            ><img src="img/container2-5.jpg" alt="" />
            <span class="text"
              >[약선푸드] <br />
              <hr />
              <span class="textefect">불향돼지오돌뼈 숯불구이</span>
            </span></a
          >
        </div>
        <div class="box2">
          <a href="sub..html" target="_self">
            <img src="img/container2-6.jpg" alt="" />
            <span class="text"
              >[하루니영어] <br />
              <hr />
              <span class="textefect">유기농아로니아 분말</span>
            </span></a
          >
        </div>
      </div>
    </div>
    <div class="container3">
      <h3>농사랑 이달의 신상품관</h3>
      <div class="section3">

      </div>
    </div>
    <div class="container4">
      <div class="reviewimg">
        <img src="img/review.png" alt="" />
      </div>
      <h3>푸드체험단 리뷰</h3>
      <div class="section4">
        <div class="box4">
          <img src="img/container4-1.jpg" alt="" />
          <a href=""><h2>특별한 맛이네요</h2></a>
          <a href=""
            ><h4>
              일단 맛있어요 버섯짱아찌라고 해서 어떤맛일까 궁금했는데 4가지
              종류별로 다 맛있네요.
            </h4></a
          >
          <div class="star">
            <ul>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
            </ul>
          </div>
        </div>
        <div class="box4">
          <img src="img/container3-1.jpg" alt="" />
          <a href=""><h2>몸애 정말 좋을거같아용</h2></a>
          <a href=""
            ><h4>
              유기농이여서 안심하고 먹을수도 있고 남녀노소 세대불문하고 즐기면서
              먹을 수 있을거 같아용
            </h4></a
          >
          <div class="star">
            <ul>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
            </ul>
          </div>
        </div>
        <div class="box4">
          <img src="img/container6-3.jpg  " alt="" />
          <a href=""><h2>맛과 건강을 모두 챙기는</h2></a>
          <a href=""
            ><h4>
              버섯짱아찌이지만 고기같은 식감과 오묘한 맛덕에 재밌게 먹고있어요.
            </h4></a
          >
          <div class="star">
            <ul>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
            </ul>
          </div>
        </div>
        <div class="box4">
          <img src="img/container6-4.jpg" alt="" />
          <a href=""><h2>역시 근본 김 입니다.</h2></a>
          <a href=""
            ><h4>
              어렸을떄 먹던 그 맛 그대로여서 먹으면서 감동했네요..ㅎ 짭조롬하니
              정말 맛있습니다.
            </h4></a
          >
          <div class="star">
            <ul>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
              <li><img src="img/star.png" alt="" /></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="container5">
      <h3>꾸준히 인기 많은 제품!</h3>
      <div class="subnav2">
        <div class="iconbox">
          <img src="img/subnav2-1.png" alt="" />
          <p>전체</p>
        </div>
        <div class="iconbox">
          <img src="img/subnav2-2.png" alt="" />
          <p>쌀/잡곡</p>
        </div>
        <div class="iconbox">
          <img src="img/subnav2-3.png" alt="" />
          <p>과일/채소</p>
        </div>
        <div class="iconbox">
          <img src="img/subnav2-4.png" alt="" />
          <p>축산물</p>
        </div>
        <div class="iconbox">
          <img src="img/subnav2-5.png" alt="" />
          <p>수산물</p>
        </div>
        <div class="iconbox">
          <img src="img/subnav2-6.png" alt="" />
          <p>반찬/장류</p>
        </div>
        <div class="iconbox">
          <img src="img/subnav2-7.png" alt="" />
          <p>가공식품</p>
        </div>
        <div class="iconbox">
          <img src="img/subnav2-8.png" alt="" />
          <p>건강식품</p>
        </div>
      </div>
      <div class="section5">

      </div>
      <div class="more">
        <a href="">더보기 ></a>
      </div>
    </div>
  </body>
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
        <img src="img/footerlogo.png" alt="" />
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
          <img src="img/kakao.png" alt="" />
          <a href="">교환환불문의</a>
        </div>
        <br />
        <br />
        <div class="sns">
          <div class="snsicon">
            <a href=""><img src="img/instagram.png" alt="" /></a>
          </div>
          <div class="snsicon">
            <a href=""><img src="img/facebook.png" alt="" /></a>
          </div>
          <div class="snsicon">
            <a href=""><img src="img/x.png" alt="" /></a>
          </div>
        </div>
      </div>
    </div>
  </footer>
</html>