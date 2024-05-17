<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="장윤린의 Portfolio"></c:set>
<%@ include file="../common/head.jspf"%>


<script>
// 페이지가 로드될 때 애니메이션 함수 호출
window.addEventListener("load", function () {
  // 스크롤 이벤트 리스너 추가
  window.addEventListener("scroll", revealText);
  // 페이지 로드 후 한 번 애니메이션 실행
  revealText();
});

function revealText() {
  // .text-column 요소를 선택
  var textColumn = document.querySelector(".text-column");
  // 요소가 화면에 보일 때 애니메이션 적용
  if (isElementInViewport(textColumn)) {
    textColumn.classList.add("reveal");
    // 스크롤 이벤트 리스너 제거 (한 번만 애니메이션 실행)
    window.removeEventListener("scroll", revealText);
  }
}

// 요소가 화면에 보이는지 여부를 확인하는 함수
function isElementInViewport(el) {
  var rect = el.getBoundingClientRect();
  return (
    rect.top >= 0 &&
    rect.left >= 0 &&
    rect.bottom <=
      (window.innerHeight || document.documentElement.clientHeight) &&
    rect.right <= (window.innerWidth || document.documentElement.clientWidth)
  );
}
</script>

<style>
/* 공통 스타일 */
.container {
  background-color: #fff;
  position: fixed; /* 화면 중앙에 고정시킵니다. */
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%); /* 가운데 정렬을 위해 사용합니다. */
  padding: 200px 60px;
}

@media (max-width: 991px) {
  .container {
    padding: 0 20px;
  }
}

.inner-wrapper {
  margin-top: 35px;
  width: 100%;
  max-width: 1566px;
}

@media (max-width: 991px) {
  .inner-wrapper {
    max-width: 100%;
  }
}

.flex-container {
  gap: 20px;
  display: flex;
}

@media (max-width: 991px) {
  .flex-container {
    flex-direction: column;
    align-items: stretch;
    gap: 0px;
  }
}

.text-column {
  display: flex;
  flex-direction: column;
  line-height: normal;
  width: 73%;
  margin-left: 0px;
  /* 텍스트가 처음에 투명하게 설정되도록 합니다. */
  opacity: 0;
  transition: opacity 1s ease;
}

@media (max-width: 991px) {
  .text-column {
    width: 100%;
  }
}

/* reveal 클래스가 추가되면 텍스트가 나타나도록 설정합니다. */
.text-column.reveal {
  opacity: 1;
}

.content-wrapper {
  justify-content: center;
  background-color: #fff;
  display: flex;
  flex-grow: 1;
  flex-direction: column;
  width: 92%;
  padding: 80px 27px;
}

@media (max-width: 991px) {
  .content-wrapper {
    max-width: 100%;
    margin-top: 40px;
    padding: 0 20px;
  }
}

.greeting {
  color: #000; /* #black 대신 #000을 사용합니다. */
  font: 700 50px/120% Roboto, sans-serif;
}

.light-text {
  color: rgba(94, 59, 238, 1);
}

@media (max-width: 991px) {
  .greeting {
    max-width: 100%;
    font-size: 40px; /* size 대신 font-size를 사용합니다. */
  }
}

.description {
  color: var(--Body, #1c1e53);
  font: 400 24px/36px Roboto, sans-serif;
}

@media (max-width: 991px) {
  .description {
    max-width: 100%;
  }
}

.image-column {
  display: flex;
  flex-direction: column;
  line-height: normal;
  width: 18%;
margin-top:-20px;
margin-left: -50px;
}

@media (max-width: 991px) {
  .image-column {
    width: 100%;
  }
}

.responsive-img {
  aspect-ratio: 0.97;
  object-fit: auto;
  object-position: center;
  width: 100%;
  margin-top: 67px;
}

@media (max-width: 991px) {
  .responsive-img {
    margin-top: 60px;
  }
}
</style>

</head>

<body>

<div class="container">
  <div class="inner-wrapper">
    <section class="flex-container">
      <article class="text-column">
        <div class="content-wrapper">
          <h1 class="greeting">
            👋🏼 안녕하세요,
            <span class="light-text">웹개발자</span> 장윤린입니다.
          </h1>
          <p class="description">
            포트폴리오는 제가 걸어온 여정과 끊임없는 발전을 담아냈습니다. 새로운 기술을 배우고 실험하는 것을 즐기며, 개인 프로젝트 뿐만 아니라 팀 프로젝트 경험을 통해 협업 능력도 키워왔습니다. 앞으로 개발자로서 성장하며 사용자 중심의
            서비스를 만들어나가고 싶습니다.
            <br />
          </p>
        </div>
      </article>
      <div class="image-column">
        <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/87d9479f2a58d7e8e6693208480ac0f0c0d46745659eeee9d8bf929383540831?apiKey=725f06f0daeb4ab382150ea4b4cf3550&" class="responsive-img" alt="Image representing 웹개발 자 장윤린" />
      </div>
    </section>
  </div>
</div>

</body>
</html>


<%-- <%@ include file="../common/foot.jspf"%> --%>
