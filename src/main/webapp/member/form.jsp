<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMdd");
	String dateStr = sdf.format(date);
%>
<style>
/* contents */
    #join {
        width: 80%; min-width:800px;
        min-height:500px;
        margin: 0 auto;
    }
    div#join > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    div#join table {
        width:600px;
        height: 400px;
        margin: auto;
    }
    tr td:nth-child(1) {
        text-align: center;
        font-weight: bold;
    }
    td {
        width: 50%;
        height: 30px;
        border-top: 1px solid #eee;
        line-height: 30px;
        padding: 10px;
    }
    input[type=text] {
        width: 150px;
        height: 25px;
        line-height: 20px;
        margin-right: 20px;
        padding: 5px;
        border: none;
        border-radius: 5px;
        background-color: #dddddd;
    }
    input[type=password] {
        width: 150px;
        height: 25px;
        line-height: 20px;
        margin-right: 20px;
        padding: 5px;
        border: none;
        border-radius: 5px;
        background-color: #dddddd;
    }
     input[type=submit] {
        width: 100px;
        height: 30px;
        margin-top: 10px;
    } 
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	var  path='${pageContext.request.contextPath}';
	jQuery.ajaxSetup({cache:false});
	$(document).ready( function(){
		  $('#idCkeck').click( function(){
			  var  dataStr={
					id  : $('#id').val()
			  };
			  
			  $.ajax({
				  type: "GET",
				  url : path + "/idChcek.do",
				  data : dataStr,
				  success: function (data){
				    if (data == 0){
				    	alert("사용가능한 ID 입니다.");
				    }else{
				    	alert("중복 ID 입니다.");
				    	$('#id').val("");
				    	$('#id').focus();			    	
				    }				  
				  }	  
			  }) 
		  } )   
	})

   function ck(){
		if(f1.id.value==""){
			   alert("아이디를 입력해주세요");
			   f1.id.focus();
			   return false;
		   }
		if(f1.pwd.value=="") {
			   alert("비밀번호를 입력해주세요");
			   f1.pwd.focus();
			   return false;
		   } 
		if(f1.name.value=="") {
			   alert("이름을 입력해주세요");
			   f1.name.focus();
			   return false;
		   }
		if(f1.birth.value=="") {
			   alert("생년월일을 선택해주세요");
			   f1.birth.focus();
			   return false;
		   }
		if(f1.tel.value=="") {
			   alert("전화번호를 입력해주세요");
			   f1.tel.focus();
			   return false;
		   }
		alert("가입이 완료되었습니다");		
	}
	
</script>
<div align="center">
<section>
	<div id="join">
	<h2> 회 원 가 입 </h2>
	
	<form action="<%=path%>/memberInsert.do" name=f1 onSubmit="return ck()" method="post" >
	<table>
		<input type="hidden" name=role value="일반회원">
		<input type="hidden" name=joindate value="<%=dateStr%>">
		<tr><td>아이디</td><td><input type=text name="id" id="id" maxlength="20"><input  type="button" value="중복체크" id="idCkeck" /></td></tr>
		<tr><td>비밀번호</td><td><input type=password name="pwd"></td></tr>
		<tr><td>이름</td><td><input type=text name="name" maxlength="20"></td></tr>
		<tr><td>생년월일</td><td><input type=text name="birth" maxlength="9"></td></tr>
		<tr><td>전화번호</td><td><input type=text name="tel" maxlength="11"></td></tr>
		<tr><td colspan=2><input type=submit value="가입하기"></td></tr>
	</table>
	
	</form>
	</div>
</section>
</div>

<%@ include file="/include/bottom.jsp" %>