<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/top.jsp" %>
<style>
    #booking {
        width: 80%; min-width:800px;
        min-height:500px;
        margin: 0 auto;
    }
    h2 {
        text-align: center;
        font-size: 20px;
        margin: 40px;
        color: #303030;
    }
    #booking table {
        border: 1px solid #aaa;
        border-radius: 5px;
        width:400px;
        margin: auto;
    }
    
    .thead {
        width: 40%;
        text-align: center;
        font-weight: bold;
        border-bottom: 1px solid #eee;
    } 
    
    td {
        height: 20px;
        line-height: 20px;
        padding: 10px;
        box-sizing: border-box;
        border-bottom: 1px solid #eee;
    }

    input[type=text] {
        width: 150px;
        height: 20px;
        line-height: 20px;
        padding: 5px;
        border: none;
        border-radius: 5px;
        background-color: #f0f0f0;
    }
     input[type=submit] {
        width: 200px;
        height: 40px;
        margin: 10px 0;
        font-weight: 600;
        font-size: 17px;
        color: #fff;
        background-color: #166aca;
        border: none;
        border-radius: 10px;
    } 
    input[type=submit]:hover{
        background-color: #368df0;
        cursor: pointer;
    } 
</style>
<!-- 달력 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
    $(document).ready(function () {
         $.datepicker.setDefaults($.datepicker.regional['ko']); 
         $( "#b_date" ).datepicker({
              changeMonth: true, 
              changeYear: true,
              nextText: '다음 달',
              prevText: '이전 달', 
              dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
              dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
              monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
              monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
              dateFormat: "yymmdd",
              minDate: 0,
              maxDate: 30
         });
    });
    
    
    function ck(){
		if(f1.b_date.value==""){
			   alert("예약일자를 선택해주세요");
			   f1.b_date.focus();
			   return false;
		   }
		if(f1.doc.value==""){
			   alert("담당의를 선택해주세요");
			   return false;
		   }
		alert("예약이 완료되었습니다");		
	}
</script>
<section>
	<div id="booking">
		<h2> 예약하기 </h2>
		<form action="<%=path %>/bookingInsert.do" name="f1" onSubmit="return ck()" method="post">
		<table>
			<tr>
			<input type=hidden name="id" value="<%=id%>">
			<tr><th class="thead">예약자</th><td><%=name %>님</td></tr>
			</tr>
			<tr>
				<th class="thead">예약날짜</th>
				<td><input id="b_date" name="b_date" type="text" /></td>
			</tr>
			<tr>
			<th class="thead">예약시간</th>
			<td>
				<select name="b_time">
					<option value="A">오전 10:30</option>
					<option value="B">오전 11:30</option>
					<option value="C">오후 1:30</option>
					<option value="D">오후 2:30</option>
					<option value="E">오후 3:30</option>
				</select>
				</td>
			</tr>
			<tr>
			<th class="thead">담당의사</th>
				<td>
					<input name="doc" type="radio" value="docA" >김의사 &emsp;
					<input name="doc" type="radio" value="docB" >이의사
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="예약하기" /></td>
			</tr>
		</table>
		</form>
	</div>
</section>
<%@ include file="../include/bottom.jsp" %>