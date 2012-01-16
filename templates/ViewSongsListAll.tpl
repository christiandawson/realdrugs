{include file="_header.tpl" title="Manage Songss"}

<h1>Manage Songss</h1>

<p>Below are all Songs records in the system.  
Double click on a row to edit an existing Songs.  
Use the "New Record" button to add a new Songs.</p>

<!-- placeholder for the grid -->
<div id="SongsGridPanel" style="width:780px; height:300px;">
	<div id="SongsGrid" class="ygrid-mso"></div>
</div>

{literal}
<script type="text/javascript" src="scripts/standard_grid.js"></script>
<script type="text/javascript">

var readerDef = [
	 {name: 'Id', mapping: 'Id'}
	,{name: 'Name', mapping: 'Name'}
	,{name: 'Length', mapping: 'Length'}
	,{name: 'LyricArt', mapping: 'LyricArt'}
	,{name: 'AlbumId', mapping: 'AlbumId'}
];

var columnDef = [
	  {header: 'Id', dataIndex: 'Id', width: 150, sortable: true}
	 ,{header: 'Name', dataIndex: 'Name', width: 150, sortable: true}
	 ,{header: 'Length', dataIndex: 'Length', width: 150, sortable: true}
	 ,{header: 'LyricArt', dataIndex: 'LyricArt', width: 150, sortable: true}
	 ,{header: 'AlbumId', dataIndex: 'AlbumId', width: 150, sortable: true}
];

var config = {
	objectName: 'Songs',
	pkName: 'Id',
	columnDef: columnDef,
	readerDef: readerDef,
	gridDiv: 'SongsGrid',
	panelDiv: 'SongsGridPanel',
	autoExpandColumn : 0,
	urlFormat: '{/literal}{$URL->Get('Songs','%s')}{literal}'
};



Ext.onReady(
	function(){StandardGrid.init(config);}, 
	StandardGrid
);

</script>
{/literal}
																																																																																																																																																											
{include file="_footer.tpl"}