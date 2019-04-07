<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="noticebody">
  <div class="noticeSubTitle">
    <h2>공지사항</h2>
  </div>
  <form id="notice_insert" method="post">
  
  	<input type="hidden" name="nick" value= '<sec:authentication property="principal.member.userNick"/>' />
    <table>
      <thead>
        <tr>
          <td class="recw_common">제목</td>
          <td colspan="3" class="colw_subject"><input type="text" id="title" name="title" maxlength="30" value=""></td>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="4" style="text-align: left;" class="recw_content">
            <textarea id="content" name="content" rows="20" cols="104"></textarea>
          </td>
        </tr>
      </tbody>
    </table>
    <p>
      <input type="image" id="writebtn" src="/resources/images/board/btn_write.gif" />
      <input type="image" src="/resources/images/board/btn_reset.gif" />
    </p>
  </form>
</div>
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
	      	url : "register",
	      	type : "POST",
	        data : $('#notice_insert').serialize(),
	        success : function(data) {
	        	$('.main_content').load("/notice")
	          },
	          error : function() {
	          	alert("error");
	          }
	        });
   } catch(e) {}}
</script>
