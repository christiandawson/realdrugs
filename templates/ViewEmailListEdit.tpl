{include file="_header.tpl" title="Edit Emaillist"}

<!-- form validation scripts -->
<script type="text/javascript" src="/shared/js/verysimple/validate.js"></script>
<script type="text/javascript" src="scripts/validate_model.js"></script>
<script type="text/javascript" src="scripts/standard_form.js"></script>

<form id="EmaillistForm" action="{$URL->Get('EmailList','Save')}" onsubmit="return validateModel(this,'Emaillist');" method="post">

<fieldset id="EmaillistFieldSet">
	<legend>Edit EmailList</legend>
	<div class="x-form-item">
		<label style="width: 120px;" for="Id">Id:</label>
		<div class="x-form-element">
 		<input type="text" readonly="readonly" class="x-form-text x-form-field read-only small" maxlength="11" id="Id" name="Id" value="{$emaillist->Id|escape}"  />
		</div>
		<div id="Id_Error" class="field_validator"></div>
	</div>

	<div class="x-form-item">
		<label style="width: 120px;" for="Address">Address:</label>
		<div class="x-form-element">
		<input type="text" id="Address" name="Address" value="{$emaillist->Address|escape}" class="x-form-text x-form-field medium" maxlength="100" />
		</div>
		<div id="Address_Error" class="field_validator"></div>
	</div>

	<div id="Validator_Error" class="form_validator"></div>

	<p>
		<input type="submit" class="button" value=" OK " /> 
		<input type="button" class="button" value="Cancel" onclick="self.location='{$URL->Get('EmailList','ListAll')}';" />
	</p>

</fieldset>

{* hide the child objects for new records *}
{if ($emaillist->Id)}


{/if}

</form>

<script type="text/javascript">
	Ext.onReady(function (){ldelim}standardForm('EmaillistForm');{rdelim});
</script>

{include file="_footer.tpl"}