
function standardForm(formId)
{
	var frm = new Ext.form.BasicForm(formId);
	//frm.render();
	
	var fields = frm.getValues()
	
	for (key in fields)
	{
		var elem = Ext.get(key);
		if (elem.hasClass('combo-box'))
		{
			var cb = new Ext.form.ComboBox({
				transform:elem.dom.name,
				typeAhead: true,
				triggerAction: 'all',
				forceSelection:true
			});
		}
		else if (elem.hasClass('date-picker'))
		{
			var df = new Ext.form.DateField({format:'m/d/Y'});
			df.applyTo(elem.dom.name);
		}
	}
}