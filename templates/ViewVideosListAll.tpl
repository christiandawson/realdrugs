{include file="_header.tpl" title="Manage Videoss"}

<h1>Manage Videoss</h1>

<p>Below are all Videos records in the system.  
Double click on a row to edit an existing Videos.  
Use the "New Record" button to add a new Videos.</p>

<!-- placeholder for the grid -->
<div id="VideosGridPanel" style="width:780px; height:300px;">
	<div id="VideosGrid" class="ygrid-mso"></div>
</div>

{literal}
<script type="text/javascript" src="scripts/standard_grid.js"></script>
<script type="text/javascript">

var readerDef = [
	 {name: 'Id', mapping: 'Id'}
	,{name: 'Name', mapping: 'Name'}
	,{name: 'SongId', mapping: 'SongId'}
];

var columnDef = [
	  {header: 'Id', dataIndex: 'Id', width: 150, sortable: true}
	 ,{header: 'Name', dataIndex: 'Name', width: 150, sortable: true}
	 ,{header: 'SongId', dataIndex: 'SongId', width: 150, sortable: true}
];

var config = {
	objectName: 'Videos',
	pkName: 'Id',
	columnDef: columnDef,
	readerDef: readerDef,
	gridDiv: 'VideosGrid',
	panelDiv: 'VideosGridPanel',
	autoExpandColumn : 0,
	urlFormat: '{/literal}{$URL->Get('Videos','%s')}{literal}'
};



Ext.onReady(
	function(){StandardGrid.init(config);}, 
	StandardGrid
);

</script>
{/literal}
																																																																																																																																																											
{include file="_footer.tpl"}