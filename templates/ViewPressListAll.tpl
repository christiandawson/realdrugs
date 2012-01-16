{include file="_header.tpl" title="Manage Presss"}

<h1>Manage Presss</h1>

<p>Below are all Press records in the system.  
Double click on a row to edit an existing Press.  
Use the "New Record" button to add a new Press.</p>

<!-- placeholder for the grid -->
<div id="PressGridPanel" style="width:780px; height:300px;">
	<div id="PressGrid" class="ygrid-mso"></div>
</div>

{literal}
<script type="text/javascript" src="scripts/standard_grid.js"></script>
<script type="text/javascript">

var readerDef = [
	 {name: 'Id', mapping: 'Id'}
	,{name: 'Title', mapping: 'Title'}
	,{name: 'Body', mapping: 'Body'}
	,{name: 'Author', mapping: 'Author'}
	,{name: 'AlbumId', mapping: 'AlbumId'}
];

var columnDef = [
	  {header: 'Id', dataIndex: 'Id', width: 150, sortable: true}
	 ,{header: 'Title', dataIndex: 'Title', width: 150, sortable: true}
	 ,{header: 'Body', dataIndex: 'Body', width: 150, sortable: true}
	 ,{header: 'Author', dataIndex: 'Author', width: 150, sortable: true}
	 ,{header: 'AlbumId', dataIndex: 'AlbumId', width: 150, sortable: true}
];

var config = {
	objectName: 'Press',
	pkName: 'Id',
	columnDef: columnDef,
	readerDef: readerDef,
	gridDiv: 'PressGrid',
	panelDiv: 'PressGridPanel',
	autoExpandColumn : 0,
	urlFormat: '{/literal}{$URL->Get('Press','%s')}{literal}'
};



Ext.onReady(
	function(){StandardGrid.init(config);}, 
	StandardGrid
);

</script>
{/literal}
																																																																																																																																																											
{include file="_footer.tpl"}