<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <body>
    <table class="ui black table">
      <thead>
        <tr>
          <th colspan="8">직업별 전문 포럼</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td id="skill_nav1" class = "over">귀검사(남)</td>
          <td id="skill_nav3">격투가(남)</td>
          <td id="skill_nav5">거너(남)</td>
          <td id="skill_nav7">마법사(남)</td>
          <td id="skill_nav9">프리스트(남)</td>
          <td id="skill_nav11">도적</td>
          <td id="skill_nav13">마창사</td>
          <td id="skill_nav15" rowspan="2">외전</td>
        </tr>
        <tr>
          <td id="skill_nav2">귀검사(여)</td>
          <td id="skill_nav4">격투가(여)</td>
          <td id="skill_nav6">거너(여)</td>
          <td id="skill_nav8">마법사(여)</td>
          <td id="skill_nav10">프리스트(여)</td>
          <td id="skill_nav12">나이트</td>
          <td id="skill_nav14">총검사</td>
        </tr>
      </tbody>
    </table>
    <div class="skill_info">
      <div class="skill_sub">
        <strong>
          <span></span>
        </strong>
      </div>
    </div>
    <div class="skill_img">
      <img src="/resources/images/skill/error/error.gif" alt="" />
    </div>
    <script type="text/javascript">
    var job1 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill5 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job2 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill2_1'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job3 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job4 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job5 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job6 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job7 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill5 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job8 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill5 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job9 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job10 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job11 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job12 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job13 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job14 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill3 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill4 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var job15 = {
      jobskill1 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      },
      jobskill2 : function() {
        $('.skill_img').append($('.skill_img').load('skill_error'));
      }
    }
    var skillArr1 = ['웨펀마스터','소울브링어','버서커','아수라','검귀'];
    var skillArr2 = ['소드마스터','데몬슬레이어','베가본드','다크템플러'];
    var skillArr3 = ['넨마스터','스트라이커','스트리트파이터','그래플러'];
    var skillArr4 = ['넨마스터','스트라이커','스트리트파이터','그래플러'];
    var skillArr5 = ['레인저','런처','메카닉','스핏파이어'];
    var skillArr6 = ['레인저','런처','메카닉','스핏파이어'];
    var skillArr7 = ['엘레멘탈바머','빙결사','블러드메이지','스위프트마스터','디멘션워커'];
    var skillArr8 = ['엘레멘탈마스터','소환사','마도학자','배틀메이지','인챈트리스'];
    var skillArr9 = ['크루세이더','인파이터','퇴마사','어벤저'];
    var skillArr10 = ['크루세이더','이단심판관','무녀','미스트리스'];
    var skillArr11 = ['로그','사령술사','쿠노이치','새도우댄서'];
    var skillArr12 = ['엘븐나이트','카오스','드래곤나이트','팔라딘'];
    var skillArr13 = ['듀얼리스트','뱅가드','다크랜서','드래고니안랜서'];
    var skillArr14 = ['요원','트러블슈터','히트맨','스페셜리스트'];
    var skillArr15 = ['다크나이트','크리에이터'];

    $('.skill_sub strong span').append($('#skill_nav1').text());
    $('#skill_nav1').prop('class', 'over');
      for(var i = 0; i < skillArr1.length; i++) {
      $('.skill_sub').append("<a href='javascript:void(0)'>" + skillArr1[i] + "</a>");
    }
      $('.skill_img').append($('.skill_img').load("/skill_error"));

    $('tbody').on('click','td','tr', function(event){
      $('.over').prop('class','');
      $('#' + this.id).prop('class', 'over');
      $('.skill_sub strong span').html(this.innerText)
      switch(this.id) {
        case 'skill_nav1':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr1.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job1.jobskill" + (i+1) + "()'>" + skillArr1[i] + "</a>");
        }
        break;
        case 'skill_nav2':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr2.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job2.jobskill" + (i+1) + "()'>" + skillArr2[i] + "</a>");
        }
        break;
        case 'skill_nav3':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr3.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job3.jobskill" + (i+1) + "()'>" + skillArr3[i] + "</a>");
        }
        break;
        case 'skill_nav4':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr4.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job4.jobskill" + (i+1) + "()'>" + skillArr4[i] + "</a>");
        }
        break;
        case 'skill_nav5':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr5.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job5.jobskill" + (i+1) + "()'>" + skillArr5[i] + "</a>");
        }
        break;
        case 'skill_nav6':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr6.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job6.jobskill" + (i+1) + "()'>" + skillArr6[i] + "</a>");
        }
        break;
        case 'skill_nav7':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr7.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job7.jobskill" + (i+1) + "()'>" + skillArr7[i] + "</a>");
        }
        break;
        case 'skill_nav8':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr8.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job8.jobskill" + (i+1) + "()'>" + skillArr8[i] + "</a>");
        }
        break;
        case 'skill_nav9':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr9.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job9.jobskill" + (i+1) + "()'>" + skillArr9[i] + "</a>");
        }
        break;
        case 'skill_nav10':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr10.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job10.jobskill" + (i+1) + "()'>" + skillArr10[i] + "</a>");
        }
        break;
        case 'skill_nav11':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr11.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job11.jobskill" + (i+1) + "()'>" + skillArr11[i] + "</a>");
        }
        break;
        case 'skill_nav12':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr12.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job12.jobskill" + (i+1) + "()'>" + skillArr12[i] + "</a>");
        }
        break;
        case 'skill_nav13':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr13.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job13.jobskill" + (i+1) + "()'>" + skillArr13[i] + "</a>");
        }
        break;
        case 'skill_nav14':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr14.length; i++){
          $('.skill_sub').append("<a href='javascript:void(0)' onclick='job14.jobskill" + (i+1) + "()'>" + skillArr14[i] + "</a>");
        }
        break;
        case 'skill_nav15':
        $('.skill_sub a').remove();
        for(var i = 0; i < skillArr15.length; i++){
        $('.skill_sub').append("<a href='javascript:void(0)' onclick='job15.jobskill" + (i+1) + "()'>" + skillArr15[i] + "</a>");
        }
        break;
      }
    })
    </script>
  </body>
</html>
