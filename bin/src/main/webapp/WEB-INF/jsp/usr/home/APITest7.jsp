<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="API TEST7"></c:set>

<%@ include file="../common/head.jspf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마커 생성하기</title>

</head>
<body>
	<div id="map" style="width: 100%; height: 350px;"></div>

	<p>
		<button onclick="setCenter()">지도 중심좌표 이동시키기</button>
		<button onclick="panTo()">지도 중심좌표 대전으로 이동시키기</button>
	</p>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=06da921fb5b3ede9c345d161a3364b4e"></script>
	<script>
	var lat;
	var lon;
		async function getData2() {
			//const API_KEY = '발급받은 API 키';
			const url = 'https://www.seogu.go.kr/seoguAPI/3660000/getRestRstrt?pageNo=1&numOfRows=1659';
			const response = await fetch(url);
			const data = await response.json();

			// 여기에서 lat과 lon을 설정
			lat = data.response.body.items[10].la;
			lon = data.response.body.items[10].lo;

			console.log(lat);
			console.log(lon);

			// 지도 중심과 마커 위치를 업데이트
			var moveLatLon = new kakao.maps.LatLng(lat, lon);
			map.setCenter(moveLatLon);

			// 마커 생성 및 표시
			var marker = new kakao.maps.Marker({
				position : moveLatLon
			});
			marker.setMap(map);
		}

		// 카카오지도 기본 설정 및 생성
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 기본 중심좌표 설정
			level : 3
		// 지도의 확대 레벨
		};
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		function setCenter() {
			// 이동할 위도 경도 위치를 생성합니다 
			var moveLatLon = new kakao.maps.LatLng(33.452613, 126.570888);

			// 지도 중심을 이동 시킵니다
			map.setCenter(moveLatLon);
		}

		function panTo() {
			// 이동할 위도 경도 위치를 생성합니다 
			var moveLatLon = new kakao.maps.LatLng(lat, lon);

			// 지도 중심을 부드럽게 이동시킵니다
			// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
			map.panTo(moveLatLon);
		}
		

		// 데이터 로딩 및 지도 업데이트 함수 호출
		getData2();
	</script>

</body>
</html>

<%@ include file="../common/foot.jspf"%>