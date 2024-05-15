<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="API TEST"></c:set>

<%@ include file="../common/head.jspf"%>

<script>
	
	async function getData() {
		const API_KEY = 'ixQo%2FUislf4YkHMgIBaDkwtFr%2FjmxRZLI55pNfsWntbXQewj3hrI50T6IoARyuZNWhk10ra5m39wMU57zRKeIw%3D%3D';
		const url = 'https://apis.data.go.kr/6300000/openapi2022/shard/getshard?serviceKey='+ API_KEY +'&pageNo=1&numOfRows=5';
		const response = await fetch(url);
		const data = await response.json();
		console.log("data", data);
	}
	
	getData();
	
	async function getData2() {
		const API_KEY = 'ixQo%2FUislf4YkHMgIBaDkwtFr%2FjmxRZLI55pNfsWntbXQewj3hrI50T6IoARyuZNWhk10ra5m39wMU57zRKeIw%3D%3D';
		const url = 'https://www.yuseong.go.kr/ys_parking/ysparkingList/ORP/getJSONData.do?_wadl&type=json';
		const response = await fetch(url);
		const data = await response.json();
		console.log("data", data);
	}
	
	getData2();
	
	
	async function getData3() {
		const API_KEY = 'ixQo%2FUislf4YkHMgIBaDkwtFr%2FjmxRZLI55pNfsWntbXQewj3hrI50T6IoARyuZNWhk10ra5m39wMU57zRKeIw%3D%3D';
		const url = 'https://www.yuseong.go.kr/ys_parking/ysparkingList/ORP/getJSONData.do?_wadl&type=json';
		const response = await fetch(url);
		const data = await response.json();
		console.log("data", data);
	}
	
	
	
	<!DOCTYPE html>
	<html>
	<head>
	    <meta charset="utf-8">
	    <title>지도 생성하기</title>
	    
	</head>
	<body>
	<!-- 지도를 표시할 div 입니다 -->
	<div id="map" style="width:100%;height:350px;"></div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=발급받은 APP KEY를 사용하세요"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	</script>
	</body>
	</html>
	
	getData3();
	
	
	
	
</script>

<%@ include file="../common/foot.jspf"%>