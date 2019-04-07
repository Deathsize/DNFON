<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
            <sec:authorize access="isAnonymous()">
          		<%@ include file='/WEB-INF/views/main/header.jsp' %>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<%@ include file='/WEB-INF/views/login/header.jsp' %>
			</sec:authorize>
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
          <sec:authorize access="isAnonymous()">
          	<%@ include file='/WEB-INF/views/main/nav.jsp' %>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<%@ include file='/WEB-INF/views/login/nav.jsp' %>
			</sec:authorize>
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
            <img src="/resources/images/Article/article_0.jpg" alt="main_ad0" />
            <div class="Main_Ad">
              <img src="/resources/images/Article/article_1.jpg" alt="main_ad1"usemap="#ImageMap1" />
              <map name="#ImageMap1">
                <area shape="rect" coords="1,1,332,129" href="https://www.naver.com" alt="" onfocus="blur()" />
                <area shape="rect" coords="1,131,332,259" href="https://www.google.com" alt="" onfocus="blur()" />
                <area shape="rect" coords="1,261,332,389" href="https://www.daum.net" alt="" onfocus="blur()" />
              </map>
              <div class="Main_side">
                <h3>던파 팬아트/카툰 공작소</h3>
                <div class="screenImg">
                  <img src="/resources/images/Article/article_2.jpg" alt="" />
                  <img src="/resources/images/Article/article_3.jpg" alt="" />
                </div>
              </div>
              <div class="bBest">
                <h3 id="best_line">베스트 게시물 모음</h3>
                <img id="best_img" src="/resources/images/Article/article_5.jpg" alt="" />
              </div>
            </div>
            <div class="hoper">
              <img src="/resources/images/Article/article_6.png" alt="">
            </div>
            <div class="bg">
              <ul class="update_raid_nav_wrap">
                <li id="update_raid_nav1">
                  <img src="/resources/images/info/nav2_1.gif" alt="">
                </li>
                <li id="update_raid_nav2">
                </li>
              </ul>
              <div class="bg_side">
                <ul>
                  <li></li>
                </ul>
              </div>
            </div>
            <table class="ui black table">
              <thead>
                <tr>
                  <th colspan="8">직업별 전문 포럼</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td id="job_nav1" class = "over">귀검사(남)</td>
                  <td id="job_nav3">격투가(남)</td>
                  <td id="job_nav5">거너(남)</td>
                  <td id="job_nav7">마법사(남)</td>
                  <td id="job_nav9">프리스트(남)</td>
                  <td id="job_nav11">도적</td>
                  <td id="job_nav13">마창사</td>
                  <td id="job_nav15" rowspan="2">외전</td>
                </tr>
                <tr>
                  <td id="job_nav2">귀검사(여)</td>
                  <td id="job_nav4">격투가(여)</td>
                  <td id="job_nav6">거너(여)</td>
                  <td id="job_nav8">마법사(여)</td>
                  <td id="job_nav10">프리스트(여)</td>
                  <td id="job_nav12">나이트</td>
                  <td id="job_nav14">총검사</td>
                </tr>
              </tbody>
            </table>
            <div class="job_info">
              <div class="job_sub">
                <strong>
                  <span></span>
                </strong>
              </div>
            </div>
            <div class="df_guid">
              <img src="/resources/images/info/df_guid_title.gif" alt="">
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
        <div class="FloatLayout">
          <img src="/resources/images/close/lost0213_ti.jpg" alt="" />
          <img class="close" src="/resources/images/close/btn_ti_close.png" onclick="floatClose()" alt="" />
        </div>
      </div>
      <script type="text/javascript">
      function join_modify() {
    	 $('.main_content').load("/join_modify");
      }
      function floatClose() {
        $('.FloatLayout').css("display","none");
      }
     function notice_write() {
    	 $('.main_content').load("/notice_write");
     }
     </script>
    </body>
  </html>
