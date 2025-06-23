<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.na.inquiry.InquiryDAO, com.na.inquiry.InquiryDTO" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
  request.setCharacterEncoding("UTF-8");
  String idParam = request.getParameter("id");
  int inquiryId = Integer.parseInt(idParam);
  InquiryDAO dao = new InquiryDAO();
  InquiryDTO dto = dao.getById(inquiryId);

  String sessionId = (String) session.getAttribute("userId");
  boolean isWriter = sessionId != null && sessionId.equals(dto.getWriter());
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>1:1 문의 상세보기</title>
  <link rel="stylesheet" href="../css/reset.css">
  <link rel="stylesheet" href="../css/common.css">
  <link rel="stylesheet" href="../css/inquiryView.css">
  <script src="<%=request.getContextPath()%>/js/header.js"></script>
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
    <a href= "/Web/index.jsp"><img src="../img/logo.png" alt="logo" /></a>
  </div>
  <div class="headerbottom">
    <div class="category">
      <div class="categoryimgl"><img src="../img/menu.png" alt="menu" /></div>
      <span>카테고리</span>
      <div class="categorydetail"></div>
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
<div class="inquiry-container">
  <h2 class="inquiry-title">문의 상세보기</h2>
  <table class="inquiry-table">
    <tr>
      <th>제목</th>
      <td><%= dto.getTitle() %></td>
    </tr>
    <tr>
      <th>작성자</th>
      <td><%= dto.getWriter() %></td>
    </tr>
    <tr>
      <th>작성일</th>
      <td><%= sdf.format(dto.getCreatedAt()) %></td>
    </tr>
    <tr>
      <th>내용</th>
      <td class="content"><%= dto.getContent().replace("\n", "<br>") %></td>
    </tr>
    <tr>
      <th>첨부파일</th>
      <td>
        <%
          if (dto.getFilename() != null && !dto.getFilename().isEmpty()) {
        %>
            <a href="<%= request.getContextPath() + "/upload/" + dto.getFilename() %>" download="<%= dto.getOriginalName() %>"><%= dto.getOriginalName() %></a>
        <%
          } else {
            out.print("첨부파일 없음");
          }
        %>
      </td>
    </tr>
  </table>

<div class="form-buttons">
  <a href="<%=request.getContextPath()%>/inquiry/list1" class="list-btn">목록</a>

  <% if (isWriter) { %>
	<a href="<%= request.getContextPath() %>/inquiry/edit?id=<%= dto.getId() %>" class="submit-btn">수정</a>
    <form  action="<%= request.getContextPath() %>/inquiryDelete" method="post"style="display:inline;" onsubmit="return confirm('정말 삭제하시겠습니까?');">
      <input type="hidden" name="id" value="<%= dto.getId() %>">
      <button type="submit" class="delete-btn">삭제</button>
    </form>
  <% } %>
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
      <span>호스팅제공자 (주)커넥트웨이브 | 이메일 cepa5678@naver.com</span><br />
      <span>원장 김찬배 사업자등록번호 312-82-06581 [사업자정보확인] 통신판매업신고번호 2022-충남아산-0280호</span><br />
      <span>주소 충청남도 예산군 삽교읍 의향로 359 고객센터 070-5217-9477</span><br />
      <span>충남농사랑은 충청남도의 위탁으로 충남경제진흥원에서 관리하는 쇼핑몰입니다.</span><br /><br />
      <span>copyright (C) 2014 by nongsarang. all rights reserved.</span>
    </div>
    <div class="contact">
      <h4>고객행복센터 070-5217-9477</h4>
      <span>평일 10:00 ~ 17:00 / 점심시간 12:00 ~ 13:00</span><br />
      <span>주말, 공휴일 휴무</span><br />
      <div class="kakao">
        <img src="../img/kakao.png" alt="" />
        <a href="">교환환불문의</a>
      </div>
      <br /><br />
      <div class="sns">
        <div class="snsicon"><a href=""><img src="../img/instagram.png" alt="" /></a></div>
        <div class="snsicon"><a href=""><img src="../img/facebook.png" alt="" /></a></div>
        <div class="snsicon"><a href=""><img src="../img/x.png" alt="" /></a></div>
      </div>
    </div>
  </div>
</footer>
</body>
</html>