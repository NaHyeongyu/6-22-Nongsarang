document.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector(".form");
  const idInput = document.querySelector("input[name='userId']");
  const pwInput = document.querySelector("input[name='password']");

  form.addEventListener("submit", function (e) {
    const id = idInput.value.trim();
    const pw = pwInput.value.trim();

    if (!id) {
      alert("아이디를 입력해주세요.");
      idInput.focus();
      e.preventDefault();
      return;
    }

    if (!pw) {
      alert("비밀번호를 입력해주세요.");
      pwInput.focus();
      e.preventDefault();
    }
  });
});