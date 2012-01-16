{include file="_header.tpl" title="Manage Albumss"}

<h1>Manage Albumss</h1>

<p>Below are all Albums records in the system.  
Double click on a row to edit an existing Albums.  
Use the "New Record" button to add a new Albums.</p>

<!-- placeholder for the grid -->
<div id="AlbumsGridPanel" style="width:780px; height:300px;">
	<div id="AlbumsGrid" class="ygrid-mso"></div>
</div>

{literal}
<script type="text/javascript" src="scripts/standard_grid.js"></script>
<script type="text/javascript">

var readerDef = [
	 {name: 'Id', mapping: 'Id'}
	,{name: 'BandName', mapping: 'BandName'}
	,{name: 'AlbumName', mapping: 'AlbumName'}
	,{name: 'ReleaseDate', mapping: 'ReleaseDate'}
	,{name: 'CoverArt', mapping: 'CoverArt'}
	,{name: 'Credits', mapping: 'Credits'}
];

var columnDef = [
	  {header: 'Id', dataIndex: 'Id', width: 150, sortable: true}
	 ,{header: 'BandName', dataIndex: 'BandName', width: 150, sortable: true}
	 ,{header: 'AlbumName', dataIndex: 'AlbumName', width: 150, sortable: true}
	 ,{header: 'ReleaseDate', dataIndex: 'ReleaseDate', width: 150, sortable: true}
	 ,{header: 'CoverArt', dataIndex: 'CoverArt', width: 150, sortable: true}
	 ,{header: 'Credits', dataIndex: 'Credits', width: 150, sortable: true}
];

var config = {
	objectName: 'Albums',
	pkName: 'Id',
	columnDef: columnDef,
	readerDef: readerDef,
	gridDiv: 'AlbumsGrid',
	panelDiv: 'AlbumsGridPanel',
	autoExpandColumn : 0,
	urlFormat: '{/literal}{$URL->Get('Albums','%s')}{literal}'
};



Ext.onReady(
	function(){StandardGrid.init(config);}, 
	StandardGrid
);

</script>
{/literal}
																																																																																																																																																											
{include file="_footer.tpl"}