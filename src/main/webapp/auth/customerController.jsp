<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<script type="text/javascript">
	$(function(){
		$('#customerTable').datagrid({
		    url:'${pageContext.request.contextPath}/customerController/findAll',
		    fit:true,
		    fitColumns:true,
		    title:'客户管理',
		    nowrap:true,
		    border:false,
		    idField:'cstNo',
		    pagination:true,
		    pageSize:10,
		    pageList:[5,10,20,30],
		    columns:[[
		        {field:'cstNo',title:'客户编码',width:200},
		        {field:'cstName',title:'客户名称',width:200},
		        {field:'cstDesc',title:'客户描述',width:200}
		    ]],
		    onLoadSuccess:function(data){
		    	parent.$.messager.progress('close');
		    }
		});
	});
</script>
</head>
<body>
	<table id="customerTable" class="easyui-datagrid"></table>
</body>
</html>