<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="장윤린의 Portfolio"></c:set>
<%@ include file="../common/head.jspf"%>


<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<!-- <script src="jquery.mousewheel.min.js"></script> -->
<!-- <script src="script.js"></script> -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Brush+Script&family=Nanum+Pen+Script&family=Pattaya&display=swap"
	rel="stylesheet">
	
<link href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Urbanist:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">


<script>

$(document).on("click", "#projects", function () {
    $.fn.fullpage.moveTo(3);
  });

</script>




<style>

/* 노말라이즈 */
body, ul, li, h1 {
	margin: 0;
	padding: 0;
	list-style: none;
}

header {
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
	background-color: white; /* 투명한 배경색 설정 */
	opacity: 0; /* 처음에는 투명도를 0으로 설정하여 숨김 */
	transition: opacity 0.5s ease; /* 투명도 변화에 애니메이션 적용 */
}

.fullscreen-video {
	width: 100%;
	height: 970px;
	object-fit: cover;
	display: none;
	margin-bottom: 100px;
	border: none !important;
}

.fullscreen-video.active {
	display: block;
}

.video-container {
	position: relative;
	width: 100%; /* 이 부분을 추가하여 가로 길이를 화면의 100%로 설정합니다. */
}

/* 반응형 비디오 크기 조정 */
@media ( max-width : 991px) {
	.fullscreen-video {
		height: 910px; /* 화면 크기가 991px 이하일 때 비디오의 높이를 줄입니다. */
	}
}

.wavy-tripangle {
	z-index: 999;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-family: "Urbanist", sans-serif;
	color: black;
	text-decoration: none;
}

.wavy-tripangle span {
	position: relative;
	display: inline-block;
	font-size: 100px;
	font-family: "Urbanist", sans-serif;
	color: #fff;
	animation: waviy 3s infinite;
	animation-delay: calc(0.1s * var(--i));
}

/* 반응형 텍스트 크기 조정 */
@media ( max-width : 991px) {
	.wavy-tripangle span {
		font-size: 35px; /* 화면 크기가 991px 이하일 때 텍스트 크기를 줄입니다. */
	}
}

/* ///////////  여기서부터 건드리지마요 ////////////*/

/* ///////////  로고 통통튀는 애니메이션 효과 CSS ////////////*/

/* @keyframes waviy { */
/*   0%, 40%, 100% { a*/
/*     transform: translateY(0); */
/*   } */
/*   20% { */
/*     transform: translateY(-20px); */
/*   } */
/* } */


 @keyframes waviy { 
   0%, 40%, 100% { a
     transform: translateY(0); 
   } 
   20% { 
    transform: translateY(-20px); 
   } 
 } 


/* ///////////  여기까지 건드리지마요 ////////////*/


@media ( max-width : 991px) {
	.scroll-down-sign2, .scroll-down-sign1 {
		font-size: 20px; /* 화면 크기가 991px 이하일 때 텍스트 크기를 줄입니다. */
	}
}

.text {
	position: absolute;
	top: 38%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 40px;
	font-family: "Nanum Brush Script", cursive;
	color: white;
	z-index: 999;
}

/* 반응형 텍스트 크기 조정 */
@media ( max-width : 991px) {
	.text {
		font-size: 20px; /* 화면 크기가 991px 이하일 때 텍스트 크기를 줄입니다. */
		margin-top: 65px;
	}
}

/* 아래부분 */
.section {
	display: flex;
	justify-content: center;
}

/* top-area */
.div-top {
	border-radius: 10px;
	border: none;
	position: relative;
	width: 100%; /* 이 부분을 추가하여 가로 길이를 화면의 100%로 설정합니다. */
	align-items: center;
	padding: 80px 60px;
	max-width: 1280px;
	margin: auto; /* 수평 가운데 정렬합니다. */
	background-image:
		url("https://velog.velcdn.com/images/yunlinit/post/7233e023-f724-4182-916b-1c7c373e4b3a/image.png");
	background-size: cover; /* 배경 이미지를 요소에 맞게 채우기 */
	margin-bottom: 100px;
}

.div-top::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.35); /* 검정색과 투명도 조절 */
	border-radius: 10px;
}

.div-top>* {
	position: relative;
	/* 배경 이미지 위에 있는 모든 요소들의 위치를 상대적으로 설정하여 불투명 필터 위에 겹쳐지도록. */
	z-index: 2; /* 배경 이미지 위에 표시되도록 설정. */
}

@media ( max-width : 991px) {
	.div-top {
		max-width: 100%;
		padding: 0 20px;
	}
}

.comment-and-search-box {
	display: flex; /* Flexbox 사용 */
	justify-content: space-between; /* 요소들을 좌우로 분배 */
	align-items: center; /* 요소들을 세로로 가운데 정렬 */
	gap: 20px; /* 요소 사이의 간격 설정 */
	max-width: 1200px;
	margin: 151px auto 111px; /* 위 아래 여백 설정 */
}

.comment-box {
	gap: 20px;
	display: flex;
	width: 550px;
}

@media ( max-width : 991px) {
	.comment-box {
		flex-direction: column;
		align-items: stretch;
		gap: 0px;
	}
}

.comment {
	color: #fff;
	font: 600 43px/70px Pretendard, sans-serif;
}

@media ( max-width : 991px) {
	.comment {
		position: absolute;
		max-width: 100%;
		font-size: 20px;
		line-height: 1.5;
		width: 100%; /* 너비를 100%로 설정하여 가로로 채웁니다. */
		margin-top: -65px;
		margin-left: 20px;
		margin-right: 30px;
	}
}

.search-area {
	display: flex;
	flex-direction: column;
	line-height: normal;
	width: 39%;
	margin-right: 85px;
}

/* 미디어 쿼리를 사용하여 화면 크기가 작을 때 가운데 정렬 */
@media ( max-width : 991px) {
	.search-area {
		width: 100%; /* 너비를 100%로 설정하여 가로로 채웁니다. */
		display: flex;
		justify-content: center; /* 수평 가운데 정렬 */
	}
}

@media ( max-width : 991px , min-width : 200px) {
	.column-2 {
		width: 100%;
	}
}

.search-area {
	display: flex;
	flex-direction: column;
	line-height: normal;
	width: 39%;
	margin-right: 85px;
	position: relative;
}

/* 미디어 쿼리를 사용하여 화면 크기가 작을 때 가운데 정렬 */
@media ( max-width : 991px) {
	.search-area {
		width: 100%; /* 너비를 100%로 설정하여 가로로 채웁니다. */
		display: flex;
		justify-content: center; /* 수평 가운데 정렬 */
	}
}

@media ( max-width : 991px , min-width : 200px) {
	.column-2 {
		width: 100%;
	}
}

.search-box {
	justify-content: flex-end;
	border-radius: 50px;
	background-color: white;
	display: flex;
	gap: 20px;
	align-self: stretch;
	font-size: 16px;
	color: #3b3d40;
	font-weight: 600;
	width: 100%;
	margin: auto 0;
	padding: 12px 38px;
}

.search-list {
	/*   display: flex; */
	flex-direction: column;
	align-self: stretch;
	font-size: 16px;
	font-weight: 600;
	width: 91%;
	position: absolute;
	top: 120%;
	left: 4.7%;
	max-height: 230px;
	overflow-y: scroll;
	overflow-x: hidden;

	/*    background-color: #fff;  */

	/*   -ms-overflow-style: none; */
	/*   scrollbar-width: none; */
}

@media ( max-width : 991px) {
	.search-box {
		margin-top: 40px;
		display: flex;
		justify-content: center; /* 가로 가운데 정렬 */
		align-items: center; /* 세로 가운데 정렬 */
	}
}

/* 스크롤바 전체 */
.search-list::-webkit-scrollbar {
	width: 20px;
}

/*  스크롤 바 */
.search-list::-webkit-scrollbar-thumb {
	background: #d5f1e2;
	border-radius: 10px;
	border: solid 1px white;
}

/* 스크롤 배경 */
.search-list::-webkit-scrollbar-track {
	/*   background: white;  */
	background-color: rgba(255, 255, 255, 0.7);
	/
	/*   background-color:transparent; */
	/*   opacity: 0.7; */
}

.search-item {
	width: 100%;
	opacity: 0.8;
	cursor: pointer;
	background-color: white;
	transition-duration: 0.5s;
}

.search-item:hover {
	background-color: #d5f1e2;
	opacity: 1;
}

.country-region-name {
	display: flex;
	height: 100%;
	flex-direction: column;
	justify-items: center;
	padding: 5px 10px;
}

.country-name {
	font-weight: 900;
}

.region-name {
	font-weight: 200;
	margin-top: -1px;
}

.search-input {
	font-family: Pretendard, sans-serif;
	font-size: 16px;
	flex-grow: 1;
	flex-basis: auto;
	margin: auto 0;
}

.search-input:focus {
	outline: none; /* 포커스 효과 제거 */
}

@media ( max-width : 991px) {
	.search-input {
		font-size: 9px;
	}
}

.search-btn {
	aspect-ratio: 1;
	object-fit: auto;
	object-position: center;
	width: 24px;
}

/* /////////////////////////// bottom-area */
.div-bottom {
	position: relative;
	width: 100%; /* 이 부분을 추가하여 가로 길이를 화면의 100%로 설정합니다. */
	justify-content: center;
	align-items: start;
	background-color: #fff;
	display: flex;
	flex-direction: column;
	padding: 32px 80px 80px;
	max-width: 1280px;
	margin: auto;
	margin-top: 150px;
	margin-bottom: 90px;
}

@media ( max-width : 991px) {
	.div-bottom {
		padding: 0 20px;
	}
}

.about-trip-angle {
	color: #81c8a2;
	font: 400 24px/28px Pretendard, sans-serif;
}

@media ( max-width : 991px) {
	.about-trip-angle {
		
	}
}

.mint-line1 {
	border-color: rgba(213, 241, 226, 1);
	border-style: solid;
	border-bottom-width: 3px;
	width: 224px;
	height: 2px;
	margin-top: 7px;
}

.trip-style-music-section {
	align-self: stretch;
	margin-top: 14px;
}

@media ( max-width : 991px) {
	.trip-style-music-section {
		max-width: 100%;
	}
}

.div-5 {
	gap: 20px;
	display: flex;
}

@media ( max-width : 991px) {
	.div-5 {
		flex-direction: column;
		align-items: stretch;
		gap: 0px;
	}
}

.trip-box {
	display: flex;
	flex-direction: column;
	line-height: normal;
	width: 35%;
	height: 550px;
	margin-left: 0px;
}

@media ( max-width : 991px) {
	.trip-box {
		width: 100%;
		align-self: center;
	}
}

.trip-box-img {
	disply: flex;
	flex-direction: column;
	overflow: hidden;
	position: relative;
	display: flex;
	aspect-ratio: 0.83;
	flex-grow: 1;
	color: #fff;
	padding: 80px 14px 40px;
	background-image:
		url("https://velog.velcdn.com/images/yunlinit/post/c7f6de86-9665-48f8-8761-21e891ff6532/image.jpg");
	background-size: cover; /* 배경 이미지를 요소에 맞게 채우기 */
	border-radius: 10px;
}

@media ( max-width : 991px) {
	.trip-box-img {
		margin-top: 40px;
	}
}

.trip-title {
	position: relative;
	letter-spacing: -0.8px;
	margin-top: 300px;
	font: 400 40px/96% Urbanist, sans-serif;
}

.trip-comment {
	position: relative;
	margin-top: 9px;
	font: 400 16px/26px Pretendard, sans-serif;
}

.style-box {
	display: flex;
	flex-direction: column;
	line-height: normal;
	width: 35%;
	margin-left: 30px;
}

@media ( max-width : 991px) {
	.style-box {
		width: 100%;
		margin-right: 20px; /* 요소들 사이의 간격을 지정합니다. */
		align-self: center; /* 가운데 정렬 */
	}
}

.style-box-img {
	disply: flex;
	flex-direction: column;
	overflow: hidden;
	position: relative;
	display: flex;
	aspect-ratio: 0.83;
	flex-grow: 1;
	color: #fff;
	padding: 80px 14px 38px;
	background-image:
		url("https://velog.velcdn.com/images/yunlinit/post/9a996b5c-ab8e-4528-b437-7bb7dc254480/image.jpg");
	background-size: cover; /* 배경 이미지를 요소에 맞게 채우기 */
	border-radius: 10px;
}

@media ( max-width : 991px) {
	.style-box-img {
		margin-top: 40px;
		padding-right: 20px;
	}
}

.style-title {
	position: relative;
	letter-spacing: -0.8px;
	margin-top: 300px;
	font: 400 40px/96% Urbanist, sans-serif;
}

.style-comment {
	position: relative;
	margin-top: 9px;
	font: 400 16px/26px Pretendard, sans-serif;
}

.music-box {
	display: flex;
	flex-direction: column;
	line-height: normal;
	width: 35%;
	margin-left: 30px;
}

@media ( max-width : 991px) {
	.music-box {
		width: 100%;
		margin-right: 20px; /* 요소들 사이의 간격을 지정합니다. */
		align-self: center; /* 가운데 정렬 */
	}
}

.music-box-img {
	disply: flex;
	flex-direction: column;
	overflow: hidden;
	position: relative;
	display: flex;
	aspect-ratio: 0.83;
	flex-grow: 1;
	color: #fff;
	padding: 80px 14px 40px;
	background-image:
		url("https://velog.velcdn.com/images/yunlinit/post/83e60ced-f543-4e2e-9f44-04109e4c0fdb/image.jpg");
	background-size: cover; /* 배경 이미지를 요소에 맞게 채우기 */
	border-radius: 10px;
}

@media ( max-width : 991px) {
	.music-box-img {
		margin-top: 40px;
	}
}

.music-title {
	position: relative;
	letter-spacing: -0.8px;
	margin-top: 300px;
	font: 400 40px/96% Urbanist, sans-serif;
}

.music-comment {
	position: relative;
	margin-top: 19px;
	font: 400 16px/26px Pretendard, sans-serif;
}

/* CONTACT US  */
.contactMe {
	background-color: #fff;
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
	padding: 13px 80px 75px;
	margin-top: 100px;
}

@media ( max-width : 991px) {
	.contactMe {
		padding: 0 20px;
	}
}

.title {
	color: #3b3d40;
	margin-top: 75px;
	font: 400 60px/35% Suranna, sans-serif;
}

@media ( max-width : 991px) {
	.title {
		margin-top: 40px;
		font-size: 40px;
	}
}

.message-container {
	position: relative;
	width: 100%;
	display: flex; /* 내부 요소를 가로로 정렬하기 위해 flex 사용 */
	justify-content: center; /* 가로로 가운데 정렬 */
	margin-top: 3%;
}

.message {
	position: absolute;
	color: #3b3d40;
	margin-top: 32px;
	font: 400 20px/28px Urbanist, Helvetica;
	transition: opacity 0.8s ease; /* 투명도에 대한 애니메이션 효과 적용 */
}

.message2 {
	position: absolute;
	color: #3b3d40;
	margin-top: 32px;
	font: 500 17px/28px Pretendard;
	transition: opacity 0.8s ease; /* 투명도에 대한 애니메이션 효과 적용 */
}

.message:hover {
	opacity: 0; /* hover하면 투명도를 0으로 설정하여 message 요소를 숨김 */
}

.message2 {
	opacity: 0; /* 초기에는 숨겨진 상태로 설정 */
	pointer-events: none; /* 초기에는 hover되지 않도록 함 */
}

.message-container:hover .message2 {
	opacity: 1;
	/* .message-container를 hover 했을 때 .message2 요소를 서서히 나타나게 함 */
	pointer-events: auto;
	/* .message-container를 hover 했을 때 hover 효과가 발생하도록 함 */
}

.message-container:hover .message {
	opacity: 0;
	/* .message-container를 hover 했을 때 .message2 요소를 서서히 나타나게 함 */
	pointer-events: auto;
	/* .message-container를 hover 했을 때 hover 효과가 발생하도록 함 */
}

@media ( max-width : 991px) {
	.message {
		max-width: 100%;
		font-size: 12px;
	}
}

@media ( max-width : 991px) {
	.message2 {
		max-width: 100%;
		font-size: 12px;
	}
}

.container {
	perspective: 1000px; /* 시점 설정 */
	margin-top: 19%;
	margin-bottom: 10%;
}

* {
	box-sizing: border-box;
}

.flip {
	position: relative;
}

.flip>.front, .flip>.back {
	display: block;
	transition-timing-function: cubic-bezier(0.175, 0.885, 0.32, 1.275);
	transition-duration: 1s;
	transition-property: transform, opacity;
}

.flip>.front {
	transform: rotateY(0deg);
}

.flip>.back {
	position: absolute;
	opacity: 0;
	top: 0px;
	width: 100%;
	height: 100%;
	transform: rotateY(-180deg);
}

.flip:hover>.front {
	transform: rotateY(180deg);
}

.flip:hover>.back {
	opacity: 1;
	transform: rotateY(0deg);
}

/* custom */
.flip {
	display: inline-block;
	margin-right: 5px;
	margin-bottom: 1em;
	width: 235px;
}

.flip>.front {
	display: block;
	color: white;
	width: inherit;
	background-size: cover !important;
	background-position: center !important;
	height: 350px;
	padding: 5em 2em;
	background: white;
	border-radius: 10px;
}

.flip>.back {
	font-family: Urbanist;
	display: block;
	color: #696969;
	width: inherit;
	background-size: cover !important;
	background-position: center !important;
	height: 350px;
	padding: 5em 2em;
	background: white;
	border-radius: 10px;
	border: solid #ededed 1px;
}

.korean-name {
	font-weight: 500;
	font-size: 25px;
	color: #3b3d40;
	'
}

.name {
	font-family: 'Urbanist';
	font-size: 20px;
	margin-top: 95%;
	font-weight: 500px;
}

.mint-line {
	display: block;
	height: 3px;
	width: 90px;
	background-color: #d5f1e2;
	margin-left: 23.5%;
}

.button {
	margin-top: 50px;
	background-color: #d5f1e2;
	border: solid 1px #d5f1e2;
	/* background-color: rgba(213, 241, 226, 0.3);  */
	/* border: solid 1px rgba(213, 241, 226, 0.3); */
}

.button:hover {
	background-color: #ededed;
	border: solid 1px #ededed;
}

/* 슬라이드 단체사진 */
* {
	box-sizing: border-box;
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none;
}

img {
	vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
	max-width: 400px;
	position: relative;
	margin: auto;
	margin-top: 100px;
	margin-bottom: 80px;
}

/* Caption text */
.caption {
	color: #fff;
	font-size: 23px;
	padding: 8px 12px;
	position: absolute;
	top: 100px;
	width: 100%;
	text-align: center;
	font-weight: 500;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

.active {
	background-color: #717171;
}

/* Fading animation */
/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-duration: 1.5s;
}

/* @-webkit-keyframes fade { */
/*     from { */
/*         opacity: .4; */
/*     } */
/*     to { */
/*         opacity: 1; */
/*     } */
/* } */

/* @keyframes fade { */
/*     from { */
/*         opacity: .4; */
/*     } */
/*     to { */
/*         opacity: 1; */
/*     } */
/* } */
@
-webkit-keyframes fade {from { opacity:.4;
	
}

to {
	opacity: 1;
}

}
@
keyframes fade {from { opacity:.4;
	
}

to {
	opacity: 1;
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 11px
	}
}

.img {
	border-radius: 20px;
}















/* portfolio section */

.content {
  margin-left: auto;
  margin-right: auto;
  max-width: 800px;
}

.content-slide {
  margin-left: auto;
  margin-right: auto;
  max-width: 800px;
}

.content-slide img {
  width: 70%;
}

.fp-controlArrow.fp-next {
  border-color: transparent transparent transparent #ff6363 !important;
  right: 45px !important;
}

.fp-controlArrow.fp-prev {
  border-color: transparent #ff6363 transparent transparent !important;
  left: 45px !important;
}

#fp-nav ul li a span,
.fp-slidesNav ul li a span {
  background: rgba(0, 0, 0, 0.62) !important;
}


.hero__arrow {
	font-size: 2rem;
	color: inherit;
	position: relative;
	z-index: 1;
	bottom: -35px;
	animation: float 1s ease-in-out infinite alternate both;
	position: absolute;
	top: 75%;
	left: 50%;
	color: black;
	z-index: 999;
}

@keyframes float {
	from {
		transform: translateY(-7%);
	}
	to {
		transform: translateY(7%);
	}
}

</style>


<style>
body {
  background: linear-gradient(132deg, #0000, #1665c1);
  background-size: 400% 400%;
  animation: BackgroundGradient 30s ease infinite;
}

h1 {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translateX(-50%) translateY(-50%);
  font-family: Open Sans, sans-serif;
  color: #fff;
  font-weight: 400;
  text-transform: uppercase;
  text-align: center;
  font-size: 2em;
  padding: 5px;
}

@keyframes BackgroundGradient {
  0% {background-position: 0% 50%;}
  50% {background-position: 100% 50%;}
  100% {background-position: 0% 50%;}
}

</style>

</head>

<body>
	<section>
		<div id="container">
			<div class="section">
				<div class="video-container">
<!-- 					<video muted autoplay loop class="fullscreen-video active"> -->
<!-- 						<source src=""> -->
<!-- 					</video> -->
				
					<div class="text">/</div>

					<a href="#" id="wavy-tripangle" class="wavy-tripangle">
						<span style="--i: 1">P</span>
						<span style="--i: 2">o</span>
						<span style="--i: 3">r</span>
						<span style="--i: 4">t</span>
						<span style="--i: 5">f</span>
						<span style="--i: 6">o</span>
						<span style="--i: 7">l</span>
						<span style="--i: 8">i</span>
						<span style="--i: 9">o</span>
					</a>

				</div>
				
				<h1>Gradient Background Animation</h1>

			</div>

			<!-- begin section -->




	<script>

    // Scroll to center function
    const link = document.querySelector("#wavy-tripangle");

    function scrollToCenter(event) {
        event.preventDefault();
        const divTop = document.querySelector(".div-top");
        const windowHeight = window.innerHeight;
        const divTopHeight = divTop.offsetHeight;
        const scrollPosition = divTop.offsetTop - (windowHeight - divTopHeight) / 2;
        window.scrollTo({
            top: scrollPosition,
            behavior: "smooth"
        });
    }

    link.addEventListener("click", scrollToCenter);

    // Scroll animation using jQuery
    $(document).ready(function () {
        var win_h = $(window).height();

        $(".section").each(function (index) {
            $(this).attr("data-index", win_h * index);
        });

        $(".section").on("mousewheel", function (e) {
            var sectionPos = parseInt($(this).attr("data-index"));
            if (e.originalEvent.wheelDelta >= 0) {
                $("html, body")
                    .stop()
                    .animate({ scrollTop: sectionPos - win_h });
                return false;
            } else if (e.originalEvent.wheelDelta < 0) {
                $("html,body")
                    .stop()
                    .animate({ scrollTop: sectionPos + win_h });
                return false;
            }
        });
    });
    
</script>


	<script>
	window.addEventListener('scroll', function() {
		var scroll = window.scrollY;
		var header = document.querySelector('header');

		// 스크롤이 일정 양 이상 되면 헤더를 나타나게 함
		if (scroll > 870) {
			header.style.opacity = 1;
			header.style.backgroundColor = 'white'; // 헤더의 배경색을 흰색으로 변경
		} else {
			header.style.opacity = 0;
			header.style.backgroundColor = 'transparent'; // 헤더의 배경색을 투명으로 변경
		}
	});
	
	</script>




</body>
</html>

<%@ include file="../common/foot.jspf"%>