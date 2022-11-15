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
	#noticeForm {
        width: 80%; min-width:800px;
        min-height:550px;
        margin: 0 auto;
    }
    #noticeForm > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #noticeForm table {
        width:700px;
        margin: 0 auto;
        border-spacing: 0px;
        border: 1px solid #ccc;
    }

    #noticeForm td {
        height: 50px;
        border-top: 1px solid #eee;
    }
    td.title {
        width: 100px;
        text-align: center;
    }
    input[type=text] {
        width: 500px;
        height: 30px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing:border-box;
    } 
    textarea {
        width: 600px;
        height: 300px;
        padding: 10px;
        margin: 10px 50px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing:border-box;
        resize: none;
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
	}
	
</script>
<section>
<div id="noticeForm">
<h2> 공지사항 </h2>
	<form action="<%=path %>/noticeInsert.do"  method="post" > 
	<table>
		<input type="hidden" name=createdate value="<%=dateStr%>">
		<input type="hidden" name=cnt value=0>
		<tr> <td class="title">제&emsp;목</td><td><input type="text" name="title" size=65></td> </tr> 
		<tr> <td colspan="2"><textarea name=contents></textarea></td> </tr>
		<tr> <td colspan="2" align="center"><input type="submit" value="작성하기"></td> </tr>
	</table>
</form>
</div>
</section>

<%@ include file="/include/bottom.jsp" %>