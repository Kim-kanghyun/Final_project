<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<h1>Add New Post</h1>
<form action="addok" method="post">
	<table id="edit">
		
		<tr><td>제목</td><td><input type="text" name="title"/></td></tr>
		<tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
		<tr><td>물건명</td><td><input type="text" name="thing"/></td></tr>
		<tr><td>본인 이메일 주소</td><td><input type="text" name="email"/></td></tr>
		<tr><td>내용</td><td><textarea cols="50" rows="5" name="text"></textarea></td></tr>
		
	</table>
<button type="button" onclick="location.href='list'">목록보기</button>
<button type="submit">등록하기</button>
</form>
</body>
</html>