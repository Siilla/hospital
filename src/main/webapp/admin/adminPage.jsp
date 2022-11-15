<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/top.jsp" %>

<style>
#adminpage {
    width: 80%; min-width:800px;
    height:450px;
    margin: 0 auto;
    text-align:center;
    margin-top:100px;
}
#adminpage > a {
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
#adminpage > a:hover {
    background-color: #166aca;
    color:#fff;
    cursor: pointer;
}
</style>
<section>
<div id="adminpage">
<h2>관리자페이지</h2>
<p>관리자 <%=id %>님</p><br><br>
<a href="<%=path%>/noticeList.do">공지사항</a>
<a href="<%=path%>/memberList.do">회원목록보기</a>
<a href="<%=path%>/bookingList.do">예약목록보기</a>
<a href="<%=path%>/qnaList.do">문의보기</a>

</div>
</section>

<%@ include file="../include/bottom.jsp" %>
