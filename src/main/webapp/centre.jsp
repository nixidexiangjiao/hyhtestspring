<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	$('#layout_center_tabsMenu').menu({
			onClick : function(item) {
			var curTabTitle = $(this).data('tabTitle');
			var type = $(item.target).attr('type');
	
			if (type === 'refresh') {
				layout_center_refreshTab(curTabTitle);
				return;
			}
	
			if (type === 'close') {
				var t = $('#layout_center_tabs').tabs('getTab', curTabTitle);
				if (t.panel('options').closable) {
					$('#layout_center_tabs').tabs('close', curTabTitle);
				}
				return;
			}
	
			var allTabs = $('#layout_center_tabs').tabs('tabs');
			var closeTabsTitle = [];

			$.each(allTabs, function() {
				var opt = $(this).panel('options');
				if (opt.closable && opt.title != curTabTitle && type === 'closeOther') {
					closeTabsTitle.push(opt.title);
				} else if (opt.closable && type === 'closeAll') {
					closeTabsTitle.push(opt.title);
				}
			});

			for ( var i = 0; i < closeTabsTitle.length; i++) {
				$('#layout_center_tabs').tabs('close', closeTabsTitle[i]);
			}
		}
	});

	$('#layout_center_tabs').tabs({
		fit : true,
		border : false,
		onContextMenu : function(e, title) {
			e.preventDefault();
			$('#layout_center_tabsMenu').menu('show', {
				left : e.pageX,
				top : e.pageY
			}).data('tabTitle', title);
		}
	});
	
	function layout_center_refreshTab(title) {
		$('#layout_center_tabs').tabs('getTab', title).panel('refresh');
	}
	
</script>
<div id="layout_center_tabs" style="overflow: hidden;">
	<div title="首页"
		data-options="href:'${pageContext.request.contextPath}/main.jsp'"
		style="overflow-x: hidden"></div>
</div>
<div id="layout_center_tabsMenu" style="width: 120px;display:none;">
	<div type="refresh">刷新</div>
	<div class="menu-sep"></div>
	<div type="close">关闭</div>
	<div type="closeOther">关闭其他</div>
	<div type="closeAll">关闭所有</div>
</div>