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



<style>

:root {
	--colorText: #192a56;
	--colorContrast: #f5f6fa;
	--colorAccent: #487eb0;
}

html {
	height: 100%;
}

body {
	background: var(--colorContrast);
	color: var(--colorText);
	height: 100%;
	font: 800 100%/1.3 "Urbanist", serif;
	margin: 0;
}

*,
*::before,
*::after {
	box-sizing: border-box;
}

* > * + * {
	margin-top: 1.25em;
}

.hero {
	min-height: 100vh;
	position: relative;
	display: grid;
	align-content: center;
	justify-items: stretch;
	padding: 4%;
}

.hero::after,
.hero::before {
	content: "";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: -1;
}

.hero::after {
	background: var(--colorContrast);
	opacity: .2;
	mix-blend-mode: lighten;
}

.hero::before {
	background: var(--colorText);
	opacity: .5;
	mix-blend-mode: color;
}

.hero__mask {
	opacity: 0;
	position: absolute;
}

.hero__content {
	max-width: 75ch;
	margin: 0 auto;
	text-align: center;
}

.hero__title {
	margin-top: 30px;
	font-size: clamp(3rem, 10vw, 6rem);
	line-height: .9;
	opacity: 0;
	transform: translateY(var(--translateAmount));
	transition: opacity var(--ease) var(--durationM) var(--durationM),
		transform var(--ease) var(--durationM) var(--durationM);
	text-shadow: 0 .1em 1em var(--colorContrast);
}

.hero--animated .hero__title {
	opacity: 1;
	transform: translateY(0);
}

.hero__title span {
	display: block;
}

.hero__arrow {
	display: inline-block;
	font-size: 2rem;
	color: inherit;
	position: relative;
	z-index: 1;
	bottom: -35px;
	animation: float 1s ease-in-out infinite alternate both;
}

.hero__figure {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	margin: 0;
	z-index: -2;
	transition: transform var(--ease) var(--durationL);
	overflow: hidden;
}

.hero__figure video {
	object-fit: cover;
	width: 100%;
	min-height: 100%;
	height: auto;
	transition: transform var(--ease) var(--durationL),
		opacity var(--ease) var(--durationS);
}

.hero__figure--bg {
	transform: scale(1);
}

.hero__figure--bg::after {
	content: "";
	display: block;
	background: white;
	position: absolute;
	inset: 0;
	opacity: .15;
	mix-blend-mode: lighten;
}

.hero__figure--fg {
	clip-path: url(#clip);
	width: auto;
	height: 100%;
	aspect-ratio: 1/1;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

.hero__figure--fg video {
	transform: scale(1.15);
}

@keyframes float {
	from {
		transform: translateY(-15%);
	}
	to {
		transform: translateY(15%);
	}
}

</style>

</head>

<section class="hero hero--animated">
		<div class="hero__content">
			<h1 class="hero__title">
				<span class="hero__title-text hero__title-text--top">
					cookie
				</span>
				<span class="hero__title-text hero__title-text--bottom">
					dough 
				</span>
			</h1>
			
			<span class="hero__arrow" aria-hidden="true">
				▼
			</span>
		</div>
		<figure class="hero__figure hero__figure--bg" aria-hidden="true">
			<video width="320" height="240" loop muted playsinline autoplay>
				<source src="https://assets.codepen.io/1366040/clouds.mp4" type="video/mp4">
				Your browser does not support the video tag.
			</video>
			<figcaption>
				A video of a man running across a street.
			</figcaption>
		</figure>

		<figure class="hero__figure hero__figure--fg" aria-hidden="true" mask="url(#mask1)">
			<video width="320" height="240" loop muted playsinline autoplay>
				<source src="https://assets.codepen.io/1366040/clouds.mp4" type="video/mp4">
				Your browser does not support the video tag.
			</video>
		</figure>


		<svg viewBox="0 0 1 1" width="1" height="1" preserveAspectRatio="xMidYMid slice" class="hero__mask">
			<!-- 
			   To make the clip path scalable, you need to have all the coords in the <0,1> range.
			   If you have a more intricate shape, instead of rewriting the paths, you can apply a transform to a group of elements:
			   transform="scale(x, y)"
			   where x = 1 / viewBox width
			   and y = 1 / viewBox height
	 		-->
			<clipPath id="clip" clipPathUnits="objectBoundingBox">
				<circle cx="0.5" cy="0.5" r="0.49" />
			</clipPath>
		</svg>
	</section>
