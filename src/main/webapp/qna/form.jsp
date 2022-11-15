<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/top.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMdd");
	String dateStr = sdf.format(date);
%>
<style>
#qnaform {
        width: 80%; min-width:800px;
        min-height:600px;
        margin: 0 auto;
    }
    #qnaform > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #qnaform table {
        width:700px;
        margin: 0 auto;
        border-spacing: 0px;
        border: 1px solid #ccc;
    }
    textarea {
        width: 600px;
        height: 200px;
        padding: 10px;
        margin: 10px 50px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing:border-box;
        resize: none;
    }
    #qnaform td {
        height: 20px;
        padding: 20px;
        box-sizing:border-box;
        border-bottom: 1px solid #eee;
    }

    input[type=text] {
        width: 500px;
        height: 30px;
        padding: 10px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 5px;
    } 

    input[type=submit] {
        width: 80px;
        height: 30px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        background: none;
    } 
    input[type=submit]:hover{
        background-color: #eee;
        cursor: pointer;
    } 
</style>
<script>
    function ck(){
		if(f1.title.value==""){
			   alert("제목을 입력해주세요");
			   f1.title.focus();
			   return false;
		   }
		alert("문의가 접수되었습니다");		
	}
</script>
<section>
<div id="qnaform">
<h2>문의하기</h2>
<form action="<%=path %>/qnaInsert.do" name="f1" onSubmit="return ck()"  method="post" >
	<table>
		<input type="hidden" name=id value="<%=id%>">
		<input type="hidden" name=qnadate value="<%=dateStr%>">
		<tr> <td>제목</td> <td><input type="text" name="title"></td> </tr>
		<tr> <td colspan="2"><textarea name=contents></textarea></td> </tr>
		<tr> <td colspan="2" align="center"><input type=submit value="문의하기"></td></tr>
	</table>
</form>
</div>
</section>
<%@ include file="../include/bottom.jsp" %>