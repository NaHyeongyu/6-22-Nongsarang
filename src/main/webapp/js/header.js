function confirmLogout() {
  return confirm("정말 로그아웃하시겠습니까?");
}

function goWrite(userId) {
  if (!userId || userId === "null") {
    alert("로그인이 필요합니다.");
  } else {
    window.location.href = "/Web/view/inquiryWrite.jsp"; 
  }
  return false;
}