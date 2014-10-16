<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<title>测试</title>
<link
	href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.3.3/themes/default/easyui.css"
	type="text/css" rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.3.3/themes/icon.css"
	type="text/css" rel="stylesheet">
<!-- 引入jQuery -->
<script src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.3.3/jquery.min.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.3.3/jquery.easyui.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/jslib/jquery.cookie.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>
</head>
<body class="easyui-layout">
    <div data-options="region:'north',split:true" style="height:100px;"></div>
    <div title="目录" data-options="region:'west',href:'${pageContext.request.contextPath}/menu.jsp', split:true,collapsible:false" style="width:200px;"></div>
    <div data-options="region:'center',href:'${pageContext.request.contextPath}/centre.jsp'" style="padding:0px;background:#eee;"></div>
</body>
</html>