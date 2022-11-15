<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>
<style>
#noticeUpdate {
        width: 80%; min-width:800px;
        min-height:550px;
        margin: 0 auto;
    }

    #noticeUpdate table {
        width:700px;
        margin: 80px auto 0;
        border-spacing: 0px;
        border: 1px solid #ccc;
    }
    #noticeUpdate th {
        height: 50px;
        border-bottom: 1px solid #ccc;
        padding-right:10px;
    }
    #noticeUpdate th:nth-child(1) {width:40px; font-size: 12px; color: #363636;}
    #noticeUpdate th:nth-child(2) {font-size: 18px;}
    #noticeUpdate th:nth-child(3) {width: 50px; font-size: 12px; color: #363636; text-align: right;}
    #noticeUpdate th:nth-child(4) {width: 80px; font-size: 12px; color: #363636; text-align: right;}

    #noticeUpdate td.contents {
        height: 300px;
        padding: 20px;
    }
    #noticeUpdate td {
        height: 60px;
        border-bottom: 1px solid #eee;
    }
    input[type=text] {
        width: 400px;
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
</style>
<section>
<div id="noticeUpdate">
<form action="<%=path %>/noticeUpdate.do"  method="post" > 
	<table>
		<input type=hidden name=seq value=${m.seq}>
		<tr> 
			<th>${m.seq}</th>
			<th><input type=text name=title value="${m.title}"></th>
			<th>조회수<br>${m.cnt}</th>
			<th>작성일<br>${m.createdate.substring(0,10)}</th>
		</tr>
		<tr> <td colspan="4"><textarea name=contents>${m.contents}</textarea></td> </tr>
		<tr> <td colspan="4" align="center"><input type="submit" value="수정하기"></td> </tr>
	</table>
</form>
</div>
</section>

<%@ include file="/include/bottom.jsp" %>