<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/top.jsp" %>
<style>
	#banner {
		width:100%;
	    background-color: #d6d6d6;
	}
    #banner > div {
        width: 80%; min-width:800px;
        height:400px;
        margin: 0 auto;
    
        background-image:url("./img/img03.jpg");
        background-size:100%;
    }

    #booking > a {
        display: inline-block;
        width:250px; height:60px;
        line-height: 60px;
        text-align: center;
        font-size: 18px;
        letter-spacing:10px;
        background-color:#166aca;
        color: #fff;
		border-radius:15px;
    }
    #booking > a:hover {
        background-color:#195aa5;
    }

    #map_kakao {
		width:800px;
        min-height: 400px;
        margin: 0 auto;
        padding:30px;
        box-sizing: border-box;
    }
    #map_kakao #map {
        width: 350px;
        height: 350px;
        float: left;
        padding: 10px;
        border:3px solid #ddd;
        box-sizing: border-box;
    }
    #map_kakao .map_info {
        display: inline-block;
        width: 350px;
        height: 200px;
        padding: 40px;
        margin-bottom:50px;
        box-sizing: border-box;
    }
</style>  

<!-- 중부 -->
<section>
    <div id="banner">
    	<div></div>
    </div>
    <div id="map_kakao">
	        <div id="map"></div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=877f4a36a4ba46e982fa5861bf1a5d9b"></script>
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = { 
				        center: new kakao.maps.LatLng(37.4922173, 126.8849478), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };
				var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
				// 마커가 표시될 위치입니다 
				var markerPosition  = new kakao.maps.LatLng(37.4922173, 126.8849478);
				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});
				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
			</script>
        <div class="map_info">
            <h2>오시는 길</h2><br>
            <p> 서울 구로구 구로동로 148 </p><br>
            <p> 지하철 7호선, 1호선 이용하여 남구로역, 구로역에서 하차 후 우리은행 방향으로 도보이용.</p>
        </div>
        <div id="booking" align="center">
    	<% if(id != null){ %>
    		<a href="<%=path %>/booking/form.jsp"> 예약하기 </a>
		<% } else { %>
			<a href="<%=path %>/login/login.jsp"> 예약하기 </a> <% } %>
		</div>
    </div>
    
</section>

<%@ include file="./include/bottom.jsp" %>