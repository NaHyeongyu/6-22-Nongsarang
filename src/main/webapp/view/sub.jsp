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
    <link rel="stylesheet" href="../css/sub.css" />
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
          <li><a href="/signin.jsp">로그인</a></li>
          <li><a href="/signUp.jsp">회원가입</a></li>
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
    <div class="details">
      <div class="pagelocation">
        <a href=""><img src="../img/home.png" alt="" /></a>
        <span>></span>
        <a href="">반찬/장류</a>
        <span>></span>
        <a href="">반찬류</a>
      </div>
      <div class="productinfo">
        <div class="productpic">
          <img src="../img/productdetail.jpg" alt="" class="mainpic" />
          <img src="../img/productdetail.jpg" alt="" class="subpic" />
        </div>
        <div class="productselect">
          <h3>
            (주식회사 네이피)<br />픽찌표고 버섯 장아찌 피클 130g(선택: 간장,
            고추냉이, 고추장, 된장)
          </h3>
          <hr />
          <div class="productselectdetail">
            <table>
              <tr>
                <td>판매가격</td>
                <td><h1>4,800원</h1></td>
              </tr>
              <tr class="nomalinfo">
                <td><span class="grey">상품코드</span></td>
                <td><span>006003000034</span></td>
              </tr>
              <tr class="nomalinfo">
                <td><span class="grey">원산지</span></td>
                <td><span>상세페이지참조</span></td>
              </tr>
              <tr class="nomalinfo">
                <td><span class="grey">배송비</span></td>
                <td><span>배송조건 : (무료)</span></td>
              </tr>
              <tr class="nomalinfo">
                <td><span class="grey">지역별 배송비</span></td>
                <td><span>제주, 울릉군, 백령면 : 5,000원</span></td>
              </tr>
              <tr class="nomalinfo">
                <td><span class="grey">제조원</span></td>
                <td><span>NS1014</span></td>
              </tr>
              <tr class="nomalinfo">
                <td><span class="grey">입력해주세요.</span></td>
                <td>
                  <select>
                    <option>옵션 선택</option>
                    <option>픽찌 표고 버섯 장아찌 피클 130g - 간장</option>
                    <option>픽찌 표고 버섯 장아찌 피클 130g - 고추냉이</option>
                    <option>픽찌 표고 버섯 장아찌 피클 130g - 고추장</option>
                    <option>픽찌 표고 버섯 장아찌 피클 130g - 된장</option>
                  </select>
                </td>
              </tr>
            </table>
          </div>
          <div class="price">
            <span>총 상품 금액</span><b class="efect">0원</b>
          </div>
          <div class="buttones">
            <button id="nomalbutton">찜하기</button>
            <button id="nomalbutton">장바구니</button>
            <button id="paynow">바로구매</button>
          </div>
        </div>
      </div>
      <div class="infoetc">
        <div class="checkriview">
          <span
            >상품을 구매하신 고객님들의 <a href="">솔직한 후기 2건</a>을
            확인해보세요.</span
          >
          <div class="snslink">
            <a href=""><img src="../img/facebook.png" alt="" /></a>
            <a href=""><img src="../img/x.png" alt="" /></a>
          </div>
        </div>
        <div class="kakaopay">
          <img src="../img/kakaopay.png" alt="" />
        </div>
      </div>
      <div class="smartrecomand">
        <div class="smarttitle">
          <h3>스마트 추천상품</h3>
          <span>이 상품을 구매한 분들이 아래 상품도 함께 주문하셨습니다.</span>
        </div>
        <div class="smartdetail">
          <div class="box6">
            <img src="../img/container6-1.jpg" alt="" />
            <h3>(청양군지역활성화재단)배가원 장아찌 7종</h3>
            <h5>상품후기 <span>(26)</span></h5>
            <h4>10,400원</h4>
          </div>
          <div class="box6">
            <img src="../img/container6-2.jpg" alt="" />
            <h3>(서산뜬돌표고농원주식회사)뜬돌 표고장아찌..</h3>
            <h5>상품후기 <span>(0)</span></h5>
            <h4>9,400원</h4>
          </div>
          <div class="box6">
            <img src="../img/container6-3.jpg" alt="" />
            <h3>(서산뜬돌표고농원주식회사)뜬돌표고버섯장...</h3>
            <h5>상품후기 <span>(0)</span></h5>
            <h4>12,000원</h4>
          </div>
          <div class="box6">
            <img src="../img/container6-4.jpg" alt="" />
            <h3>(식약농원)광주리2호(뱅어포60g * 6봉 청태4..</h3>
            <h5>상품후기 <span>(26)</span></h5>
            <h4>59,300원</h4>
          </div>
          <div class="box6">
            <img src="../img/container6-5.jpg" alt="" />
            <h3>(식약동원)청태, 뱅어포(만나1호, 만나2호)</h3>
            <h5>상품후기 <span>(12)</span></h5>
            <h4>36,000원</h4>
          </div>
        </div>
      </div>
      <div class="productbottom">
        <div class="infonav">
          <ul>
            <li class="infonavfirst"><a href="">상품상세정보</a></li>
            <li><a href="">배송/교환/환불</a></li>
            <li><a href="">관련상품</a></li>
            <li><a href="">상품문의(0)</a></li>
            <li class="infonavlast"><a href="">상품후기(2)</a></li>
          </ul>
        </div>
        <div class="productimg">
          <img src="../img/productimg1-1.jpg" alt="" />
        </div>
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