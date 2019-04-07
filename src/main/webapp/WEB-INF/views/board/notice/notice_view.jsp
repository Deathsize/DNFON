<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


            <div class="noticebody">
              <div class="noticeSubTitle">
                <h2>공지사항</h2>
              </div>
              <div class="board_view">
                <table>
                  <form id="reply" name="reply" action="/reply" method="post">
                    <input type="hidden" id="bno" name="bno" value = ${content_view.bno} />
                    <tbody>
                      <tr class="writer_viewTh">
                        <th>
                          <span>${content_view.nick}</span>
                        </th>
                        <th>
                          <span>날짜 : <fmt:formatDate pattern="yyyy-MM-dd" value="${content_view.updateDate}" /></span>
                        </th>
                        <th>
                          <span>조회: ${content_view.hit}</span>
                        </th>
                      </tr>
                      <tr>
                        <td colspan="3">
                          <div class="board_content_view">
                            <h1>${content_view.title}</h1>
                            <div class="board_content">
                              ${content_view.content}
                            </div>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="view_btn">
          		<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal.member.userNick" var="userNick"/> 
               		<c:if test="${userNick == content_view.nick}">
                  		<img src="/resources/images/board/btn_modify.gif" id="modify">
                  		<img src="/resources/images/board/btn_delete.gif" id="delete">
					</c:if>
				</sec:authorize>
          			<img src="/resources/images/board/btn_list.gif" id="notice_list"alt="" />
                	<img src="/resources/images/board/btn_write.gif" id="notice_write" alt="">
                </div>
              </div>
            </form>
          
      <script type="text/javascript">
      	$('#modify').on('click',function(event){ 
      		event.preventDefault();
      		alert($('#bno').val());
      		$('.main_content').load("/modify?bno=" + $("#bno").val());
      	});
      	$("#delete").on('click',function(event){
      		event.preventDefault();
      		$('.main_content').load("/remove?bno=" + $("#bno").val());
      	});
      	$("#notice_list").on('click',function(event){
      		event.preventDefault();
      		$('.main_content').load("/notice");
      	});
       	$("#notice_write").on('click',function(event){
      		event.preventDefault();
      		$('.main_content').load("/notice_write");
      	});
      	
     </script>
