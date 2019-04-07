<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="user_form">
  <strong>아이디</strong><sec:authentication property="principal.username"/><br />
  <div class="level">
    <strong>닉네임</strong>
    <img src="/resources/images/level/<sec:authentication property="principal.member.userLevel"/>.png" alt="">

    <span><sec:authentication property="principal.member.userNick"/></span> <br />
    <strong>포인트</strong><sec:authentication property="principal.member.userPoint"/><br />
  </div>
  <div class="user_Tool">
  	<a href="javascript:void(0);" onclick="join_modify()"> 정보수정 </a> |
  	<a href="/customLogout"> 로그아웃 </a>
  </div>
</div>

