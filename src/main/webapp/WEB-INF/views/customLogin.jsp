<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <title>DNF</title>
    <meta charset="utf-8">
    <script
      src="https://code.jquery.com/jquery-3.3.1.min.js"
      integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
      crossorigin="anonymous"></script>
    <spring:url value = "/resources/css/login.css" var="login" />
    <spring:url value = "/resources/css/semantic/semantic.css" var="semantic" />
    <spring:url value = "/resources/css/semantic/semantic.js" var="semanticjs" />
    <spring:url value = "/resources/JS/master.js" var="masterjs" />
    <link rel="stylesheet" type="text/css" href = "${login}" />
    <link rel="stylesheet" type="text/css" href = "${semantic}" />
    <script src="${semanticjs}" charset="utf-8"></script>
    <script src="${masterjs}" charset="utf-8"></script>
  </head>
  <body>
    <div id="wrap">
      <div class="headline"></div>
      <div class="memberlogin">
        <form id="loginForm" name="loginForm" action="/login" method="post">
        <input type="hidden"name="${_csrf.parameterName}"value="${_csrf.token}"/>
          <input type="hidden" name="" value="" />
          <fieldset>
            <div class="loginWrap">
              <p>
                <input type="text" name="username" maxlength="10" />
              </p>
              <p>
                <input type="password" name="password" maxlength="12" />
              </p>
              <p>
                <button class="ui primary button">로그인</button>
              </p>
            </div>
          </fieldset>
        </form>
        <div class="userMenu">
          <a href="join" id="join">회원가입</a>
          <a href="#" id="id_pw">아이디/비밀번호찾기</a>
        </div>
      </div>
      <div class="footer">
        <address>copyright(c) blog.naver.com/fb_lua Falcon</address>
      </div>
    </div>
  </body>
</html>
