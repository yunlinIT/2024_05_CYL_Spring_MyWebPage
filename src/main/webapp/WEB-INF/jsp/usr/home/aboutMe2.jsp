<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="장윤린의 Portfolio"></c:set>
<%@ include file="../common/head.jspf"%>



<style>

/* 노말라이즈 */
body, ul, li, h1 {
	margin: 0;
	padding: 0;
	list-style: none;
}

header {
	display: none;
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
	background-color: white; /* 투명한 배경색 설정 */
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

/* ABOUT ME */
.container {
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #fff;
	padding: 72px 60px;
}

@media ( max-width : 991px) {
	.container {
		padding: 0 20px;
	}
}

.content-wrapper {
	background-color: #fff;
	width: 100%;
	max-width: 1000px;
	flex-direction: column;
	align-items: center;
	/*     padding: 57px 80px; */
/* 	     margin-top: -80px;  */
}

@media ( max-width : 991px) {
	.content-wrapper {
		max-width: 100%;
		padding: 0 20px;
	}
}

.content-section {
	width: 953px;
	max-width: 100%;
}

.content-columns {
	display: flex;
	gap: 20px;
}

@media ( max-width : 991px) {
	.content-columns {
		flex-direction: column;
		align-items: stretch;
		gap: 0px;
	}
}

.left-column {
	display: flex;
	flex-direction: column;
	line-height: normal;
	width: 37%;
	margin-left: 0px;
}

@media ( max-width : 991px) {
	.left-column {
		width: 100%;
	}
}

.profile-img {
	aspect-ratio: 0.79;
	object-fit: cover;
	object-position: center;
	width: 300px;
	margin-top: 38px;
	flex-grow: 1;
	border-radius: 20px;
	max-height: 370px;
}

@media ( max-width : 991px) {
	.profile-img {
		margin-top: 40px;
	}
}

.right-column {
	display: flex;
	flex-direction: column;
	line-height: normal;
	width: 63%;
	margin-left: 20px;
}

@media ( max-width : 991px) {
	.right-column {
		width: 100%;
	}
}

.intro-section {
	display: flex;
	flex-grow: 1;
	flex-direction: column;
	font-size: 15px;
	font-weight: 600;
	margin-left: 50px;
}

@media ( max-width : 991px) {
	.intro-section {
		max-width: 100%;
		margin-top: 40px;
	}
}

.intro-header {
	color: #668efd;
	text-align: center;
	align-self: center;
	font: 28px Pretendard, sans-serif;
	font-weight: 600;
}

@media ( max-width : 991px) {
	.intro-header {
		max-width: 100%;
	}
}

.intro-description {
	color: #111;
	text-align: center;
	font-family: Pretendard, sans-serif;
	font-weight: 400;
	line-height: 20px;
	margin-top: 15px;
}

@media ( max-width : 991px) {
	.intro-description {
		max-width: 100%;
	}
}

.info-header {
	color: #111;
	margin-top: 65px;
	font: 20px Pretendard, sans-serif;
	font-weight: 600;
}

@media ( max-width : 991px) {
	.info-header {
		max-width: 100%;
		margin-top: 40px;
	}
}

.contact-info {
	color: #111;
	font-family: Pretendard, sans-serif;
	align-self: start;
	gap: 20px;
	font-weight: 400;
	line-height: 20px;
	justify-content: space-between;

}

.education-header {
	color: #111;
	margin-top: 38px;
	font: 20px Pretendard, sans-serif;
	font-weight: 600;
}

@media ( max-width : 991px) {
	.education-header {
		max-width: 100%;
		margin-top: 40px;
	}
}

.education-details {
	color: #111;
	font-family: Pretendard, sans-serif;
	font-weight: 400;
	line-height: 20px;
	margin-top: -1px;
}

@media ( max-width : 991px) {
	.education-details {
		max-width: 100%;
	}
}

.skills-section {
	margin-top: 8px;
	width: 953px;
	max-width: 100%;
}

.skills-wrapper {
	display: flex;
	gap: 20px;
}

@media ( max-width : 991px) {
	.skills-wrapper {
		flex-direction: column;
		align-items: stretch;
		gap: 0px;
	}
}

.skills-header {
	color: #111;
	margin-top: 20px;
	padding: 0 200px 0 6px;
	font: 600 20px Pretendard, sans-serif;
	margin-top:-35px;
}

@media ( max-width : 991px) {
	.skills-header {
		max-width: 100%;
	}
}

.skills-img {
    aspect-ratio: 0.82;
    object-fit: auto;
    object-position: center;
    width: 330px;
    height: 310px; /* 높이를 원하는 값으로 설정 */
    flex-grow: 1;
    margin-top: -3px;
}


@media ( max-width : 991px) {
	.skills-img {
		margin-top: 40px;
	}
}

.additional-info {
	display: flex;
	flex-direction: column;
	line-height: normal;
	width: 63%;
	margin-left: 20px;
}

@media ( max-width : 991px) {
	.additional-info {
		width: 100%;
	}
}

.section-header {
	display: flex;
	flex-direction: column;
	font-size: 20px;
	color: #111;
	font-weight: 600;

	margin-left: 50px;
}

@media ( max-width : 991px) {
	.section-header {
		max-width: 100%;
		margin-top: 40px;
	}
}

.education-header .extras-header {
	font-family: Pretendard, sans-serif;
	margin-top: 14px;
	font-weight: 600;
}

.education-details {
	margin-top: 1px;
	font: 400 15px/20px Pretendard, sans-serif;
}

.extras-header {
	font-family: Pretendard, sans-serif;
	margin-top: 45px;
	font-weight: 600;
}

.extras-details {
	margin-top: 2px;
	font: 400 15px/20px Pretendard, sans-serif;
}

/* PROJECTS */
</style>

</head>

<body>


	<div id="container">
		<div class="toMain" style="margin-left: 90%; margin-top: 2%;">
			<a href="/usr/home/main" class="button">BACK TO MAIN</a>
		</div>

		<!-- begin section -->
		<div class="section">
			<section class="container">
				<article class="content-wrapper">
					<div class="content-section">
						<div class="content-columns">
							<aside class="left-column">
								<img loading="lazy"
									src="https://cdn.builder.io/api/v1/image/assets/TEMP/82de145c70d67ec4178068b6c1693841486d243bfe6aee2fd6ac8951fa87787b?apiKey=725f06f0daeb4ab382150ea4b4cf3550&"
									class="profile-img" alt="Profile Image" />
							</aside>
							<div class="right-column">
								<section class="intro-section">
									<h1 class="intro-header">
										안녕하세요, 성장하는 웹개발자
										<span>장윤린입니다!</span>
									</h1>
									<p class="intro-description">이 포트폴리오는 제가 걸어온 여정과 끊임없는 발전을 담아냈습니다. 새로운 기술을 배우고 실험하는 것을 즐기며, 개인 프로젝트 뿐만 아니라 팀
										프로젝트 경험을 통해 협업 능력도 키워왔습니다. 앞으로 개발자로서 성장하며 사용자 중심의 서비스를 만들어 나가고 싶습니다.</p>
									<h2 class="info-header">Information</h2>
									<address class="contact-info">
										<p>
											👩🏻‍💻 장윤린
											<br />
											<a href="mailto:yunlinit@gmail.com">✉️ yunlinit@gmail.com</a>
											<br />
											📞 010-4249-0977</a>
											<br />
											<a href="https://github.com/yunlinIT">🐈‍⬛ GitHub</a>
											<br />
											<a href="https://velog.io/@yunlinit/">🧩 Velog</a>
											<br />
											<a href="https://www.youtube.com/@yunlinit">🎬 YouTube</a>
											<br />
										</p>
									</address>
									<h3 class="education-header">교육과정</h3>
									<p class="education-details">
										코리아IT아카데미 Java 과정 | 2023.10.11 ~ 2023.11.07
										<br />
										코리아IT아카데미 DBMS 과정 | 2023.11.08 ~ 2023.12.05
										<br />
										프롬프트AI & Open API & 공공데이터를 활용한 웹/앱 개발자 양성 과정 | 2023.12.07 ~ 2024.05.24
									</p>
								</section>
							</div>
						</div>
					</div>
					<section class="skills-section">
						<div class="skills-wrapper">
							<aside class="left-column">
								<h2 class="skills-header">Skills</h2>
								<img loading="lazy"
									src="https://velog.velcdn.com/images/yunlinit/post/535521e8-26a7-48df-83bc-1971fdb457df/image.png"
									class="skills-img" alt="Skills Image" />
							</aside>
							<div class="additional-info">
								<section class="section-header">
									<h3 class="education-header">학력</h3>
									<p class="education-details">
										University of Wisconsin-Madison (위스콘신주립대학교) | 2008.08 ~ 2009.12
										<br />
										대전국제학교 (고등학교) | 2006.08 ~ 2008.06
									</p>
									<h3 class="extras-header">기타 활동사항</h3>
									<p class="extras-details">
										동아어학원 - 유·초등부 담임강사, 교수부장 | 2017.03 ~ 2023.08
										<br />
										IBT어학원 - 초·중 영어강사 | 2011.08 ~ 2013.11
										<br />
										개인 영어과외 - 초·중·고 영어과외 | 2010.12 ~ 2018.01
									</p>
								</section>
							</div>
						</div>
					</section>
				</article>
			</section>

		</div>

		<!-- end section -->




	</div>






	<script>
		function writeEmailToYunlin() {
			// 여기서는 예시로 mailto 링크를 사용하여 이메일 클라이언트를 열도록 하였습니다.
			// 실제로는 백엔드와의 통신 등을 통해 이메일을 보내는 방법을 구현해야 할 수 있습니다.
			window.location.href = "/usr/home/writeEmailToYunlin";
		}
	</script>


	<script>
		// Scroll animation using jQuery
		// 		$(document).ready(function() {
		// 			var win_h = $(window).height();

		// 			$(".section").each(function(index) {
		// 				$(this).attr("data-index", win_h * index);
		// 			});

		// 			$(".section").on("mousewheel", function(e) {
		// 				var sectionPos = parseInt($(this).attr("data-index"));
		// 				if (e.originalEvent.wheelDelta >= 0) {
		// 					$("html, body").stop().animate({
		// 						scrollTop : sectionPos - win_h
		// 					});
		// 					return false;
		// 				} else if (e.originalEvent.wheelDelta < 0) {
		// 					$("html,body").stop().animate({
		// 						scrollTop : sectionPos + win_h
		// 					});
		// 					return false;
		// 				}
		// 			});
		// 		});
	</script>





	</script>
</body>
</html>

<%@ include file="../common/foot.jspf"%>