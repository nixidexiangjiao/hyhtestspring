<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<
<script type="text/javascript">
	function addTab(params) {
		var iframe = '<iframe src="' + params.url + '" frameborder="0" style="border:0;width:100%;height:98%;"></iframe>';
		var t = $('#layout_center_tabs');
		var opts = {
			title : params.title,
			closable : true,
			iconCls : params.iconCls,
			content : iframe,
			border : false,
			fit : true
		};
		if (t.tabs('exists', opts.title)) {
			t.tabs('select', opts.title);
			parent.$.messager.progress('close');
		} else {
			t.tabs('add', opts);
		}
	}
	
	function _addTab(url,title,iconCls){
		var _url;
		if (url.indexOf('/') == 0) {/*如果url第一位字符是"/"，那么代表打开的是本地的资源*/
			_url = '${pageContext.request.contextPath}' + url;
			if (url.indexOf('/druidController') == -1 && url.indexOf('/monitoring') == -1 && url.indexOf('/Report') == -1) {/*如果不是druid相关的控制器连接，那么进行遮罩层屏蔽*/
				parent.$.messager.progress({
					title : '提示',
					text : '数据处理中，请稍后....'
				});
			}
		} else {/*打开跨域资源*/
			_url = url;
		}
		addTab({
			url : _url,
			title : title,
			iconCls : iconCls
		});
	}
</script>
<div>
	<ul id="main_menu" class="easyui-tree">
		<li><span>系统设置</span>
			<ul>
				<li><span>用户管理</span>
				<li><span>角色管理</span></li>
				<li><span><a onclick="_addTab('/auth/customerController.jsp', '客户管理','')">客户管理</a></span></li>
			</ul></li>
	</ul>
</div>