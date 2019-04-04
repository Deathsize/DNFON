<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="cnt_main">
  <p class="cnt_Title"></p>
  <form name="modify" method="post">
    <div class="inp_wrap">
      <div class="inp_area">
        <p class="member_id">
          <span>회원아이디</span>
          <input type="text" name="userid" maxlength="10" value="${userinfo.id}" readonly>
        </p>
        <p class="member_pw">
          <span>비밀번호</span>
          <input type="text" name="userpw" maxlength="12" value="">
        </p>
      </div>
      <p class="enter">
        <a href="#">확인</a>
      </p>
    </div>
  </form>
</div>
