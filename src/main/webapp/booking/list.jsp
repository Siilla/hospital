<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>
<style>
#bookinglist {
        width: 80%; min-width:800px;
        min-height:500px;
        margin: 0 auto;
    }
    #bookinglist > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #bookinglist > table {
        width:700px;
        margin: auto;
        border-spacing: 0px;
        
    }
    #bookinglist th { 
        font-weight: 500;
        background-color: #dadada;
        padding: 10px;
    }

    #bookinglist td {
        border-bottom: 1px solid #bdbdbd;
        padding: 5px;
    }
    #bookinglist tr:hover {
    	background-color:#efefef;
    }
</style>
<section>
<div id="bookinglist">
	<h2>전체예약목록</h2>
	<table>
		<tr>
			<th>순번</th>
			<th>아이디</th><th>이름</th><th>생년월일</th>
			<th>전화번호</th><th>예약일자</th><th>예약시간</th>
			<th>담당의사</th>
		</tr>
		<c:forEach items="${li}" var="m" varStatus="status" >
			<tr>
				<td>${status.count}</td>
				<td>${m.id}</td>
				<td>${m.name}</td>
				<td>${m.birth.substring(0,4)}년 ${m.birth.substring(5,6)}월 ${m.birth.substring(7,8)}일</td>
				<td>${m.tel.substring(0,3)}-${m.tel.substring(3,7)}-${m.tel.substring(7,11)}</td>
				<td>${m.b_date.substring(0,10)}</td>
				<td>
					<c:choose>
						<c:when test="${m.b_time=='A'}">오전 10:30</c:when>
						<c:when test="${m.b_time=='B'}">오전 11:30</c:when>
						<c:when test="${m.b_time=='C'}">오후 1:30</c:when>
						<c:when test="${m.b_time=='D'}">오후 2:30</c:when>
						<c:when test="${m.b_time=='E'}">오후 3:30</c:when>
					</c:choose>
				</td>
				<td>
					<c:if test="${m.doc=='docA'}">김의사</c:if>
					<c:if test="${m.doc=='docB'}">이의사</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>
</section>

<%@ include file="/include/bottom.jsp" %>