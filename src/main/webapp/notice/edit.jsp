<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>
<style>
#noticeEdit {
        width: 80%; min-width:800px;
        min-height:550px;
        margin: 0 auto;
    }
    #noticeEdit > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #noticeEdit > table {
        width:700px;
        margin: 80px auto 0;
        border-spacing: 0px;
        border: 1px solid #ccc;
    }
    #noticeEdit th {
        height: 50px;
        border-bottom: 1px solid #ccc;
        padding-right:10px;
    }
    #noticeEdit th:nth-child(1) {width:40px; font-size: 12px; color: #363636;}
    #noticeEdit th:nth-child(2) {font-size: 18px;}
    #noticeEdit th:nth-child(3) {width: 50px; font-size: 12px; color: #363636; text-align: right;}
    #noticeEdit th:nth-child(4) {width: 80px; font-size: 12px; color: #363636; text-align: right;}

    #noticeEdit td.contents {
        height: 300px;
        padding: 20px;
    }
    #noticeEdit td {
        height: 60px;
        border-bottom: 1px solid #eee;
    }

    input[type=button] {
        width: 80px;
        height: 30px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        background: none;
    } 
    input[type=button]:hover{
        background-color: #eee;
        cursor: pointer;
    } 
</style>
<script>
	function listN(){
		location.href="<%=path%>/noticeList.do";
	}
	
	function delN(){
		location.href="<%=path%>/noticeDelete.do?seq=${m.seq}";
	}
	
	function editN(){
		location.href="<%=path%>/noticeEdit.do?seq=${m.seq}";
	}
</script>

<section>
<div id="noticeEdit">
<h2>  </h2>
<table>
		<tr> <th>${m.seq}</th><th>${m.title}</th>
			 <th>조회수<br>${m.cnt}</th><th>작성일<br>${m.createdate.substring(0,10)}</th> </tr>
		<tr> <td colspan="4" class="contents">${m.contents}</td> </tr>
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="목록" onClick="return listN()">&emsp;&emsp;
				<% if (role != null){ 
					String str = role;
					if (str.equals("관리자")){ %>
						<input type="button" value="수정" onClick="return editN()">&emsp;&emsp;
						<input type="button" value="삭제" onClick="return delN()">
				<% } } %>
			</td>
		</tr>
	</table>
</div>
</section>

<%@ include file="/include/bottom.jsp" %>