/**
 * ajax validation for a form that uses the phreeze framework
 *
 * @version 1.0
 * @requires YAHOO.util for AJAX connection
 * @requires Ext.util.JSON, Ext.Element and Ext.Fx 
 * @requires shared/js/verysimple/validate.js
 */


var frm_ref;
var validate_in_progress = false;


/**
 *
 */
function validateModel(frm, model)
{
    
    if (validate_in_progress)
    {
        alert('Form validation is in progress.  Please wait one moment...');
        return false;
    }
    
	// TODO: replace this with Ext DomQuery.
	var validators = getElementsByClass('validator');
	for (i=0;i<validators.length;i++)
	{
		validators[i].style.display='none';
	}
   
	frm_ref = frm;
	
	var url = 'index.php?action='+model+'.ValidateInput';
	var pars = "";
	var delim = "";
	
    for (var i = 0; i < frm.elements.length; i++)
    {
		if (frm.elements[i].name != '' && frm.elements[i].name != 'action')
		{
			var elem = frm.elements[i];

			if (elem.type == "hidden" || elem.type == "text" || elem.type == "password" || elem.type == "textarea")
			{
				pars += delim  + elem.name + '=' + escape(getFieldValue(elem));
				delim = "&";
			} 
			else if (elem.type == "select-one" || elem.type == "radio")
			{
				pars += delim  + elem.name + '=' + escape(getFieldValue(elem));
				delim = "&";
			}
        }
    }

    var validate_callback = 
    { 
	    success: processServerResponse, 
	    failure: function(o) {alert('Unable to validate via AJAX')}, 
	    argument: [] 
    } 

    YAHOO.util.Connect.asyncRequest('POST', url, validate_callback, pars);

	return false;
}

/**
 * Processes the validation response from the server, which should be JSON code
 */
function processServerResponse(response)
{

	var result = Ext.util.JSON.decode(response.responseText);
	
	if (result.Success)
	{
	    // submit the form
	    frm_ref.submit();
	}
	else
	{
	    for (var fldname in result.Errors)
	    {
	        if (fldname != 'toJSONString')
	        {

			    var divref = Ext.get(fldname + '_Error');

			    if (divref)
			    {
			        // divref.style.display = 'inline';
			        divref.update("" + result.Errors[fldname] + "");
			        divref.setStyle('display','inline');
			        divref.highlight();
			    }
			    else
			    {
			        alert(fldname + ": " + result.Errors[fldname]);
			    }
	        }
	    }
	    
		    var divref = Ext.get('Validator_Error');
		    if (divref)
		    {
		        divref.update("Errors were found on this form.  Please correct them and submit again.");
			    divref.setStyle('display','block');
		        divref.slideIn();
		    }
		    else
		    {
		        alert("Errors were found on this form.  Please correct them and submit again.");
		    }
	    
	    validate_in_progress = false;
	}
}

/**
 * getElementByClass function from jquery.
 * TODO: replace this with functionality already present in Ext
 */
function getElementsByClass(searchClass,node,tag) {
	var classElements = new Array();
	if ( node == null )
		node = document;
	if ( tag == null )
		tag = '*';
	var els = node.getElementsByTagName(tag);
	var elsLen = els.length;
	var pattern = new RegExp("(^|\\s)"+searchClass+"(\\s|$)");
	for (i = 0, j = 0; i < elsLen; i++) {
		if ( pattern.test(els[i].className) ) {
			classElements[j] = els[i];
			j++;
		}
	}
	return classElements;
}