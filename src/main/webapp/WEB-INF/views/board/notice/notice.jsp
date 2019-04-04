<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<table class="ui green table">
  <thead>
    <tr>
      <th>번호</th>
      <th>닉네임</th>
      <th class="title_size">제목</th>
      <th>날짜</th>
      <th>조회</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${list}" var="dto">
      <tr>
        <td>${dto.bId}</td>
        <td>${dto.bNick}</td>
        <td><c:forEach begin="1" end="${dto.bIndent}">-</c:forEach>
        <a href="content_view?bId=${dto.bId}">${dto.bTitle}</a></td>
        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${dto.dateInserted}" /></td>
        <td>${dto.bHit}</td>
      </tr>
    </c:forEach>
  </tbody>
</table>
<div id="btns_list">
  <img src="/resources/images/board/btn_write.gif" onclick="notice_write()" alt="">
</div>
