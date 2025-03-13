<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	tr,
        td,
        th {
            border: 1px solid black;
        }
</style>
</head>
<body>
<div>
	<table style = "border:1px solid black">
		<tr>
			<th colspan="2"><a href class="link">공지사항 게시판 FAQ Qna</a></td>
		</tr>
		<tr>
			<td>
				<a href class="link">JSP</a> <br>
				<a href class="link">Oracle</a> <br>
				<a href class="link">HTML</a> <br>
				<a href class="link">CSS</a> <br>
				</td>
			<td>
			<% String siteName = " "; %>
            <span id="siteName"><%= siteName %></span>
			</td>
		</tr>
		<tr>
			<td colspan="2">Since 2021</td>
		</tr>
	</table>
</div>
	<script>
	document.querySelectorAll('.link').forEach(link => {
    link.addEventListener('click', function(event) {
        event.preventDefault(); 
        let clickedText = this.textContent; 
        document.getElementById('siteName').textContent = clickedText + " 입니다.";
    });
});
</script>
</body>
</html>