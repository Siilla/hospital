<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>
<style>
	#qnaone {
        width: 80%; min-width:800px;
        min-height:500px;
        margin: 0 auto;
    }
    #qnaone > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #qnaone > table {
        width:700px;
        margin: auto;
        border-spacing: 0px;
    }
    #qnaone th { 
        font-weight: 500;
        background-color: #dadada;
        padding: 10px;
        text-align:center;
    }

    #qnaone td:nth-child(1) {width:50px; text-align:center;}
    #qnaone td:nth-child(2) {width:250px;}
    #qnaone td:nth-child(3) {width:100px;}
    
    #qnaone td {
        border-bottom: 1px solid #bdbdbd;
        padding: 5px;
    }
    #qnaone tr:hover {
    	background-color:#efefef;
    }
</style>
<section>
<div id="qnaone">
<h2>문의목록</h2>
	<table>
		<tr>
			<th>순번</th><th>제목</th><th>문의일자</th>
		</tr>
		<c:forEach items="${li}" var="m" varStatus="status" >
			<tr>
				<td>${status.count}</td>
				<td><a href="<%=path %>/qnaOne.do?idx=${m.idx}">${m.title}</td>
				<td>${m.qnadate.substring(0,10)}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</section>

<%@ include file="/include/bottom.jsp" %>