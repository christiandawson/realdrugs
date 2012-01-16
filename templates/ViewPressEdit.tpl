{include file="_header.tpl" title="Edit Press"}

<!-- form validation scripts -->
<script type="text/javascript" src="/shared/js/verysimple/validate.js"></script>
<script type="text/javascript" src="scripts/validate_model.js"></script>
<script type="text/javascript" src="scripts/standard_form.js"></script>

<form id="PressForm" action="{$URL->Get('Press','Save')}" onsubmit="return validateModel(this,'Press');" method="post">

<fieldset id="PressFieldSet">
	<legend>Edit Press</legend>
	{if $press->Id == ''}{assign var=force_insert value=1}{else}{assign var=force_insert value=0}{/if}	<div class="x-form-item">
		<label style="width: 120px;" for="Id">Id:</label>
		<div class="x-form-element">
		<input type="text" id="Id" name="Id" value="{$press->Id|escape}" class="x-form-text x-form-field small" maxlength="11" />
		</div>
		<div id="Id_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="Title">Title:</label>
		<div class="x-form-element">
		<textarea id="Title" name="Title" class="x-form-textarea x-form-field resizable">{$press->Title|escape}</textarea>
		</div>
		<div id="Title_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="Body">Body:</label>
		<div class="x-form-element">
		<textarea id="Body" name="Body" class="x-form-textarea x-form-field resizable">{$press->Body|escape}</textarea>
		</div>
		<div id="Body_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="Author">Author:</label>
		<div class="x-form-element">
		<textarea id="Author" name="Author" class="x-form-textarea x-form-field resizable">{$press->Author|escape}</textarea>
		</div>
		<div id="Author_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="AlbumId">AlbumId:</label>
		<div class="x-form-element">
 		{html_options id="AlbumId" name="AlbumId" class="x-form-field combo-box" options=$AlbumIdPairs selected=$press->AlbumId}
		</div>
		<div id="AlbumId_Error" class="field_validator"></div>
	</div>

	<div id="Validator_Error" class="form_validator"></div>

	<p>
		<input type="hidden" id="force_insert" name="force_insert" value="{$force_insert}" /> 
		<input type="submit" class="button" value=" OK " /> 
		<input type="button" class="button" value="Cancel" onclick="self.location='{$URL->Get('Press','ListAll')}';" />
	</p>

</fieldset>

{* hide the child objects for new records *}
{if ($press->Id)}


{/if}

</form>

<script type="text/javascript">
	Ext.onReady(function (){ldelim}standardForm('PressForm');{rdelim});
</script>

{include file="_footer.tpl"}