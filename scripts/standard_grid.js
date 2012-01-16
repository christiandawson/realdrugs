
var StandardGrid = {
    init : function(config){
    
		var objectName = config['objectName'];
		var pkName = config['pkName'];
		var pageSize = config['pageSize'] ? config['pageSize'] : 10;
		var gridDiv = config['gridDiv'];
		var panelDiv = config['panelDiv'];
		var readerDef = config['readerDef'];
		var columnDef = config['columnDef'];
		var autoExpandColumn = config['autoExpandColumn'];
		var urlFormat = config['urlFormat'] ? config['urlFormat'] : ('index.php?action='+config['objectName']+'.%s');
    
		var ds = new Ext.data.Store({
			
			proxy: new Ext.data.HttpProxy({
				url: urlFormat.replace(/\%s/, "ListPage")
			}),
			
			reader: new Ext.data.XmlReader({
				record: objectName,
				totalRecords: 'TotalRecords',
				id: pkName 
				}, 
				readerDef
			),
			
			remoteSort: true
		}); // datastore
        ds.load();

		// event handlers
		function rowDblClick(grid,rowIndex,e)
		{
			var pk = grid.getDataSource().getAt(rowIndex).id;
			self.location=urlFormat.replace(/\%s/, "Edit") + '&'+pkName+'='+pk;
		}

		function newRecordClick (button,e)
		{
			self.location=urlFormat.replace(/\%s/, "Edit");
		}

		// the DefaultColumnModel expects this blob to define columns. It can be extended to provide
        // custom or reusable ColumnModels
        var colModel = new Ext.grid.ColumnModel(columnDef);

        // create the Grid
        var grid = new Ext.grid.Grid(''+objectName+'Grid', {
            ds: ds,
            cm: colModel
        });

        var layout = Ext.BorderLayout.create({
            center: {
                margins:{left:3,top:3,right:3,bottom:3},
                panels: [new Ext.GridPanel(grid)]
            }
        }, ''+objectName+'GridPanel');

		grid.addListener('rowdblclick',rowDblClick);

        grid.render();

		var gridFoot = grid.getView().getFooterPanel(true);

		var pageBar = new Ext.PagingToolbar(gridFoot, ds, {
			pageSize: pageSize,
			displayInfo: true,
			displayMsg: 'Displaying records {0} - {1} of {2}',
			emptyMsg: "No records to display"
		});
		
		pageBar.addButton(new Ext.Toolbar.Button({
		    text:'New Record...',
		    handler: newRecordClick
		}));
		
        // grid.getSelectionModel().selectFirstRow();
    }
};