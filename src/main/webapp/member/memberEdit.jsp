<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/top.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%	
	path = request.getContextPath();
%>
<style>
/* contents */
#memberedit {
        width: 80%; min-width:800px;
        min-height:500px;
        margin: 0 auto;
    }
    #memberedit > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #memberedit table {
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
<script>
   function ck(){
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
		alert("수정이 완료되었습니다");		
	}
	
</script>
<div align="center">
<section>
<div id="memberedit">
<h2> 회원정보수정 </h2>
<form name=f1 onSubmit="return ck()" action="<%=path%>/memberUpdate.do"  method="post" > 
	<table>
		<input type="hidden" name=id value="${m.id}">
		<input type="hidden" name=role value="${m.role}">
		<input type="hidden" name=joindate value="${m.joindate}">
		<tr> <td>아이디</td> <td>${m.id}</td> </tr>
		<tr> <td>비밀번호</td> <td><input type="password" name="pwd" value="${m.pwd}"></td> </tr>
		<tr> <td>이름</td> <td><input type="text" name="name" value="${m.name}"></td> </tr>
		<tr> <td>생년월일</td> <td><input type="text" name="birth" value="${m.birth}"></td> </tr>
		<tr> <td>전화번호</td> <td><input type="text" name="tel" value="${m.tel}"></td> </tr>
		<tr> <td colspan="2" align="center"><input type="submit" value="수정하기"></td> </tr>
	</table>
</form>
</div>
</section>
</div>

<%@ include file="../include/bottom.jsp" %>
