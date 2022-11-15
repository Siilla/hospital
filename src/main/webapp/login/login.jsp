<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/top.jsp" %>
<style>
/* contents */
    #notice {
        width: 80%; min-width:800px;
        min-height:500px;
        margin: 0 auto;
    }
    #notice > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #notice table {
        border: 1px solid #aaa;
        border-radius: 5px;
        width:400px;
        margin: auto;
    }
    tr td:nth-child(1) {
        width: 40%;
        text-align: center;
        font-weight: bold;

    }
    td {
        height: 20px;
        line-height: 30px;
        padding: 10px;
        box-sizing: border-box;
    }

    input[type=text] {
        width: 150px;
        height: 30px;
        line-height: 30px;
        margin-right: 20px;
        padding: 5px;
        border: none;
        border-radius: 5px;
        box-sizing: border-box;
        background-color: #dddddd;
    }
    input[type=password] {
        width: 150px;
        height: 30px;
        line-height: 30px;
        margin-right: 20px;
        padding: 5px;
        border: none;
        border-radius: 5px;
        box-sizing: border-box;
        background-color: #dddddd;
    }
     input[type=submit] {
        width: 200px;
        height: 40px;
        margin-top: 10px;
        font-weight: 600;
        font-size: 17px;
        color: #fff;
        background-color: #166aca;
        border: none;
        border-radius: 10px;
    } 
    input[type=submit]:hover{
        background-color: #368df0;
        cursor: pointer;
    } 
</style>
<Script>
	function  Ck(){
		if(f1.id.value==""){
			alert("아이디를 입력해주세요");
			f1.id.focus();
			return  false;
	    }
		if(f1.pwd.value==""){
		    alert("비밀번호를 입력해주세요");
		    f1.pwd.focus();
		    return  false;
	    }
	    alert("로그인이 되었습니다");
 	}

	var login = '<%=(String)session.getAttribute("login") %>';
	if (login==null){
		alert("로그인에 실패했습니다");
	} 
 
</Script>
<section>
<div id="notice">
<h2> 로 그 인 </h2>
<form name=f1 onSubmit="Ck()" action="<%=path%>/login.do" method="post">
	<table>
		<tr> <td>아이디</td> <td><input type="text" name="id" value="admin"></td> </tr>
		<tr> <td>비밀번호</td> <td><input type="password" name="pwd" value="1111"></td> </tr>
		<tr> <td colspan="2" align="center"><input type="submit" value="로그인"></td> </tr>
	</table>
</form>
</div>
</section>

<%@ include file="../include/bottom.jsp" %>
