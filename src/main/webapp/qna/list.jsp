<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>
<style>
	#qnalist {
        width: 80%; min-width:800px;
        min-height:500px;
        margin: 0 auto;
    }
    #qnalist > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #qnalist > table {
        width:700px;
        margin: auto;
        text-align: center;
        border-spacing: 0px;
    }
    #qnalist th { 
        font-weight: 500;
        background-color: #dadada;
        padding: 10px;
    }

    #qnalist td {
        border-bottom: 1px solid #bdbdbd;
        padding: 5px;
    }
    #qnalist td:nth-child(1) {width:40px;}
    #qnalist td:nth-child(2) {width:80px;}
    #qnalist td:nth-child(3) {width:200px; text-align:left;}
    #qnalist td:nth-child(4) {width:80px;}

    #qnalist td {
        border-bottom: 1px solid #bdbdbd;
        padding: 5px;
    }
    #qnalist tr:hover {
    	background-color:#efefef;
    }
</style>
<section>
<div id="qnalist">
<h2>문의목록</h2>
	<table>
		<tr>
			<th>글번호</th>	<th>작성자</th><th>제목</th><th>문의일자</th>
		</tr>
		<c:forEach items="${li}" var="m" >
			<tr>
				<td>${m.idx}</td>
				<td>${m.id}</td>
				<td><a href="<%=path %>/qnaOne.do?idx=${m.idx}">${m.title}</td>
				<td>${m.qnadate.substring(0,10)}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</section>

<%@ include file="/include/bottom.jsp" %>