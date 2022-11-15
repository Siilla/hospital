<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>
<%@ page import="com.hospital.biz.reply.*" %>

<style>
#qnaEdit {
        width: 80%; min-width:800px;
        min-height:550px;
        margin: 0 auto;
    }
    #qnaEdit > h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #qnaEdit > table {
        width:700px;
        margin: 80px auto 0;
        border-spacing: 0px;
        border: 1px solid #ccc;
        font-size:14px;
    }
    #qnaEdit td.contents {
        height: 300px;
        padding: 20px;
        border: none;
    }
    #qnaEdit td {
        padding: 10px;
        box-sizing:border-box;
        border-bottom: 1px solid #eee;
    }
    #qnaEdit td:nth-child(1){
    	width:100px;
    }
	#qnaEdit td.date{
		text-align:right;
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

    textarea {
        width: 500px;
        height: 100px;
        border: none;
        border-radius: 5px;
        padding: 10px;
        margin: 5px;
        box-sizing:border-box;
        resize: none;
    }
    
    button {
    	display:inline-block;
    	float:right;
        width: 70px;
        height: 70px;
        border: none;
        border-radius: 5px;
        background-color: #368df0;
        margin-top:20px;
        box-sizing:border-box;
        color:#fff;
    } 
    button:hover{
        background-color: #166aca; 
        cursor: pointer;
    }
    .replyL {
    	text-align:left;
        background-color: #eee;
        font-size:13px;
    }
    .replyL > td:nth-child(1){
    	width:200px;
    }
    .replyC { 
    	text-align:center;
        background-color: #ddd;
    }
    span {
    	text-align:right;
    	color:#777;
    	font-size:12px;
    } 
    
</style>
<script  src="http://code.jquery.com/jquery-1.10.2.js" ></script>
<script>
	function listQA(){
		location.href="<%=path%>/qnaList.do";
	}
	function listQ(){
		location.href="<%=path%>/qnaListOne.do?id=${m.id}";
	}
	function delQ(){
		location.href="<%=path%>/anqDelete.do?idx=${m.idx}";
	}
	function editQ(){
		location.href="<%=path%>/qnaEdit.do?idx=${m.idx}";
	}
	var  path='${pageContext.request.contextPath}';
	jQuery.ajaxSetup({cache:false});
	
	$(document).ready( function(){
		$('#saveR').click( function(){
			var dataStr={
					idx : $('#idx').val(),
					replayer : $('#replayer').val(),
					reply : $('#reply').val()
			};
			$.ajax({
				type: "get",
				url : "<%=path%>/ReplyInsert.do",
				data : dataStr,
				success: function (data){
				location.replace(path+"/qnaOne.do?idx="+$('#idx').val()) ;
				}
			})
		})
	}); 
	
	function delR(k1, k2) {
	       $.ajax({
	           url: "<%=path%>/ReplyDelete.do",
	           type:"get",
	           dataType:"text",
	           data:{idx:k1, seq:k2 },
	           success:function(data){
					location.replace(path+"/qnaOne.do?idx="+k1) ;
	           }   
	       })
	}
	
	$(document).on('keyup','#reply',function() {
    	$('#text_count').html("( "+$(this).val().length+"/400 )");
    	if($(this).val().length > 400) {
        	alert("최대 글자수가 초과되었습니다!");
        	$(this).val($(this).val().substring(0, 400));
        }
	});



</script>

<section>
<div id="qnaEdit">
<table>
		<tr> <td>작성자<br><b>${m.id}<b> </td><td colspan=3 class="date">작성일<br><b>${m.qnadate.substring(0,10)}</b></td></tr>
		<tr> <td colspan=4 align="center">${m.title}</td></tr>
		<tr> <td colspan=4 class="contents">${m.contents}</td> </tr>
		
		<!-- qna 댓글 -->
		<c:forEach  items="${li}"  var="m" >
			<tr align="center" class="replyL"> 
			  <td> 
				<c:if test="${m.replayer=='admin'}">관리자</c:if>
				<c:if test="${m.replayer!='admin'}">${m.replayer}</c:if>
			  </td>
			  <td width="450px"> ${m.reply} </td>
			  <td> <fmt:formatDate pattern="yy.MM.dd" value="${m.replyDate}"/> </td>
			  <td>
			  	<c:if test="${m.replayer==id}">
			  		<a href="javascript:void(0);"  onClick="delR(${m.idx},${m.seq})">삭제</a>
			  	</c:if>
			  </td>
			</tr>
		</c:forEach>
		
		<tr> 
			<form>
				<input  type=hidden name=idx id=idx value="${m.idx}" >
				<input  type=hidden name=replayer id=replayer value="<%=id %>" >
				<td colspan=4  align="center" class="replyC">
					<textarea name="reply" id="reply"></textarea>
					<button id="saveR">등록</button>
					<span id=text_count>(0/400)</span>
				</td>
			</form>
		</tr>
		
		<tr>
			<td colspan=4 align="center">
				<% if (role != null){ 
					String str = role;
					if (str.equals("관리자")){ %>
						<input type="button" value="목록" onClick="return listQA()">&emsp;&emsp;		
				<% } else { %>
					<input type="button" value="목록" onClick="return listQ()">&emsp;&emsp;
				<% } } %>
			
				<% if (role != null){ 
					String str = role;
					if (! str.equals("관리자")){ %>
						<input type="button" value="수정" onClick="return editQ()">&emsp;&emsp;
				<% } } %>
			</td>
		</tr>
	</table>
	<form>
	<table>
		<tr><td></td></tr>	
	</table>
	</form>
	</div>
</section>

<%@ include file="/include/bottom.jsp" %>