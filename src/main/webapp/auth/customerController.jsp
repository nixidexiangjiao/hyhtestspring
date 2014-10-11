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
<script type="text/javascript">
	function loadData() {
		$('#cc').combobox({
			url : 'combobox_data1.json',
			valueField : 'id',
			textField : 'value'
		});
	}
	function setValue() {
		$('#cc').combobox('setValue', 'CO');
	}
	function getValue() {
		var val = $('#cc').combobox('getValue');
		alert(val);
	}
	function disable() {
		$('#cc').combobox('disable');
	}
	function enable() {
		$('#cc').combobox('enable');
	}
</script>
</head>
<body>
	<h2>下拉组合框 - ComboBox</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>
			在组合框尝试自动完成类型。<br>
		</div>
	</div>

	<div style="margin: 10px 0;">
		<a href="#" class="easyui-linkbutton" onclick="loadData()">l加载数据</a> <a
			href="#" class="easyui-linkbutton" onclick="setValue()">设置值</a> <a
			href="#" class="easyui-linkbutton" onclick="getValue()">取得值</a> <a
			href="#" class="easyui-linkbutton" onclick="disable()">禁用</a> <a
			href="#" class="easyui-linkbutton" onclick="enable()">激活</a>
	</div>

	<p>简单的下拉组合框:</p>
	<select id="cc" name="state" style="width: 200px;"
		data-options="required:true">
		<option value="AL">Alabama</option>
		<option value="AK">Alaska</option>
		<option value="AZ">Arizona</option>
		<option value="AR">Arkansas</option>
		<option value="CA">California</option>
		<option value="CO">Colorado</option>
		<option value="CT">Connecticut</option>
		<option value="DE">Delaware</option>
		<option value="FL">Florida</option>
		<option value="GA">Georgia</option>
		<option value="HI">Hawaii</option>
		<option value="ID">Idaho</option>
		<option value="IL">Illinois</option>
		<option value="IN">Indiana</option>
		<option value="IA">Iowa</option>
		<option value="KS">Kansas</option>
		<option value="KY">Kentucky</option>
		<option value="LA">Louisiana</option>
		<option value="ME">Maine</option>
		<option value="MD">Maryland</option>
		<option value="MA">Massachusetts</option>
		<option value="MI">Michigan</option>
		<option value="MN">Minnesota</option>
		<option value="MS">Mississippi</option>
		<option value="MO">Missouri</option>
		<option value="MT">Montana</option>
		<option value="NE">Nebraska</option>
		<option value="NV">Nevada</option>
		<option value="NH">New Hampshire</option>
		<option value="NJ">New Jersey</option>
		<option value="NM">New Mexico</option>
		<option value="NY">New York</option>
		<option value="NC">North Carolina</option>
		<option value="ND">North Dakota</option>
		<option value="OH" selected>Ohio</option>
		<option value="OK">Oklahoma</option>
		<option value="OR">Oregon</option>
		<option value="PA">Pennsylvania</option>
		<option value="RI">Rhode Island</option>
		<option value="SC">South Carolina</option>
		<option value="SD">South Dakota</option>
		<option value="TN">Tennessee</option>
		<option value="TX">Texas</option>
		<option value="UT">Utah</option>
		<option value="VT">Vermont</option>
		<option value="VA">Virginia</option>
		<option value="WA">Washington</option>
		<option value="WV">West Virginia</option>
		<option value="WI">Wisconsin</option>
		<option value="WY">Wyoming</option>
	</select>
</body>
</html>