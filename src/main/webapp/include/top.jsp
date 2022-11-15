<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %> 
<% 
String path= request.getContextPath(); 

String name = (String) session.getAttribute("name");
String role = (String) session.getAttribute("role");
String id = (String)session.getAttribute("id"); 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 테스트</title>
<style>
/* all */
* { margin: 0; padding: 0;}
ul { list-style: none;}
a { text-decoration: none; color: inherit;}
#wrap {width: 100%;}

/* top */
#logo {
    width: 80%; min-width: 800px;
    height: 80px;
    line-height: 80px;
    margin: auto;
    text-align: center;
    background-image:url("../img/icon.png");
    background-size:height:80px;
}
#logo img {
	height:80px;
	text-align:center;
	line-height:80px;
}
header > nav {
	width: 80%; min-width: 800px;
	height: 30px;
	margin: auto;
	font-size: 12px;
	line-height: 30px;
	text-align: right;
}
header > nav > a:hover {
    color: #616161;
	text-decoration: underline;
}

#gnb {
    height: 50px;
    line-height: 50px;
    text-align: right;
    background-color: #5a92e6;
    border: 1px solid #aaa;
    border-left: none;
    border-right: none;
}
#gnb ul {
    width: 80%; min-width: 800px;
    margin: auto;
}
#gnb ul > li {
    display: inline-block;
    font-size: 15px;
}

#gnb ul > li > a {
    display: block;
    width: 100px;
    height: 50px;
    color: #fff;
    text-align: center;
}
#gnb ul > li > a:hover {
    color : #fff;
    background-color:  #616161;
}
</style>   
</head>
<body>
<div id="wrap">

<!-- 상단부 -->
<header>
<nav>
	<% if (role != null){ 
		String str = role;
		if (str.equals("관리자")){%>
			<a href="<%=path %>/admin/adminPage.jsp">관리자페이지</a>&emsp;
			<% } else { %>
			<a href="<%=path %>/member/myPage.jsp">마이페이지</a>&emsp;
			<% }
		} else {} %>
	
	<% if (name != null ) { %>
	<b><%=name %>님</b>
	&emsp;&emsp;  <a href="<%=path %>/logout.do">로그아웃</a> &emsp;
	<% } else {  %>
	&emsp;&emsp;  <a href="<%=path %>/login/login.jsp">로그인</a> &emsp;
	<a href="<%=path %>/member/form.jsp">회원가입</a>&emsp;
	<% } %>
</nav>

<a href="<%=path %>/index.jsp"><div id="logo"><img src=<%=path %>/img/icon.png></div></a>
<div id="gnb">	
	<ul>
		<li><% if(id != null){ %><a href="<%=path %>/booking/form.jsp">예약하기</a>
			<% } else { %><a href="<%=path %>/login/login.jsp">예약하기</a> <% } %></li>
		<li><a href="<%=path %>/noticeList.do">공지사항</a></li>
	</ul>
</div>
</header>