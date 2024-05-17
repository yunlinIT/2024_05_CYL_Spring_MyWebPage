<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="장윤린의 Portfolio"></c:set>
<%@ include file="../common/head.jspf"%>

<script>
	/*----------------------------------------------------*/
	/* Navigation
	 ------------------------------------------------------ */

	$(window).scroll(function() {

		if ($(window).scrollTop() > 300) {
			$('.main_nav').addClass('sticky');
		} else {
			$('.main_nav').removeClass('sticky');
		}
	});

	// Mobile Navigation
	$('.mobile-toggle').click(function() {
		if ($('.main_nav').hasClass('open-nav')) {
			$('.main_nav').removeClass('open-nav');
		} else {
			$('.main_nav').addClass('open-nav');
		}
	});

	$('.main_nav li a').click(function() {
		if ($('.main_nav').hasClass('open-nav')) {
			$('.navigation').removeClass('open-nav');
			$('.main_nav').removeClass('open-nav');
		}
	});

	/*----------------------------------------------------*/
	/* Smooth Scrolling
	 ------------------------------------------------------ */

	jQuery(document).ready(function($) {

		$('.smoothscroll').on('click', function(e) {
			e.preventDefault();

			var target = this.hash, $target = $(target);

			$('html, body').stop().animate({
				'scrollTop' : $target.offset().top
			}, 800, 'swing', function() {
				window.location.hash = target;
			});
		});

	});

	TweenMax.staggerFrom(".heading", 0.8, {
		opacity : 0,
		y : 20,
		delay : 0.2
	}, 0.4);
</script>

<style>
@import url("https://fonts.googleapis.com/css?family=Open+Sans:400,300")
	;

/* Base Styles
********************************************************************* */
html {
	font-size: 62.5%;
}

body {
	font-size: 1.5em;
	line-height: 1.6;
	font-weight: 400;
	font-family: 'Open Sans', Helvetica, Arial, sans-serif;
	color: #222;
}
/* Grid
********************************************************************* */
.container {
	position: relative;
	width: 100%;
	max-width: 960px;
	margin: 0 auto;
	padding: 0 20px;
	box-sizing: border-box;
}

.column, .columns {
	width: 100%;
	float: left;
	box-sizing: border-box;
}

/* For devices larger than 400px */
@media ( min-width : 400px) {
	.container {
		width: 85%;
		padding: 0;
	}
}

/* For devices larger than 550px */
@media ( min-width : 550px) {
	.container {
		width: 80%;
	}
	.column, .columns {
		margin-left: 4%;
	}
	.column:first-child, .columns:first-child {
		margin-left: 0;
	}
	.one.column, .one.columns {
		width: 4.66666666667%;
	}
	.two.columns {
		width: 13.3333333333%;
	}
	.three.columns {
		width: 22%;
	}
	.four.columns {
		width: 30.6666666667%;
	}
	.five.columns {
		width: 39.3333333333%;
	}
	.six.columns {
		width: 48%;
	}
	.seven.columns {
		width: 56.6666666667%;
	}
	.eight.columns {
		width: 65.3333333333%;
	}
	.nine.columns {
		width: 74.0%;
	}
	.ten.columns {
		width: 82.6666666667%;
	}
	.eleven.columns {
		width: 91.3333333333%;
	}
	.twelve.columns {
		width: 100%;
		margin-left: 0;
	}
	.one-third.column {
		width: 30.6666666667%;
	}
	.two-thirds.column {
		width: 65.3333333333%;
	}
	.one-half.column {
		width: 48%;
	}
	/* Offsets */
	.offset-by-one.column, .offset-by-one.columns {
		margin-left: 8.66666666667%;
	}
	.offset-by-two.column, .offset-by-two.columns {
		margin-left: 17.3333333333%;
	}
	.offset-by-three.column, .offset-by-three.columns {
		margin-left: 26%;
	}
	.offset-by-four.column, .offset-by-four.columns {
		margin-left: 34.6666666667%;
	}
	.offset-by-five.column, .offset-by-five.columns {
		margin-left: 43.3333333333%;
	}
	.offset-by-six.column, .offset-by-six.columns {
		margin-left: 52%;
	}
	.offset-by-seven.column, .offset-by-seven.columns {
		margin-left: 60.6666666667%;
	}
	.offset-by-eight.column, .offset-by-eight.columns {
		margin-left: 69.3333333333%;
	}
	.offset-by-nine.column, .offset-by-nine.columns {
		margin-left: 78.0%;
	}
	.offset-by-ten.column, .offset-by-ten.columns {
		margin-left: 86.6666666667%;
	}
	.offset-by-eleven.column, .offset-by-eleven.columns {
		margin-left: 95.3333333333%;
	}
	.offset-by-one-third.column, .offset-by-one-third.columns {
		margin-left: 34.6666666667%;
	}
	.offset-by-two-thirds.column, .offset-by-two-thirds.columns {
		margin-left: 69.3333333333%;
	}
	.offset-by-one-half.column, .offset-by-one-half.columns {
		margin-left: 52%;
	}
}
/* Typography
********************************************************************* */
h1, h2, h3, h4, h5, h6 {
	margin-top: 0;
	margin-bottom: 2rem;
	font-weight: 300;
}

h1 {
	font-size: 4.0rem;
	line-height: 1.2;
	letter-spacing: -.1rem;
}

h2 {
	font-size: 3.6rem;
	line-height: 1.25;
	letter-spacing: -.1rem;
}

h3 {
	font-size: 3.0rem;
	line-height: 1.3;
	letter-spacing: -.1rem;
}

h4 {
	font-size: 2.4rem;
	line-height: 1.35;
	letter-spacing: -.08rem;
}

h5 {
	font-size: 1.8rem;
	line-height: 1.5;
	letter-spacing: -.05rem;
}

h6 {
	font-size: 1.5rem;
	line-height: 1.6;
	letter-spacing: 0;
}

/* Larger than phablet */
@media ( min-width : 550px) {
	h1 {
		font-size: 5.0rem;
	}
	h2 {
		font-size: 4.2rem;
	}
	h3 {
		font-size: 3.6rem;
	}
	h4 {
		font-size: 3.0rem;
	}
	h5 {
		font-size: 2.4rem;
	}
	h6 {
		font-size: 1.5rem;
	}
}

p {
	margin-top: 0;
}
/* Links
********************************************************************* */
a {
	color: #1EAEDB;
}

a:hover {
	color: #0FA0CE;
}
/* Header Section
********************************************************************* */
header {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	width: 100%;
	height: 100vh;
	/* 	background: #e55d87; */
	/* 	background: -moz-linear-gradient(-45deg, #e55d87 0%, #5fc3e4 100%); */
	/* 	background: -webkit-linear-gradient(-45deg, #e55d87 0%, #5fc3e4 100%); */
	/* 	background: linear-gradient(135deg, #e55d87 0%, #5fc3e4 100%); */
	/* 	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e55d87', */
	/* 		endColorstr='#5fc3e4', GradientType=1); */
}

.title {
/* 	-webkit-align-self: center; */
/* 	-ms-flex-item-align: center; */
	align-self: center;
	max-width: 100%;
	text-align: center;
}



@media only screen and (max-height: 700px) {
	.title h1 {
		font-size: 80px;
	}
}

.title p {
	max-width: 600px;
	margin: 0 auto;
	line-height: 150%;
}

@media only screen and (max-width: 500px) {
	.title h1 {
		font-size: 65px;
	}
}

.title .icon {
	color: #FFFFFF;
	font-size: 50px;
}

.main_nav {
	position: fixed;
	top: 0px;
	max-height: 50px;
	z-index: 999;
	width: 100%;
	padding-top: 17px;
	background: none;
	overflow: hidden;
	-webkit-transition: all 0.3s;
	transition: all 0.3s;
	opacity: 0;
	top: -100px;
	padding-bottom: 6px;
}

@media only screen and (max-width: 766px) {
	.main_nav {
		padding-top: 25px;
	}
}

.open-nav {
	max-height: 400px !important;
}

.sticky {
	background-color: #ffffff;
	opacity: 1;
	top: 0px;
}

nav {
	width: 100%;
	margin-top: 5px;
}

@media only screen and (max-width: 766px) {
	nav {
		width: 100%;
	}
}

nav ul {
	list-style: none;
	overflow: hidden;
	text-align: center;
}

@media only screen and (max-width: 766px) {
	nav ul {
		padding-top: 0px;
		margin-bottom: 22px;
		text-align: center;
		width: 100%;
	}
}

nav ul li {
	display: inline-block;
	margin-left: 35px;
	line-height: 1.5;
	letter-spacing: 1px;
}

@media only screen and (max-width: 766px) {
	nav ul li {
		width: 100%;
		padding: 7px 0;
		margin: 0;
	}
	nav ul li:first-child {
		margin-top: 70px;
	}
}

nav ul a {
	text-transform: uppercase;
	font-size: 12px;
	text-decoration: none;
	color: #A58EFF;
}

nav ul a:hover {
	color: #CFCFCF;
}

.mobile-toggle {
	display: none;
	cursor: pointer;
	font-size: 20px;
	position: absolute;
	right: 22px;
	top: 0;
	width: 30px;
}

@media only screen and (max-width: 766px) {
	.mobile-toggle {
		display: block;
	}
}

.mobile-toggle span {
	width: 30px;
	height: 4px;
	margin-bottom: 6px;
	background: #000000;
	display: block;
}

.scroll-down {
	position: absolute;
	left: 50%;
	bottom: 5vh;
	display: block;
	text-align: center;
	font-size: 20px;
	z-index: 100;
	text-decoration: none;
	text-shadow: 0;
	width: 13px;
	height: 13px;
	border-bottom: 2px solid black;
	border-right: 2px solid black;
	z-index: 9;
	-webkit-transform: translate(-50%, 0%) rotate(45deg);
	-moz-transform: translate(-50%, 0%) rotate(45deg);
	transform: translate(-50%, 0%) rotate(45deg);
	-webkit-animation: fade_move_down 2s ease-in-out infinite;
	-moz-animation: fade_move_down 2s ease-in-out infinite;
	animation: fade_move_down 2s ease-in-out infinite;
}

/*animated scroll arrow animation*/
@
-webkit-keyframes fade_move_down { 0% {
	-webkit-transform: translate(0, -10px) rotate(45deg);
	opacity: 0;
}

50




%
{
opacity




:




1


;
}
100




%
{
-webkit-transform




:




translate


(




0
,
10px




)




rotate


(




45deg




)


;
opacity




:




0


;
}
}
@
-moz-keyframes fade_move_down { 0% {
	-moz-transform: translate(0, -10px) rotate(45deg);
	opacity: 0;
}

50




%
{
opacity




:




1


;
}
100




%
{
-moz-transform




:




translate


(




0
,
10px




)




rotate


(




45deg




)


;
opacity




:




0


;
}
}
@
keyframes fade_move_down { 0% {
	transform: translate(0, -10px) rotate(45deg);
	opacity: 0;
}

50




%
{
opacity




:




1


;
}
100




%
{
transform




:




translate


(




0
,
10px




)




rotate


(




45deg




)


;
opacity




:




0


;
}
}
/* About Section
********************************************************************* */
#about {
	padding: 100px 0 100px 0;
}
/* Team Section
********************************************************************* */
#team {
	padding: 50px 0 100px 0;
}

#team .icon {
	font-size: 26px;
}
/* Skills Section
********************************************************************* */
#skills {
	padding: 100px 0 100px 0;
	background-color: ##FCF8FF;
}

.progressBar {
	margin-bottom: 26px;
	margin-bottom: 1.66em;
}

.progressBar h4 {
	font-size: 16px;
	text-transform: none;
	margin-bottom: 7px;
	margin-bottom: .33em;
}

.progressBarContainer {
	width: 100%;
	height: 8px;
	background: #E1E1E1;
	overflow: hidden;
}

.progressBarValue {
	height: 8px;
	float: left;
	background: #e55d87; /* Old browsers */
	background: -moz-linear-gradient(-45deg, #e55d87 0%, #5fc3e4 100%);
	background: -webkit-linear-gradient(-45deg, #e55d87 0%, #5fc3e4 100%);
	background: linear-gradient(135deg, #e55d87 0%, #5fc3e4 100%);
}

.value-00 {
	width: 0;
}

.value-10 {
	width: 10%;
}

.value-20 {
	width: 20%;
}

.value-30 {
	width: 30%;
}

.value-40 {
	width: 40%;
}

.value-50 {
	width: 50%;
}

.value-60 {
	width: 60%;
}

.value-70 {
	width: 70%;
}

.value-80 {
	width: 80%;
}

.value-90 {
	width: 90%;
}

.value-100 {
	width: 100%;
}
/* Portfolio Section
********************************************************************* */
#portfolio {
	padding: 150px 0 200px 0;
}

.image {
	background-color: #5a5a5a;
	width: 100%;
	height: auto;
	margin-left: auto;
	margin-right: auto;
	transition: .5s;
}

.image:hover {
	opacity: 0.6;
	transition: .3s;
	background-image: url(../images/hoverbg.png);
	background-repeat: no-repeat;
	background-position: center;
}

/* Testimonial Section
********************************************************************* */
#testimonial {
	background-color: #F5F5F5;
	padding: 100px 0 100px 0;
}

.quoteLoop {
	height: auto;
	width: 100%;
	margin: 0 auto;
	position: relative;
}

.quote {
	margin: 10px 30px;
	height: inherit;
	top: 0px;
	display: none;
	text-align: center;
}
/* Contact Section
********************************************************************* */
#contact {
	padding: 100px 0 100px 0;
}

input[type="email"], input[type="number"], input[type="search"], input[type="text"],
	input[type="tel"], input[type="url"], input[type="password"], textarea,
	select {
	height: 38px;
	padding: 6px 10px;
	/* The 6px vertically centers text on FF, ignored by Webkit */
	background-color: #F5F5F5;
	border: none;
	box-shadow: none;
	box-sizing: border-box;
	border-radius: 0;
	outline: none;
}

textarea {
	min-height: 250px;
}

input[type="submit"] {
	display: inline-block;
	height: 38px;
	padding: 0 30px;
	color: #fff;
	text-align: center;
	font-size: 11px;
	font-weight: 600;
	line-height: 38px;
	letter-spacing: .1rem;
	text-transform: uppercase;
	text-decoration: none;
	white-space: nowrap;
	background: #5fc3e4;
	border-radius: 0px;
	border: 0;
	cursor: pointer;
	box-sizing: border-box;
}

input[type="submit"]:hover {
	background: #e55d87;
	text-decoration: none;
}
/* Footer Section
********************************************************************* */
footer {
	min-height: 120px;
	padding: 40px 0 40px 0;
	background: #e55d87;
	background: -moz-linear-gradient(-45deg, #e55d87 0%, #5fc3e4 100%);
	background: -webkit-linear-gradient(-45deg, #e55d87 0%, #5fc3e4 100%);
	background: linear-gradient(135deg, #e55d87 0%, #5fc3e4 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e55d87',
		endColorstr='#5fc3e4', GradientType=1);
	box-sizing: border-box;
}

footer p {
	color: #FFFFFF;
	margin: 20px 0 0 0;
}

.socialIcons {
	font-size: 34px;
	color: rgba(255, 255, 255, 0.7);
}
/* Lists
********************************************************************* */
ul {
	list-style: circle inside;
}

ol {
	list-style: decimal inside;
}

ol, ul {
	padding-left: 0;
	margin-top: 0;
}

ul ul, ul ol, ol ol, ol ul {
	margin: 1.5rem 0 1.5rem 3rem;
	font-size: 90%;
}

li {
	margin-bottom: 1rem;
}
/* Spacing
********************************************************************* */
button, .button {
	margin-bottom: 1rem;
}

input, textarea, select, fieldset {
	margin-bottom: 1.5rem;
}

pre, blockquote, dl, figure, table, p, ul, ol, form {
	margin-bottom: 2.5rem;
}
/* Utilities
********************************************************************* */
.u-full-width {
	width: 100%;
	box-sizing: border-box;
}

.u-max-full-width {
	max-width: 100%;
	box-sizing: border-box;
}

.u-pull-right {
	float: right;
}

.u-pull-left {
	float: left;
}
/* Clearing
********************************************************************* */
.container:after, .row:after, .u-cf {
	content: "";
	display: table;
	clear: both;
}
/* Misc
********************************************************************* */
.icon {
	padding-right: 10px;
	color: #e55d87;
}

.block {
	width: 70px;
	height: 2px;
	background: #e55d87; /* Old browsers */
	background: -moz-linear-gradient(-45deg, #e55d87 0%, #5fc3e4 100%);
	background: -webkit-linear-gradient(-45deg, #e55d87 0%, #5fc3e4 100%);
	background: linear-gradient(135deg, #e55d87 0%, #5fc3e4 100%);
	margin-bottom: 50px;
}

/* about 부분 */
.profile-container {
	padding: 0 20px;
}

.profile-content {
	display: flex;
	gap: 20px;
}

@media ( max-width : 991px) {
	.profile-content {
		flex-direction: column;
		align-items: stretch;
		gap: 0;
	}
}

.image-column {
	display: flex;
	flex-direction: column;
	width: 40%;
}

@media ( max-width : 991px) {
	.image-column {
		width: 100%;
	}
}

.profile-image {
	width: 100%;
	flex-grow: 1;
	object-fit: auto;
	object-position: center;
	aspect-ratio: 0.91;
	object-fit: cover;
	border-radius: 20px;
}

@media ( max-width : 991px) {
	.profile-image {
		max-width: 100%;
		margin-top: 40px;
	}
}

.info-column {
	display: flex;
	flex-direction: column;
	width: 63 margin-left: 20px;
	margin-left: 50px;
}

@media ( max-width : 991px) {
	.info-column {
		width: 100%;
	}
}

.profile-info {
	color: #5e3bee;
	padding-top: 39px;
	font: 500 22px/25px Inter, sans-serif;
}

@media ( max-width : 991px) {
	.profile-info {
		max-width: 100%;
		margin-top: 40px;
	}
}

.highlight-text {
	font-family: Pretendard-Regular;
	font-weight: 400;
	/* 	color: rgba(94, 59, 238, 1); */
	color: #A58EFF;
}

.regular-text {
	font-family: Pretendard-Regular;
	color: black;
	font-size: 15px;
	line-height: 5px;
	font-weight: 400;
}

/* intro */
.container2 {
	background-color: #fcf8ff;
	display: flex;
	align-items: center;
	justify-content: center;
/* 	padding: 80px 60px; */
}

@media ( max-width : 991px) {
	.container2 {
		padding: 0 20px;
	}
}

.content-wrapper {
	margin-top: 22px;
	width: 100%;
	max-width: 1535px;
}

@media ( max-width : 991px) {
	.content-wrapper {
		max-width: 100%;
	}
}

.flex-container {
	gap: 20px;
	display: flex;
}

@media ( max-width : 991px) {
	.flex-container {
		flex-direction: column;
		align-items: stretch;
		gap: 0;
	}
}

.text-column {
	display: flex;
	flex-direction: column;
	width: 71%;
	margin-left: 0;
}

@media ( max-width : 991px) {
	.text-column {
		width: 100%;
	}
}

.greeting-section {
	display: flex;
	flex-direction: column;
	margin: auto 0;
}

@media ( max-width : 991px) {
	.greeting-section {
		margin-top: 40px;
	}
}

.greeting-text {
	font: 700 64px/120% Roboto, sans-serif;
}

.highlight {
	color: rgba(94, 59, 238, 1);
}

@media ( max-width : 991px) {
	.greeting-text {
		font-size: 40px;
	}
}

.description {
	color: var(--Body, #1c1e53);
	margin-top: 62px;
	font: 500 24px/36px Roboto, sans-serif;
}

@media ( max-width : 991px) {
	.description {
		margin-top: 40px;
	}
}

.image-column {
	display: flex;
	flex-direction: column;
	width: 29%;
	margin-left: 20px;
}

@media ( max-width : 991px) {
	.image-column {
		width: 100%;
		margin-top: 40px;
	}
}

.profile-image {
	aspect-ratio: 0.85;
	object-fit: auto;
	object-position: center;
	width: 100%;
	flex-grow: 1;
}
</style>

</head>

<body>

	<!-- Header Section
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

	<header id="header">
		<div class="main_nav">
			<div class="container">
				<div class="mobile-toggle">
					<span></span> <span></span> <span></span>
				</div>
				<nav>
					<ul>
						<li><a class="smoothscroll" href="#header">Home*</a></li>
						<li><a class="smoothscroll" href="#about">About*</a></li>
						<li><a class="smoothscroll" href="#skills">Skills*</a></li>
						<li><a class="smoothscroll" href="#portfolio">Projects*</a></li>
						<li><a class="smoothscroll" href="#contact">Contact*</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="title">
			<div class="container2">
				<div class="content-wrapper">
					<div class="flex-container">
						<div class="text-column">
							<div class="greeting-section">
								<h1 class="greeting-text">
									👋🏼 안녕하세요 <span class="highlight">, 웹개발</span> 자 장윤린입니다.
								</h1>
								<p class="description">
									이 포트폴리오는 제가 걸어온 여정과 끊임없는 발전을 담아냈습니다. <br /> 새로운 기술을 배우고 실험하는 것을 즐기며, 개인 프로젝트 뿐만<br /> 아니라 팀 프로젝트 경험을 통해 협업
									능력을 키워왔습니다. 앞으로<br /> 개발자로서 성장하며 사용자 중심의 서비스를 만들어나가고 싶습니다.
								</p>
							</div>
						</div>
						<div class="image-column">
							<img loading="lazy"
								src="https://cdn.builder.io/api/v1/image/assets/TEMP/1c57780b862aa0d1e8f27c380c414913470446adf16e859de1e6f759fcd141c1?apiKey=725f06f0daeb4ab382150ea4b4cf3550&"
								alt="Profile Image" class="profile-image" />
						</div>
					</div>
				</div>
			</div>
			<a class="smoothscroll" href="#about">
				<div class="mouse">
					<div class="wheel"></div>
				</div>
			</a>
		</div>
		<a class="smoothscroll" href="#about">
			<div class="scroll-down"></div>
		</a>
	</header>

	<!-- About Section
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

	<section id="about">
		<div class="container">
			<div class="row">
				<h1>About Me*</h1>
				<div class="block"></div>
			</div>

			<div class="profile-container">
				<div class="profile-content">
					<div class="image-column">
						<img loading="lazy"
							src="https://velog.velcdn.com/images/yunlinit/post/0fc499e7-71b2-486c-a43a-af22895cc62c/image.jpg"
							class="profile-image" alt="Profile image of 장윤린" />
					</div>
					<div class="info-column">
						<div class="profile-info">
							<p class="highlight-text">이름</p>
							<p class="regular-text">장윤린</p>
							<p class="highlight-text">교육과정</p>
							<p class="regular-text">코리아IT아카데미 Java 과정 | 2023.10.11 ~ 2023.11.07</p>
							<p class="regular-text">코리아IT아카데미 DBMS 과정 | 2023.11.08 ~ 2023.12.05</p>
							<p class="regular-text">프롬프트 AI & Open API & 공공데이터를 활용한 웹/앱 개발자 양성 과정</p>
							<p class="regular-text">&nbsp;&nbsp;&nbsp;&nbsp;| 2023.12.07 ~ 2024.05.24</p>
							<p class="highlight-text">학력</p>
							<p class="regular-text">University of Wisconsin-Madison (위스콘신주립대학교)</p>
							<p class="regular-text">&nbsp;&nbsp;&nbsp;&nbsp;| 2008.08 ~ 2009.12</p>
							<p class="regular-text">대전국제학교(고등학교) | 2006.08 ~ 2008.06</p>
							<p class="highlight-text">기타 활동 사항</p>
							<p class="regular-text">동아어학원 - 유·초등부 담임강사, 교수부장 | 2017.03 ~ 2023.08</p>
							<p class="regular-text">IBT어학원 - 초·중 영어강사 | 2011.08 ~ 2013.11</p>
							<p class="regular-text">개인 영어과외 - 초·중·고 영어과외 | 2010.12 ~ 2018.01</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>



	<!-- Skills Section
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

	<section id="skills">
		<div class="container">
			<h1>My Skills*</h1>
			<div class="block"></div>
		</div>
		<img src="https://velog.velcdn.com/images/yunlinit/post/20c2bddd-7b09-4b00-a034-7734f838500c/image.png"
			style="width: 100%;" alt="Services Image">
		</div>
	</section>


	<!-- Portfolio Section
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

	<section id="portfolio">
		<div class="container">
			<div class="row">
				<h1>My Projects</h1>
				<div class="block"></div>
				<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et
					dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita
					kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
			</div>
			<div class="row">
				<div class="three columns">
					<img src="http://placehold.it/220x220" width="220" height="220" alt="" />
					<h4>Naruto Uzumaki</h4>
					<p>Creative Director</p>
					<span class="typcn typcn-social-facebook-circular icon"></span><span
						class="typcn typcn-social-instagram-circular icon"></span><span
						class="typcn typcn-social-google-plus-circular icon"></span><span
						class="typcn typcn-social-linkedin-circular icon"></span>
				</div>
				<div class="three columns">
					<img src="http://placehold.it/220x220" width="220" height="220" alt="" />
					<h4>Sasuke Uchiha</h4>
					<p>Lead Designer</p>
					<span class="typcn typcn-social-facebook-circular icon"></span><span
						class="typcn typcn-social-instagram-circular icon"></span><span
						class="typcn typcn-social-google-plus-circular icon"></span><span
						class="typcn typcn-social-linkedin-circular icon"></span>
				</div>
				<div class="three columns">
					<img src="http://placehold.it/220x220" width="220" height="220" alt="" />
					<h4>Shikamaru Nara</h4>
					<p>Designer</p>
					<span class="typcn typcn-social-facebook-circular icon"></span><span
						class="typcn typcn-social-instagram-circular icon"></span><span
						class="typcn typcn-social-google-plus-circular icon"></span><span
						class="typcn typcn-social-linkedin-circular icon"></span>
				</div>
				<div class="three columns">
					<img src="http://placehold.it/220x220" width="220" height="220" alt="" />
					<h4>Sakura Haruno</h4>
					<p>Designer</p>
					<span class="typcn typcn-social-facebook-circular icon"></span><span
						class="typcn typcn-social-instagram-circular icon"></span><span
						class="typcn typcn-social-google-plus-circular icon"></span><span
						class="typcn typcn-social-linkedin-circular icon"></span>
				</div>
			</div>
		</div>
	</section>



	<!-- Contact Section
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

	<section id="contact">
		<div class="container">
			<h1>Contact</h1>
			<div class="block"></div>
			<form>
				<div class="row">
					<div class="six columns">
						<label for="exampleRecipientInput">Name</label> <input class="u-full-width" type="text">
					</div>
					<div class="six columns">
						<label for="exampleEmailInput">Email</label> <input class="u-full-width" type="email">
					</div>
				</div>
				<div class="row">
					<label for="exampleMessage">Message</label>
					<textarea class="u-full-width"></textarea>
					<input class="button-primary" type="submit" value="Submit">
				</div>
			</form>
		</div>
	</section>

	<!-- Footer Section
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

	<footer>
		<div class="container">
			<div class="nine columns">
				<p>Created with love by Jeff.</p>
			</div>
			<div class="three columns">
				<span class="typcn typcn-social-facebook-circular socialIcons"></span> <span
					class="typcn typcn-social-instagram-circular socialIcons"></span> <span
					class="typcn typcn-social-google-plus-circular socialIcons"></span> <span
					class="typcn typcn-social-linkedin-circular socialIcons"></span>
			</div>
		</div>
	</footer>

</body>
</html>


