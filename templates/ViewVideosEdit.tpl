{include file="_header.tpl" title="Edit Videos"}

<!-- form validation scripts -->
<script type="text/javascript" src="/shared/js/verysimple/validate.js"></script>
<script type="text/javascript" src="scripts/validate_model.js"></script>
<script type="text/javascript" src="scripts/standard_form.js"></script>

<form id="VideosForm" action="{$URL->Get('Videos','Save')}" onsubmit="return validateModel(this,'Videos');" method="post">

<fieldset id="VideosFieldSet">
	<legend>Edit Videos</legend>
	{if $videos->Id == ''}{assign var=force_insert value=1}{else}{assign var=force_insert value=0}{/if}	<div class="x-form-item">
		<label style="width: 120px;" for="Id">Id:</label>
		<div class="x-form-element">
		<input type="text" id="Id" name="Id" value="{$videos->Id|escape}" class="x-form-text x-form-field small" maxlength="11" />
		</div>
		<div id="Id_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="Name">Name:</label>
		<div class="x-form-element">
		<input type="text" id="Name" name="Name" value="{$videos->Name|escape}" class="x-form-text x-form-field medium" maxlength="100" />
		</div>
		<div id="Name_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="SongId">SongId:</label>
		<div class="x-form-element">
 		{html_options id="SongId" name="SongId" class="x-form-field combo-box" options=$SongIdPairs selected=$videos->SongId}
		</div>
		<div id="SongId_Error" class="field_validator"></div>
	</div>

	<div id="Validator_Error" class="form_validator"></div>

	<p>
		<input type="hidden" id="force_insert" name="force_insert" value="{$force_insert}" /> 
		<input type="submit" class="button" value=" OK " /> 
		<input type="button" class="button" value="Cancel" onclick="self.location='{$URL->Get('Videos','ListAll')}';" />
	</p>

</fieldset>

{* hide the child objects for new records *}
{if ($videos->Id)}


{/if}

</form>

<script type="text/javascript">
	Ext.onReady(function (){ldelim}standardForm('VideosForm');{rdelim});
</script>

{include file="_footer.tpl"}