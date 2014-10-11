<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试</title>

<!-- 引入jQuery -->
<script src="${pageContext.request.contextPath}/jslib/jquery-1.8.3.js"
	type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/jslib/jquery.cookie.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			type : 'POST',
			url : '${pageContext.request.contextPath}/customerController/findAll',
			dataType : "json",
			success : function(msg){
				console.log(msg);
			}
		});
	});
</script>
</head>
<body>就是一个测试aaa
</body>
</html>