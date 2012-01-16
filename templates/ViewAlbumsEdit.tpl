{include file="_header.tpl" title="Edit Albums"}

<!-- form validation scripts -->
<script type="text/javascript" src="/shared/js/verysimple/validate.js"></script>
<script type="text/javascript" src="scripts/validate_model.js"></script>
<script type="text/javascript" src="scripts/standard_form.js"></script>

<form id="AlbumsForm" action="{$URL->Get('Albums','Save')}" onsubmit="return validateModel(this,'Albums');" method="post">

<fieldset id="AlbumsFieldSet">
	<legend>Edit Albums</legend>
	<div class="x-form-item">
		<label style="width: 120px;" for="Id">Id:</label>
		<div class="x-form-element">
 		<input type="text" readonly="readonly" class="x-form-text x-form-field read-only small" maxlength="11" id="Id" name="Id" value="{$albums->Id|escape}"  />
		</div>
		<div id="Id_Error" class="field_validator"></div>
	</div>

	<div class="x-form-item">
		<label style="width: 120px;" for="BandName">BandName:</label>
		<div class="x-form-element">
		<input type="text" id="BandName" name="BandName" value="{$albums->BandName|escape}" class="x-form-text x-form-field medium" maxlength="100" />
		</div>
		<div id="BandName_Error" class="field_validator"></div>
	</div>

	<div class="x-form-item">
		<label style="width: 120px;" for="AlbumName">AlbumName:</label>
		<div class="x-form-element">
		<textarea id="AlbumName" name="AlbumName" class="x-form-textarea x-form-field resizable">{$albums->AlbumName|escape}</textarea>
		</div>
		<div id="AlbumName_Error" class="field_validator"></div>
	</div>

	<div class="x-form-item">
		<label style="width: 120px;" for="ReleaseDate">ReleaseDate:</label>
		<div class="x-form-element">
		<textarea id="ReleaseDate" name="ReleaseDate" class="x-form-textarea x-form-field resizable">{$albums->ReleaseDate|escape}</textarea>
		</div>
		<div id="ReleaseDate_Error" class="field_validator"></div>
	</div>

	<div class="x-form-item">
		<label style="width: 120px;" for="CoverArt">CoverArt:</label>
		<div class="x-form-element">
		<textarea id="CoverArt" name="CoverArt" class="x-form-textarea x-form-field resizable">{$albums->CoverArt|escape}</textarea>
		</div>
		<div id="CoverArt_Error" class="field_validator"></div>
	</div>

	<div class="x-form-item">
		<label style="width: 120px;" for="Credits">Credits:</label>
		<div class="x-form-element">
		<textarea id="Credits" name="Credits" class="x-form-textarea x-form-field resizable">{$albums->Credits|escape}</textarea>
		</div>
		<div id="Credits_Error" class="field_validator"></div>
	</div>

	<div id="Validator_Error" class="form_validator"></div>

	<p>
		<input type="submit" class="button" value=" OK " /> 
		<input type="button" class="button" value="Cancel" onclick="self.location='{$URL->Get('Albums','ListAll')}';" />
	</p>

</fieldset>

{* hide the child objects for new records *}
{if ($albums->Id)}

	<fieldset>
		<legend>FaAlbumId</legend>
		
		{datagrid 
			page=$FaAlbumIdDataPage
			edit_url="index.php?action=FanArt.Edit" 
			delete_url="index.php?action=FanArt.Delete"
			primary_key="Id"
		}

		<p><input type="button" value="New FanArt" onclick="self.location='index.php?action=FanArt.Create&amp;AlbumId={$albums->Id}';" /></p>

	</fieldset>

	<fieldset>
		<legend>PAlbumId</legend>
		
		{datagrid 
			page=$PAlbumIdDataPage
			edit_url="index.php?action=Press.Edit" 
			delete_url="index.php?action=Press.Delete"
			primary_key="Id"
		}

		<p><input type="button" value="New Press" onclick="self.location='index.php?action=Press.Create&amp;AlbumId={$albums->Id}';" /></p>

	</fieldset>

	<fieldset>
		<legend>SAlbumId</legend>
		
		{datagrid 
			page=$SAlbumIdDataPage
			edit_url="index.php?action=Songs.Edit" 
			delete_url="index.php?action=Songs.Delete"
			primary_key="Id"
		}

		<p><input type="button" value="New Songs" onclick="self.location='index.php?action=Songs.Create&amp;AlbumId={$albums->Id}';" /></p>

	</fieldset>


{/if}

</form>

<script type="text/javascript">
	Ext.onReady(function (){ldelim}standardForm('AlbumsForm');{rdelim});
</script>

{include file="_footer.tpl"}