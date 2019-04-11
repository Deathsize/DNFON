<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="noticebody">
  <div class="noticeSubTitle">
    <h2>공지사항</h2>
  </div>
  <form id="noticeUp" action="/modify" method="post">
  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>          
    <input type="hidden" name="bno" value="${reply_view.bno}" />
    <input type="hidden" name="nick" value="${reply_view.nick}" />
    <input type="hidden" name="hit" value="${reply_view.hit}" />
    <table>
      <thead>
        <tr>
          <td class="recw_common">제목</td>
          <td colspan="3" class="colw_subject"><input type="text" id="title" name="title" value="${reply_view.title}" /></td>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="4" style="text-align: left;" class="recw_content">
            <textarea id="content" name="content" rows="20" cols="104" >${reply_view.content}</textarea>
          </td>
        </tr>
      </tbody>
    </table>
    <p>
      <input type="image" id="writebtn" src="/resources/images/board/btn_modify.gif" />
      <input type="image" src="/resources/images/board/btn_reset.gif" />
    </p>
  </form>
</div>
	
      <script type="text/javascript">
      function notice_reply() {
    	  $('.main_content').load("/reply");
      }
     function notice_write() {
    	$('.main_content').load("/notice_write");
     }
     function notice_list() {
     $('.main_content').load("/notice");
     }
     </script>
    </body>
  </html>
<script type="text/javascript">

var oEditors = [];

nhn.husky.EZCreator.createInIFrame({

  oAppRef: oEditors,
  elPlaceHolder: "content",
  sSkinURI: "/resources/smarteditor/SmartEditor2Skin.html",
  fCreator: "createSEditor2"
});

//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
	var btn = document.getElementById('writebtn');
	$('#writebtn').on('click', function(event) {
		event.preventDefault();
		if($("#title").val().length == 0) {
			alert("제목을 입력해주세요.")
			return false;
		}
		submitContents(btn);
	});
//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.

function submitContents(elClickedObj) {

   // 에디터의 내용이 textarea에 적용된다.

   oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);



   // 에디터의 내용에 대한 값 검증은 이곳에서

   // document.getElementById("ir1").value를 이용해서 처리한다.



   try {
	      $.ajax ({
	      	url : "update",
	      	type : "POST",
	        data : $('#noticeUp').serialize(),
	        success : function(data) {
	        	$('.main_content').load("/notice")
	          },
	          error : function() {
	          	alert("error");
	          }
	        });
   } catch(e) {}}
</script>
