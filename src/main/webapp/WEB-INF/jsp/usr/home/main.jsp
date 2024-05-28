<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="장윤린의 Portfolio"></c:set>


<%@ include file="../common/head.jspf"%>

<!-- 우클릭 & 드래그 방지 -->
<script type="text/javascript">
        document.oncontextmenu = function() {
            alert("오른쪽 마우스 버튼을 사용할 수 없어용♥"); // 우클릭 시 알림 메시지 표시
            return false; // 기본 우클릭 메뉴를 비활성화
        };
</script>


<style>

header {
   display: none;
}



html,
body {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100%;
    font-family: 'Barlow';
    color: #fff;
}

.box-detail {
    text-align: center;
}

.box-detail .p-title {
    font-size: 120px;
    margin-left: 30px;
    letter-spacing: 2px; 
    font-weight: 700;
}

.box-detail .shot-dest {
    
    font-size: 12px;
    text-transform: uppercase;
    letter-spacing: 3px;
    text-align: center;
}

.box-detail .button {
    margin-top: 18px;
    display: inline-block;
    text-decoration: none;
    letter-spacing: 1px;
    color: #fff;
    padding: 10px 20px;
    border-radius: 10px;
    border: 1px solid rgba(255, 255, 255, 0.6);
    background: linear-gradient(10deg, rgba(0, 0, 0, 0.1) 60%, rgba(255, 255, 255, 0.1) 100%);
}

.common-style {
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: -1;
}

.bg-animation > div {
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: -1;
    will-change: opacity;
    right: 0; /* 추가 */
    bottom: 0; /* 추가 */
}


.bg-animation .bg-1 {
    background: linear-gradient(180deg, #f9dea1 60%, #9bdaff 100%);
}

.bg-animation .bg-2 {
    background: linear-gradient(300deg, #f9c3f5 60%, #9bdaff 100%);
    animation: bg-fade-1 6s linear infinite;
}

.bg-animation .bg-3 {
    background: linear-gradient(10deg, #bab2fc 60%, #9bdaff 100%);
    animation: bg-fade-2 6s linear infinite;
}

@keyframes bg-fade-1 {
    0% {
        opacity: 1;
    }
    33% {
        opacity: 1;
    }
    66% {
        opacity: 0;
    }
    100% {
        opacity: 0;
    }
}

@keyframes bg-fade-2 {
    0% {
        opacity: 1;
    }
    33% {
        opacity: 0;
    }
    66% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}


/* Cursor
********************************************************************* */
/* * {cursor: url(https://ani.cursors-4u.net/symbols/sym-8/sym758.ani), url(https://ani.cursors-4u.net/symbols/sym-8/sym758.png), auto !important;} */
* {cursor: url(https://cur.cursors-4u.net/cursors/cur-9/cur267.cur), auto;}

</style>

</head>


<!-- 우클릭 & 드래그 방지 -->
<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false" onkeydownn="return false">

<div class="bg-animation">
	<div class="bg-1"></div>
	<div class="bg-2"></div>
	<div class="bg-3"></div>
</div>

<div class="box-detail">
	<div class="p-title">Portfolio*</div>
	<div class="shot-dest">I'm a Back-end and Front-end web developer Chang Yun Lin</div>
	<a href="https://yunlinit.github.io/portfolio/" class="button">More about me</a>
<!-- 	<a href="../home/aboutMe" class="button">GO</a> -->
</div>


	<!-- Mouse Cursor
–––––––––––––––––––––––––––––––––––––––––––––––––– -->


<img src="https://cur.cursors-4u.net/cursor.png" border="0" alt="Light Red Pointer" style="position:absolute; top: 0px; right: 0px;" />

</body>
</html>

