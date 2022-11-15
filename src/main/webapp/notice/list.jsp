<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>
<style>
	#noticelist {
        width:800px;
        min-height:500px;
        margin: 0 auto;
        text-align: right;
    }
    #noticelist > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #noticelist > table {
        width:700px;
        margin: auto;
        text-align: center;
        border-spacing: 0px;
    }
    #noticelist th { 
        font-weight: 500;
        background-color: #dadada;
        padding: 10px;
    }

    #noticelist td {
        border-bottom: 1px solid #bdbdbd;
        padding: 5px;
    }
    #noticelist td:nth-child(1) {width:50px;}
    #noticelist td:nth-child(2) {width:400px; text-align:left;}
    #noticelist td:nth-child(3) {width:100px;}
    #noticelist td:nth-child(4) {width:50px;}

    #noticelist td {
        border-bottom: 1px solid #bdbdbd;
        padding: 5px;
    }
    #noticelist tr:hover {
    	background-color:#efefef;
    }
    #noticelist .write {
        width: 100px;
        height: 30px;
        margin-top: 20px;
        margin-right: 50px;
        background: none;
        border: 1px solid #cfcfcf;
        border-radius: 5px;
    }
    #noticelist .write:hover {
        background-color: #eee;
        cursor:pointer;
    }
</style>
<script>
	function ck(){
		location.href="<%=path%>/notice/form.jsp";
	}
</script>
<section>
<div id="noticelist">
<h2> 공지사항 </h2>
	<table>
		<tr><th colspan=2>제목</th><th>작성일</th><th>조회</th></tr>
		<c:forEach items="${li}" var="m" >
			<tr>
				<td>${m.seq}</td>
				<td><a href="<%=path %>/noticeOne.do?seq=${m.seq}">${m.title}</a></td>
				<td>${m.createdate.substring(0,10)}</td>
				<td>${m.cnt}</td>
			<tr>
		</c:forEach>
	</table>
	<% if (role != null){ 
		String str = role;
		if (str.equals("관리자")){ %>
		<input type=button value="글쓰기" OnClick="return ck()" class="write">	
	<% } } %>
	</div>
</section>

<%@ include file="/include/bottom.jsp" %>