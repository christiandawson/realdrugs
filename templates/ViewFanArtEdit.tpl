{include file="_header.tpl" title="Edit Fanart"}

<!-- form validation scripts -->
<script type="text/javascript" src="/shared/js/verysimple/validate.js"></script>
<script type="text/javascript" src="scripts/validate_model.js"></script>
<script type="text/javascript" src="scripts/standard_form.js"></script>

<form id="FanartForm" action="{$URL->Get('FanArt','Save')}" onsubmit="return validateModel(this,'Fanart');" method="post">

<fieldset id="FanartFieldSet">
	<legend>Edit FanArt</legend>
	{if $fanart->Id == ''}{assign var=force_insert value=1}{else}{assign var=force_insert value=0}{/if}	<div class="x-form-item">
		<label style="width: 120px;" for="Id">Id:</label>
		<div class="x-form-element">
		<input type="text" id="Id" name="Id" value="{$fanart->Id|escape}" class="x-form-text x-form-field small" maxlength="11" />
		</div>
		<div id="Id_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="Image">Image:</label>
		<div class="x-form-element">
		<textarea id="Image" name="Image" class="x-form-textarea x-form-field resizable">{$fanart->Image|escape}</textarea>
		</div>
		<div id="Image_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="Submitter">Submitter:</label>
		<div class="x-form-element">
		<input type="text" id="Submitter" name="Submitter" value="{$fanart->Submitter|escape}" class="x-form-text x-form-field medium" maxlength="100" />
		</div>
		<div id="Submitter_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="AlbumId">AlbumId:</label>
		<div class="x-form-element">
 		{html_options id="AlbumId" name="AlbumId" class="x-form-field combo-box" options=$AlbumIdPairs selected=$fanart->AlbumId}
		</div>
		<div id="AlbumId_Error" class="field_validator"></div>
	</div>

	<div id="Validator_Error" class="form_validator"></div>

	<p>
		<input type="hidden" id="force_insert" name="force_insert" value="{$force_insert}" /> 
		<input type="submit" class="button" value=" OK " /> 
		<input type="button" class="button" value="Cancel" onclick="self.location='{$URL->Get('FanArt','ListAll')}';" />
	</p>

</fieldset>

{* hide the child objects for new records *}
{if ($fanart->Id)}


{/if}

</form>

<script type="text/javascript">
	Ext.onReady(function (){ldelim}standardForm('FanartForm');{rdelim});
</script>

{include file="_footer.tpl"}