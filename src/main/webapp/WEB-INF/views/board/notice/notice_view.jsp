<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
            <div class="noticebody">
              <div class="noticeSubTitle">
                <h2>공지사항</h2>
              </div>
              <div class="board_view">
                <table>
                  <form id="reply" name="reply" action="/reply" method="post">
                    <input type="hidden" name="bId" value = ${content_view.bId} />
                    <tbody>
                      <tr class="writer_viewTh">
                        <th>
                          <span><img src="/resources/images/level/${userinfo.level}.png" alt="" />${content_view.bNick}</span>
                        </th>
                        <th>
                          <span>날짜 : ${content_view.dateInserted}</span>
                        </th>
                        <th>
                          <span>조회: ${content_view.bHit}</span>
                        </th>
                      </tr>
                      <tr>
                        <td colspan="3">
                          <div class="board_content_view">
                            <h1>${content_view.bTitle}</h1>
                            <div class="board_content">
                              ${content_view.bContent}
                            </div>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="view_btn">
                  <c:if test="${userinfo.nick == content_view.bNick}">
                    <img src="/resources/images/board/btn_modify.gif" onclick="notice_reply()">
                    <img src="/resources/images/board/btn_delete.gif" onclick="notice_delete()">
                  </c:if>
                  <img src="/resources/images/board/btn_list.gif" onclick="notice_list()"alt="" />
                  <img src="/resources/images/board/btn_write.gif" onclick="notice_write()" alt="">
                </div>
              </div>
            </form>
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
      function join_modify() {
      	 $('.main_content').load("/join_modify");
        }
      function notice_delete() {
    	  alert(reply.bId.value);
    	  location.href = "/delete?bId=" + reply.bId.value;
      }
      function notice_reply() {
    	  $('#reply').submit();
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
