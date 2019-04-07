<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
   
<div class="ui form">
  <div class="inline field">
    <form class="login" action="/login" method="post">
      <input type="text" name="username" maxlength="10" placeholder="ID">
      <input type="password" name="password" maxlength="12" placeholder="Password">
      <input type="image" src="/resources/images/login/login.jpg" id="loginbtn">
    </form>
  </div>
</div>
<div class="loginTool">
  <a href="/join">회원가입</a> |
  <a href="#">아이디 / 비번찾기</a>
</div>
