{include file="_header.tpl" title="Manage FanArts"}

<h1>Manage FanArts</h1>

<p>Below are all FanArt records in the system.  
Double click on a row to edit an existing FanArt.  
Use the "New Record" button to add a new FanArt.</p>

<!-- placeholder for the grid -->
<div id="FanArtGridPanel" style="width:780px; height:300px;">
	<div id="FanArtGrid" class="ygrid-mso"></div>
</div>

{literal}
<script type="text/javascript" src="scripts/standard_grid.js"></script>
<script type="text/javascript">

var readerDef = [
	 {name: 'Id', mapping: 'Id'}
	,{name: 'Image', mapping: 'Image'}
	,{name: 'Submitter', mapping: 'Submitter'}
	,{name: 'AlbumId', mapping: 'AlbumId'}
];

var columnDef = [
	  {header: 'Id', dataIndex: 'Id', width: 150, sortable: true}
	 ,{header: 'Image', dataIndex: 'Image', width: 150, sortable: true}
	 ,{header: 'Submitter', dataIndex: 'Submitter', width: 150, sortable: true}
	 ,{header: 'AlbumId', dataIndex: 'AlbumId', width: 150, sortable: true}
];

var config = {
	objectName: 'FanArt',
	pkName: 'Id',
	columnDef: columnDef,
	readerDef: readerDef,
	gridDiv: 'FanArtGrid',
	panelDiv: 'FanArtGridPanel',
	autoExpandColumn : 0,
	urlFormat: '{/literal}{$URL->Get('FanArt','%s')}{literal}'
};



Ext.onReady(
	function(){StandardGrid.init(config);}, 
	StandardGrid
);

</script>
{/literal}
																																																																																																																																																											
{include file="_footer.tpl"}