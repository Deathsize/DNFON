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
        <td>${dto.bno}</td>
        <td>${dto.nick}</td>
        <td><a class="move" href="${dto.bno}">${dto.title}</a></td>
        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${dto.updateDate}" /></td>
        <td>${dto.hit}</td>
      </tr>
    </c:forEach>
  </tbody>
</table>
<div id="btns_list">
  <img src="/resources/images/board/btn_write.gif" id="notice_write" alt="">
</div>
<script>
$('#notice_write').on('click',function(event) {
	  $('.main_content').load("/notice_write");
});
$(".move").on("click",function(e) {
	e.preventDefault();
   $('.main_content').load("/content_view?bno=" + $(this).attr("href"));
 });
</script>
