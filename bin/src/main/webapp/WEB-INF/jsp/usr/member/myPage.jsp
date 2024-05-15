<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MYPAGE"></c:set>
<%@ include file="../common/head.jspf"%>

<div>1${loginedMember }</div>
<div>2${rq.loginedMember }</div>
<div>${loginedMember.loginId }</div>
<div>${rq.loginedMember.loginId }</div>
<div>${rq.loginedMember.getLoginId() }</div>
<section class="mt-8 text-xl px-4 ">
	<div class="">
		<table class="table-box-1 " border="1">
			<colgroup>
				<col width="200" />
			</colgroup>

			<tbody>
				<tr>
					<th>가입일</th>
					<td>${rq.loginedMember.regDate }</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>${rq.loginedMember.loginId }</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${rq.loginedMember.name }</td>
				</tr>
				<tr>
					<th>닉네임</th>
					<td>${rq.loginedMember.nickname }</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${rq.loginedMember.cellphoneNum }</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${rq.loginedMember.email }</td>
				</tr>
				<tr>
					<th></th>
					<td>
						<a href="../member/checkPw" class="btn btn-active btn-ghost">회원정보 수정</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="btns">
		<button class="btn-text-link btn btn-active btn-ghost" type="button" onclick="history.back();">뒤로가기</button>


	</div>
</section>



<%@ include file="../common/foot.jspf"%>