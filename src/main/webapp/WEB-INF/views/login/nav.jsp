<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="user_form">
  <strong>아이디</strong>${userinfo.id}<br />
  <div class="level">
    <strong>닉네임</strong>
    <img src="/resources/images/level/${userinfo.level}.png" alt="">
    <span>${userinfo.nick}</span> <br />
    <strong>포인트</strong>${userinfo.point} <br />
  </div>
  <div class="user_Tool">
  	<a href="javascript:void(0);" onclick="join_modify()"> 정보수정 </a> |
  	<a href="/logout"> 로그아웃 </a>
  </div>
</div>

