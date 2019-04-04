jQuery( document ).ready(function($) {
  $('.update_raid_nav_wrap').on('click', 'li', function(event){
    var id = this.id;
    var size = id.length;
    var raidnav = id.slice(size-1, size );
    $('.update_raid_nav_wrap li').empty();
    $('#update_raid_nav' + raidnav).prepend("<img src='/resources/images/info/nav2_"+ raidnav + ".gif' alt=''>");
  })
var jobArr1 = ['웨펀마스터','소울브링어','버서커','아수라','검귀'];
var jobArr2 = ['소드마스터','데몬슬레이어','베가본드','다크템플러'];
var jobArr3 = ['넨마스터','스트라이커','스트리트파이터','그래플러'];
var jobArr4 = ['넨마스터','스트라이커','스트리트파이터','그래플러'];
var jobArr5 = ['레인저','런처','메카닉','스핏파이어'];
var jobArr6 = ['레인저','런처','메카닉','스핏파이어'];
var jobArr7 = ['엘레멘탈바머','빙결사','블러드메이지','스위프트마스터','디멘션워커'];
var jobArr8 = ['엘레멘탈마스터','소환사','마도학자','배틀메이지','인챈트리스'];
var jobArr9 = ['크루세이더','인파이터','퇴마사','어벤저'];
var jobArr10 = ['크루세이더','이단심판관','무녀','미스트리스'];
var jobArr11 = ['로그','사령술사','쿠노이치','새도우댄서'];
var jobArr12 = ['엘븐나이트','카오스','드래곤나이트','팔라딘'];
var jobArr13 = ['듀얼리스트','뱅가드','다크랜서','드래고니안랜서'];
var jobArr14 = ['요원','트러블슈터','히트맨','스페셜리스트'];
var jobArr15 = ['다크나이트','크리에이터'];

  $('.job_sub strong span').append($('#job_nav1').text());
  $('#job_nav1').prop('class', 'over');
  for(var i = 0; i < jobArr1.length; i++) {
    $('.job_sub').append("<a href='#'>" + jobArr1[i] + "</a>");
  }

  $('tbody').on('click','td','tr', function(event){
    $('.over').prop('class','');
    $('#' + this.id).prop('class', 'over');
    $('.job_sub strong span').html(this.innerText)
    switch(this.id) {
      case 'job_nav1':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr1.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr1[i] + "</a>");
      }
      break;
      case 'job_nav2':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr2.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr2[i] + "</a>");
      }
      break;
      case 'job_nav3':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr3.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr3[i] + "</a>");
      }
      break;
      case 'job_nav4':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr4.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr4[i] + "</a>");
      }
      break;
      case 'job_nav5':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr5.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr5[i] + "</a>");
      }
      break;
      case 'job_nav6':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr6.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr6[i] + "</a>");
      }
      break;
      case 'job_nav7':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr7.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr7[i] + "</a>");
      }
      break;
      case 'job_nav8':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr8.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr8[i] + "</a>");
      }
      break;
      case 'job_nav9':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr9.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr9[i] + "</a>");
      }
      break;
      case 'job_nav10':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr10.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr10[i] + "</a>");
      }
      break;
      case 'job_nav11':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr11.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr11[i] + "</a>");
      }
      break;
      case 'job_nav12':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr12.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr12[i] + "</a>");
      }
      break;
      case 'job_nav13':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr13.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr13[i] + "</a>");
      }
      break;
      case 'job_nav14':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr14.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr14[i] + "</a>");
      }
      break;
      case 'job_nav15':
      $('.job_sub a').remove();
      for(var i = 0; i < jobArr15.length; i++){
        $('.job_sub').append("<a href='#'>" + jobArr15[i] + "</a>");
      }
      break;
    }
  })

  $('#main_nav1').on('click',function(event){
	   $('.main_content').load("/skill");
  })

  $('#notice').on('click',function(event){
	   $('.main_content').load("/notice");
  })
})
