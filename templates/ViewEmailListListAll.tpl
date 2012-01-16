{include file="_header.tpl" title="Manage EmailLists"}

<h1>Manage EmailLists</h1>

<p>Below are all EmailList records in the system.  
Double click on a row to edit an existing EmailList.  
Use the "New Record" button to add a new EmailList.</p>

<!-- placeholder for the grid -->
<div id="EmailListGridPanel" style="width:780px; height:300px;">
	<div id="EmailListGrid" class="ygrid-mso"></div>
</div>

{literal}
<script type="text/javascript" src="scripts/standard_grid.js"></script>
<script type="text/javascript">

var readerDef = [
	 {name: 'Id', mapping: 'Id'}
	,{name: 'Address', mapping: 'Address'}
];

var columnDef = [
	  {header: 'Id', dataIndex: 'Id', width: 150, sortable: true}
	 ,{header: 'Address', dataIndex: 'Address', width: 150, sortable: true}
];

var config = {
	objectName: 'EmailList',
	pkName: 'Id',
	columnDef: columnDef,
	readerDef: readerDef,
	gridDiv: 'EmailListGrid',
	panelDiv: 'EmailListGridPanel',
	autoExpandColumn : 0,
	urlFormat: '{/literal}{$URL->Get('EmailList','%s')}{literal}'
};



Ext.onReady(
	function(){StandardGrid.init(config);}, 
	StandardGrid
);

</script>
{/literal}
																																																																																																																																																											
{include file="_footer.tpl"}