<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>
<style>
	#memberlist {
        width: 80%; min-width:800px;
        min-height:500px;
        margin: 0 auto;
    }
    #memberlist > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #memberlist > table {
        width:700px;
        margin: auto;
        border-spacing: 0px;
    }
    #memberlist th { 
        font-weight: 500;
        background-color: #dadada;
        padding: 10px;
        text-align:center;
    }

    #memberlist td {
        border-bottom: 1px solid #bdbdbd;
        padding: 5px;
    }
    #memberlist tr:hover {
    	background-color:#efefef;
    }
</style>
<section>
<div id="memberlist">
    <h2>전체회원목록</h2>
	<table>
		<tr>
			<th>순번</th>
			<th>아이디</th><th>이름</th>
			<th>생년월일</th><th>전화번호</th><th>가입일자</th>
			<th>회원분류</th>
		</tr>
		<c:forEach items="${li}" var="m" varStatus="status" >
			<tr>
				<td>${status.count}</td>
				<td>${m.id}</td><td>${m.name}</td>
				<td>${m.birth.substring(0,4)}년 ${m.birth.substring(5,6)}월 ${m.birth.substring(7,8)}일</td>
				<td>${m.tel.substring(0,3)}-${m.tel.substring(3,7)}-${m.tel.substring(7,11)}</td>
				<td>${m.joindate.substring(0,10)}</td>
				<td>${m.role}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</section>

<%@ include file="/include/bottom.jsp" %>