{include file="_header.tpl" title="Edit Songs"}

<!-- form validation scripts -->
<script type="text/javascript" src="/shared/js/verysimple/validate.js"></script>
<script type="text/javascript" src="scripts/validate_model.js"></script>
<script type="text/javascript" src="scripts/standard_form.js"></script>

<form id="SongsForm" action="{$URL->Get('Songs','Save')}" onsubmit="return validateModel(this,'Songs');" method="post">

<fieldset id="SongsFieldSet">
	<legend>Edit Songs</legend>
	{if $songs->Id == ''}{assign var=force_insert value=1}{else}{assign var=force_insert value=0}{/if}	<div class="x-form-item">
		<label style="width: 120px;" for="Id">Id:</label>
		<div class="x-form-element">
		<input type="text" id="Id" name="Id" value="{$songs->Id|escape}" class="x-form-text x-form-field small" maxlength="11" />
		</div>
		<div id="Id_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="Name">Name:</label>
		<div class="x-form-element">
		<textarea id="Name" name="Name" class="x-form-textarea x-form-field resizable">{$songs->Name|escape}</textarea>
		</div>
		<div id="Name_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="Length">Length:</label>
		<div class="x-form-element">
		<input type="text" id="Length" name="Length" value="{$songs->Length|escape}" class="x-form-text x-form-field tiny" maxlength="10" />
		</div>
		<div id="Length_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="LyricArt">LyricArt:</label>
		<div class="x-form-element">
		<textarea id="LyricArt" name="LyricArt" class="x-form-textarea x-form-field resizable">{$songs->LyricArt|escape}</textarea>
		</div>
		<div id="LyricArt_Error" class="field_validator"></div>
	</div>

		<div class="x-form-item">
		<label style="width: 120px;" for="AlbumId">AlbumId:</label>
		<div class="x-form-element">
 		{html_options id="AlbumId" name="AlbumId" class="x-form-field combo-box" options=$AlbumIdPairs selected=$songs->AlbumId}
		</div>
		<div id="AlbumId_Error" class="field_validator"></div>
	</div>

	<div id="Validator_Error" class="form_validator"></div>

	<p>
		<input type="hidden" id="force_insert" name="force_insert" value="{$force_insert}" /> 
		<input type="submit" class="button" value=" OK " /> 
		<input type="button" class="button" value="Cancel" onclick="self.location='{$URL->Get('Songs','ListAll')}';" />
	</p>

</fieldset>

{* hide the child objects for new records *}
{if ($songs->Id)}

	<fieldset>
		<legend>VSongId</legend>
		
		{datagrid 
			page=$VSongIdDataPage
			edit_url="index.php?action=Videos.Edit" 
			delete_url="index.php?action=Videos.Delete"
			primary_key="Id"
		}

		<p><input type="button" value="New Videos" onclick="self.location='index.php?action=Videos.Create&amp;SongId={$songs->Id}';" /></p>

	</fieldset>


{/if}

</form>

<script type="text/javascript">
	Ext.onReady(function (){ldelim}standardForm('SongsForm');{rdelim});
</script>

{include file="_footer.tpl"}