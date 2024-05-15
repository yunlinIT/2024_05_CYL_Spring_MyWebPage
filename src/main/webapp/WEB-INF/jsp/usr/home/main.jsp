<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value=""></c:set>
<%@ include file="../common/head.jspf"%>

<style>
/* 배경 이미지 스타일 설정 */
.background-image {
	/* 배경 이미지 URL 지정 */
	background-image:
		url('https://velog.velcdn.com/images/yunlinit/post/26409ae5-56ae-46b9-846d-5c9e76f4b1e4/image.png');
	/* 이미지를 가득 채우도록 설정 */
	background-size: cover;
	/* 이미지가 반복되지 않도록 설정 */
	background-repeat: no-repeat;
	/* 이미지의 위치를 가운데 정렬 */
	background-position: center;
	/* 선택적으로 이미지에 대한 기타 스타일을 지정할 수 있습니다. */
	/* 페이지의 전체 높이를 이미지의 높이와 동일하게 설정하여 스크롤이 가능하도록 합니다. */
	height: 100vh;
	/* overflow를 숨겨서 스크롤이 생기지 않도록 합니다. */
	overflow: auto;
}
</style>


<div class="background-image">
	<!-- 이미지 위로 페이지 내용 추가 -->

</div>
<!-- 이미지 아래 페이지 내용 추가 -->



<div class="Section mx-auto" style="width: 1440px; height: 3000px; position: relative">
  <div class="Rectangle1" style="width: 720px; height: 507px; left: 0px; top: 0px; position: absolute; background: rgba(232.69, 215.26, 202.63, 0.19)"></div>
  <div class="Weatherandimg mx-auto" style="width: 1352px; height: 507px; left: 88px; top: 0px; position: absolute">
    <div class="Warm" style="width: 1352px; height: 507px; left: 0px; top: 0px; position: absolute">
      <div style="width: 595px; height: 53px; left: 0px; top: 277px; position: absolute; color: black; font-size: 15px; font-family: Pretendard; font-weight: 200; letter-spacing: 1.50px; word-wrap: break-word">바스락거리는 셔츠 한장만 걸쳐도 햇살의 온기와 시원한 바람이 어우러지는 날 달콤쌉싸름한 커피 한잔이 생각나요.</div>
      <img class="Weather1" style="width: 720px; height: 507px; left: 632px; top: 0px; position: absolute" src="https://via.placeholder.com/720x507" />
    </div>
  </div>
  <div class="Recommends mx-auto" style="width: 595px; height: 189px; left: 88px; top: 88px; position: absolute">
    <div style="width: 595px; height: 24px; left: 0px; top: 165px; position: absolute; color: black; font-size: 10px; font-family: Pretendard; font-weight: 200; letter-spacing: 1px; word-wrap: break-word">크레마는 오늘같은 날씨에 가기 좋은 카페를 추천해드려요.</div>
    <div class="CremaRecommends" style="width: 595px; height: 177px; left: 0px; top: 0px; position: absolute"><span style="color: black; font-size: 80px; font-family: Graditen; font-weight: 400; letter-spacing: 8px; word-wrap: break-word">CREMA<br/></span><span style="color: black; font-size: 64px; font-family: GeosansLight; font-style: italic; font-weight: 500; letter-spacing: 6.40px; word-wrap: break-word">RECOMMENDS</span></div>
  </div>
</div>




<%@ include file="../common/foot.jspf"%>








