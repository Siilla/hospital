<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>
<style>
	#bookingOne {
        width: 80%; min-width:800px;
        min-height:500px;
        margin: 0 auto;
    }
    #bookingOne > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #bookingOne > table {
        width:700px;
        margin: auto;
        border-spacing: 0px;
        text-align: center;
    }
    #bookingOne th { 
        font-weight: 500;
        background-color: #dadada;
        padding: 10px;
    }

    #bookingOne td {
        border-bottom: 1px solid #bdbdbd;
        padding: 5px;
    }

    #bookingOne a {
        display: inline-block;
        width: 80px;
        height: 30px;
        line-height:30px;
        border-radius: 5px;
        padding: 5px;
        background-color:#eee;
    }
    #bookingOne a:hover {
        background-color:#166aca;
        color:#eee;
    }
</style>
<script>
	function delB(){
		alert("예약이 취소되었습니다");
	}
</script>
<section>
	<div id=bookingOne>
	<h2>예약확인</h2>
	<table>
		<tr>
			<th>순번</th><th>예약일자</th><th>예약시간</th><th>담당의사</th><th colspan=2>예약</th>
		</tr>
		<c:forEach items="${li}" var="m" varStatus="status" >
			<tr>
				<td>${status.count}</td>
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
				<td><a href="<%=path%>/bookingEdit.do?id=<%=id%>&idx=${m.idx}">예약변경</a></td>
				<td><a href="<%=path%>/bookingDelete.do?id=<%=id%>&idx=${m.idx}" onClick="return delB()">예약취소</a></td>
			</tr>
			
		</c:forEach>
	</table>
	</div>
</section>

<%@ include file="/include/bottom.jsp" %>