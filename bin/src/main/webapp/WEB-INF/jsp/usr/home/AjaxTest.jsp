<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="AjaxTestPage"></c:set>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>AjaxTestPage</title>
<style type="text/css">
.rs {
	border: 5px solid black;
	margin-top: 10px;
	padding: 20px;
	font-size: 3rem;
}

.rs-msg {
	border: 5px solid green;
	margin-top: 10px;
	padding: 20px;
	font-size: 3rem;
}

.rs-code {
	border: 5px solid gold;
	margin-top: 10px;
	padding: 20px;
	font-size: 3rem;
}
</style>
<!-- 제이쿼리 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
	function callByAjax() {
		var form = document.form1;

		var num1 = form.num1.value;
		var num2 = form.num2.value;
		var action = form.action;

		$.get(action, {
			num1 : num1,
			num2 : num2
		}, function(data) {
			$('.rs').text(data);
		}, 'html');

	}

	function callByAjaxV2() {
		var form = document.form1;

		var num1 = form.num1.value;
		var num2 = form.num2.value;
		var action = form.action;

		$.get(action, {
			num1 : num1,
			num2 : num2
		}, function(data) {
			data = data.split('/');
			var rs = data[0];
			var msg = data[1];
			$('.rs').text(rs);
			$('.rs-msg').text(msg);

		}, 'html');

	}

	function callByAjaxV3() {
		var form = document.form1;

		var num1 = form.num1.value;
		var num2 = form.num2.value;
		var action = form.action;

		$.get(action, {
			num1 : num1,
			num2 : num2
		}, function(data) {
			data = data.split('/');
			var rs = data[0];
			var msg = data[1];
			var code = data[2];
			$('.rs').text(rs);
			$('.rs-msg').text(msg);
			$('.rs-code').text(code);

		}, 'html');

	}

	function callByAjaxV4() {
		var form = document.form1;

		var num1 = form.num1.value;
		var num2 = form.num2.value;
		var action = form.action;

		$.get('./doPlusJson', {
			num1 : num1,
			num2 : num2
		}, function(data) {
	
			$('.rs').text(data.rs);
			$('.rs-msg').text(data.msg);
			$('.rs-code').text(data.code);

		}, 'json');

	}
</script>
</head>
<body>
	<h1>AjaxTestPage</h1>

	<form name="form1" method="POST" action="./doPlus">
		<div>
			<input type="text" name="num1" placeholder="정수 입력" />
		</div>
		<div>
			<input type="text" name="num2" placeholder="정수 입력" />
		</div>
		<input type="submit" value="더하기v1" />
		<input onclick="callByAjax();" type="button" value="더하기v2" />
		<input onclick="callByAjaxV2();" type="button" value="더하기v3" />
		<input onclick="callByAjaxV3();" type="button" value="더하기v4" />
		<input onclick="callByAjaxV4();" type="button" value="더하기v5" />
	</form>

	<h2>더한 결과</h2>
	<div class="rs"></div>
	<h2>더한 결과 메세지</h2>
	<div class="rs-msg"></div>
	<h2>더한 결과 코드</h2>
	<div class="rs-code"></div>
</body>
</html>