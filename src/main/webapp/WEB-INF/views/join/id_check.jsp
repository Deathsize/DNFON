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
      <spring:url value = "/resources/css/id_check.css" var="id_check" />
      <link rel="stylesheet" type="text/css" href = "${id_check}" />
  </head>
  <body>
    <table>
      <tbody>
        <tr>
          <td id="id_header">아이디 중복</td>
        </tr>
      </tbody>
    </table>
    <form id="checkedupfrm" name="checkedupfrm" method="post">
        <table class="id_body">
        <tbody id = "ok_id">
          <tr id="check_id">
            <td>사용하려는 아이디를 입력해주세요.</td>
          </tr>
          <tr>
            <td class="id_check">
              <strong>아이디 : </strong>
              <input type="text" name="userid" maxlength="15" id="userid" />
              <input type="image" id="check" src="/resources/images/join/btn_overlap_s.gif" /> <br />
              <span id="errorspan"><p></p></span>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
    <table class="id_footer">
      <tr>
        <td>
          <input type="image" src="/resources/images/join/b_close.gif" onclick="javascript:window.close()" value="">

        </td>
      </tr>
    </table>
  </body>
  <script type="text/javascript">
    var idck = 0;
    $('#checkedupfrm').on("click", function(event){
        event.preventDefault();
      })

    $('#check').on('click', function(event) {

    	var userid = $('#userid').val();
    	console.log(userid);

      if($("#userid").val().length == 0) {
        $("#errorspan p").text("아이디를 입력해주세요");
        checkedupfrm.userid.focus();
        return;
      }

      if($("#userid").val().length < 4 || $("#userid").val().length > 10) {
        $("#errorspan p").text("아이디 길이는 4글자이상 10글자 이하");
        checkedupfrm.userid.focus();
        return;
      }
      var csrfHeaderName ="${_csrf.headerName}"; 
      var csrfTokenValue="${_csrf.token}";
      $.ajax({
    	  type : 'POST',
    	  data : userid,
    	  url : "id_check",
    	  dataType : "JSON",
    	  contentType : "application/json; charset=UTF-8",
    	  beforeSend: function(xhr) {
              xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
          },
    	  success : function(data) {
    		  if(data.cnt > 0) {
    			  $('#check_id td').remove();
    			  $('#check_id').append("<td> 아이디 " + userid + "은 사용할 수 없습니다. </td>");
    			  $('#userid').val("");
    			  checkedupfrm.userid.focus();
    		  } else {
    			 $('#checkedupfrm').append("<input type='hidden' id='userid' name='userid' value='" + userid + "' />");
    			 $('#ok_id').empty();
    			 $('#ok_id').append("<tr><td> 입력하신 " + userid + "은 사용할 수 있습니다. </td></tr>");
    			 $('.id_footer tr').empty();
    			 $('.id_footer tr').append("<input type='image' src='/resources/images/join/btn_use_s.gif' onclick='assign_id()' value=''>")
    			 idck = 1;
    		  }
    	  }
      });
    });

	function assign_id()
	{
    	var userid = $('#userid').val();
		$("#user_id", opener.document).val(userid);
		$("#chk_userid", opener.document).val("1");

		self.close();
	}

  </script>
</html>
