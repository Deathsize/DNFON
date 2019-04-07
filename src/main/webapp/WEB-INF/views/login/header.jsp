<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="rightlink">
  <div class="item">
    <a class="ui item" href="javascript:void(0);" onclick="join_modify()"><sec:authentication property="principal.username"/></a>
    <a class="ui item" href=/customLogout">로그아웃</a>
  </div>
</div>
