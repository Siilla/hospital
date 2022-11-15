<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/top.jsp" %>
<style>
#mypage {
    width: 80%; min-width:800px;
    height:450px;
    margin: 0 auto;
    padding-top:100px;
}
#mypage > a {
    display: block;
    width: 300px;
    height: 50px;
    line-height: 50px;
    text-align: center;
    font-size: 17px;
    border-radius: 20px;
    background-color: #e0e0e0;
    margin: 0 auto;
    margin-bottom: 30px;
}
#mypage > a:hover {
    background-color: #166aca;
    color:#fff;
    cursor: pointer;
}
</style>
<section>
<div id="mypage">
id : <%=id %> <br><br>
	<a href="<%=path %>/memberEdit.do?id=<%=id%>">개인정보 수정</a>
	<a href="<%=path %>/bookingListOne.do?id=<%=id%>">예약확인</a>
	<a href="<%=path %>/qna/form.jsp">문의하기</a>
	<a href="<%=path %>/qnaListOne.do?id=<%=id%>">문의내역보기</a>
</div>
</section>

<%@ include file="../include/bottom.jsp" %>