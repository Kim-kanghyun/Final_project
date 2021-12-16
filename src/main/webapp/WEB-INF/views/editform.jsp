<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
</head>
<body>
<form:form commandName="boardVO" method="post" action="../editok">
<form:hidden path="seq"/>
<table id="edit">

		<tr><td>제목</td><td><input type="text" name="title"/></td></tr>
		<tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
		<tr><td>물건명</td><td><input type="text" name="thing"/></td></tr>
		<tr><td>본인 이메일 주소</td><td><input type="text" name="email"/></td></tr>
		<tr><td>내용</td><td><textarea cols="50" rows="5" name="text"></textarea></td></tr>
</table>
<input type="submit" value="수정하기"/>
<input type="button" value="돌아가기" onclick="history.back()"/>
</form:form>

</body>
</html>
