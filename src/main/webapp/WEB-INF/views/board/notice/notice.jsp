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
  <tbody id="list_empty">
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
<div class="paging">
  <div class="paging left">
    <c:if test="${pageMaker.prev}">
      <div class="paginate_button previous"><a
        href="${pageMaker.startPage -1}">Previous</a></li>
      </div>
    </c:if>

    <c:forEach var="num" begin="${pageMaker.startPage}"
      end="${pageMaker.endPage}">
      <div class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""} ">
        <a href="${num}">${num}</a>
      </div>
    </c:forEach>

    <c:if test="${pageMaker.next}">
      <div class="paginate_button next"><a
        href="${pageMaker.endPage +1 }">Next</a></li>
    </c:if>
    </div>
    <div id="btns_list">
      <img src="/resources/images/board/btn_write.gif" id="notice_write" alt="" />
    </div>
</div>
<form id='actionForm' action="/notice" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
			</form>
<script>
$('#notice_write').on('click',function(event) {
	  $('.main_content').load("/notice_write");
});
$(".move").on("click",function(e) {
	e.preventDefault();
   $('.main_content').load("/content_view?bno=" + $(this).attr("href"));
 });

 var actionForm = $("#actionForm");
 $(".paginate_button a").on("click",function(e) {
   e.preventDefault();
   console.log('click');
   actionForm.find("input[name='pageNum']").val($(this).attr("href"));
   $.ajax ({
       url : "notice",
       type : "Get",
       data : $('#actionForm').serialize(),
       success : function(data) {
    	 $('.main_content').html(data);
       },
         error : function() {
           alert("error");
         }
       });
     });
</script>
