<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <title>아이디 체크</title>
    <meta charset="utf-8">
    <script
      src="https://code.jquery.com/jquery-3.3.1.min.js"
      integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
      crossorigin="anonymous"></script>
      <spring:url value = "/resources/css/nick_check.css" var="nick_check" />
      <link rel="stylesheet" type="text/css" href = "${nick_check}" />
  </head>
  <body>
    <table>
      <tbody>
        <tr>
          <td id="id_header">닉네임 중복</td>
        </tr>
      </tbody>
    </table>
    <form id="checkedupfrm" name="checkedupfrm" action="index.html" method="post">
      <table class="nick_body">
        <tbody id = "ok_nick">
          <tr id="check_nick">
            <td>사용하려는 닉네임을 입력해주세요.</td>
          </tr>
          <tr>
            <td class="nick_check">
              <strong>닉네임 : </strong>
              <input type="text" name="usernick" maxlength="6" id="usernick" />
              <input type="image" id="check" src="/resources/images/join/btn_overlap_s.gif" onclick="nick_check()" /> <br />
              <span id="errorspan"><p></p></span>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
    <table class="nick_footer">
      <tr>
        <td>
          <input type="image" src="/resources/images/join/b_close.gif" onclick="javascript:window.close()" value="">

        </td>
      </tr>
    </table>
  </body>
  <script type="text/javascript">
    var nickck = 0;

    $('#checkedupfrm').on("click", function(event){
      event.preventDefault();
    })

    function nick_check() {
    	var usernick = $('#usernick').val();
    	console.log(usernick);

      if($("#usernick").val().length == 0) {
        $("#errorspan p").text("닉네임을 입력해주세요");
        checkedupfrm.userid.focus();
        return;
      }

      if($("#usernick").val().length < 2 || $("#usernick").val().length > 6) {
        $("#errorspan p").text("닉네임의 길이는 2글자이상 6글자 이하");
        checkedupfrm.usernick.focus();
        return;
      }

      $.ajax({
    	  type : 'POST',
    	  data : usernick,
    	  url : "nickcheck",
    	  dataType : "JSON",
    	  contentType : "application/json; charset=UTF-8",
    	  success : function(data) {
    		  if(data.cnt > 0) {
    			  $('#check_nick td').remove();
    			  $('#check_nick').append("<td> 아이디 " + usernick + "은 사용할 수 없습니다. </td>");
    			  $('#usernick').val("");
    			  checkedupfrm.userid.focus();
    		  } else {
    			 $('#checkedupfrm').append("<input type='hidden' id='usernick' name='usernick' value='" + usernick + "' />");
    			 $('#ok_nick').empty();
    			 $('#ok_nick').append("<tr><td> 입력하신 " + usernick + "은 사용할 수 있습니다. </td></tr>");
    			 $('.nick_footer tr').empty();
    			 $('.nick_footer tr').append("<input type='image' src='/resources/images/join/btn_use_s.gif' onclick='assign_nick()' value=''>")
    			 nickck = 1;
    		  }
    	  }
      });
    }

	function assign_nick()
	{
    	var usernick = $('#usernick').val();
		$("#user_nick", opener.document).val(usernick);
		$("#chk_usernick", opener.document).val("1");

		self.close();
	}

  </script>
</html>
