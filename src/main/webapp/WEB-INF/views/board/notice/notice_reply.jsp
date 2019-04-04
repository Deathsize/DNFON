<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <title>DNF</title>
    <meta charset="utf-8">
    <script
      src="https://code.jquery.com/jquery-3.3.1.min.js"
      integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
      crossorigin="anonymous"></script>
    <spring:url value = "/resources/css/style.css" var="style" />
    <spring:url value = "/resources/css/semantic/semantic.css" var="semantic" />
    <spring:url value = "/resources/css/semantic/semantic.js" var="semanticjs" />
    <spring:url value = "/resources/smarteditor/js/service/HuskyEZCreator.js" var="smarteditor" />
    <spring:url value = "/resources/JS/master.js" var="masterjs" />
    <link rel="stylesheet" type="text/css" href = "${style}" />
    <link rel="stylesheet" type="text/css" href = "${semantic}" />
    <script src="${semanticjs}" charset="utf-8"></script>
    <script src="${smarteditor}" charset="utf-8"></script>
    <script src="${masterjs}" charset="utf-8"></script>
  </head>
  <body>
    <div id="wrap">
      <header>
        <div class="header">
          <div id="guide">
            <div class="leftlink">
              <label id="maker">blog.naver.com/fb_lua</label>
            </div>
          	<c:if test="${empty userinfo}">
          		<%@ include file='/WEB-INF/views/main/header.jsp' %>
          	</c:if>
          	<c:if test="${! empty userinfo}">
          		<%@ include file='/WEB-INF/views/login/header.jsp' %>
          	</c:if>
          </div>
          <div id="logo"></div>
          <div id ="main_ad">
            <img src="/resources/images/advertisement/top_1.jpg" alt="">
          </div>
        </div>
      </header>
        <nav id="top_menu">
          <div class="ui inverted menu">
            <a class="blue item" href="http://192.168.35.166:8080">Home</a>
            <a class="blue item" id="main_nav1">스킬트리</a>
            <a class="blue item" id="main_nav2">아이템 셋팅</a>
            <a class="blue item">캐릭별 마법부여</a>
            <a class="blue item">레이드 및 공략</a>
            <a class="blue item">무기 스킨</a>
          </div>
        </nav>
        <section class="content">
          <nav>
          	<c:if test="${empty userinfo}">
          		<%@ include file='/WEB-INF/views/main/nav.jsp' %>
          	</c:if>
          	<c:if test="${! empty userinfo}">
          		<%@ include file='/WEB-INF/views/login/nav.jsp' %>
          	</c:if>
            <div class="side_banner">
              <img src="/resources/images/advertisement/side_1.jpg" alt="">
              <img src="/resources/images/advertisement/board_1.jpg" alt="">
              <img src="/resources/images/advertisement/board_2.jpg" alt="">
            </div>
            <div class="ui vertical menu">
              <div class="item">
                <div class="nav_header">정보모음</div>
                <div class="menu">
                  <a class="item" id="notice">공지사항</a>
                  <a class="item">리포터뉴스</a>
                  <a class="item">레이드공략</a>
                  <a class="item">Best팁</a>
                  <a class="item">Best게시물</a>
                </div>
              </div>
            </div>
            <div class="bottom_nav">
              <img src="/resources/images/advertisement/bottom_1.jpg" alt="1">
            </div>
          </nav>
          <article class="main_content">

<c:if test="${userinfo.id == null}">
	<script>
		alert("로그인 하신 후에 사용해주세요.");
		location.href="/login";
	</script>
</c:if>
<div class="noticebody">
  <div class="noticeSubTitle">
    <h2>공지사항</h2>
  </div>
  <form action="/modify" method="post">
    <input type="hidden" name="bId" value=${reply_view.bId} />
    <input type="hidden" name="bNick" value=${reply_view.bNick} />
    <input type="hidden" name="bHit" value=${reply_view.bHit} />
	  <input type="hidden" name="bGroup" value=${reply_view.bGroup} />
	  <input type="hidden" name="bStep" value=${reply_view.bStep} />
	  <input type="hidden" name="bIndent" value=${reply_view.bIndent} />
    <table>
      <thead>
        <tr>
          <td class="recw_common">제목</td>
          <td colspan="3" class="colw_subject"><input type="text" id="bTitle" name="bTitle" value=${reply_view.bTitle}></td>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="4" style="text-align: left;" class="recw_content">
            <textarea id="bContent" name="bContent" rows="20" cols="104" >${reply_view.bTitle}</textarea>
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

          </article>
          <aside>
            <div class="Ad_buttom">
              <img src="/resources/images/AD/AD_1.png" alt="">
            </div>
          </aside>
        </section>
        <footer>
          <div class="ui inverted menu">
            <a class="blue item" href="#">회사소개</a>
            <a class="blue item">제휴문의</a>
            <a class="blue item">광고문의</a>
            <a class="blue item">이용약관</a>
            <a class="blue item">개인정보처리방침</a>
            <a class="blue item">청소년보호정책</a>
            <a class="blue item">찾아오시는길</a>
          </div>
        </footer>
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
  elPlaceHolder: "bContent",
  sSkinURI: "/resources/smarteditor/SmartEditor2Skin.html",
  fCreator: "createSEditor2"
});

//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
	var btn = document.getElementById('writebtn');
	$('#writebtn').on('click', function(event) {
		if($("#bTitle").val().length == 0) {
			alert("제목을 입력해주세요.")
			return false;
		}
		submitContents(btn);
	});
//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.

function submitContents(elClickedObj) {

   // 에디터의 내용이 textarea에 적용된다.

   oEditors.getById["bContent"].exec("UPDATE_CONTENTS_FIELD", []);



   // 에디터의 내용에 대한 값 검증은 이곳에서

   // document.getElementById("ir1").value를 이용해서 처리한다.



   try {
		alert("성공");
       elClickedObj.form.submit();

   } catch(e) {}}
</script>
