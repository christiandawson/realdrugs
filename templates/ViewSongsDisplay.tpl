{include file="_header.tpl" title="Songs Details"}


	<fieldset>
	<legend>Songs Details</legend>

				<div class="field">
		<label for="Name">Name:</label>
					{$songs->Name|escape}
				</div>


				<div class="field">
		<label for="Length">Length:</label>
					{$songs->Length|escape}
				</div>


				<div class="field">
		<label for="LyricArt">LyricArt:</label>
					{$songs->LyricArt|escape}
				</div>


				<div class="field">
		<label for="AlbumId">AlbumId:</label>
		 			{assign var=AlbumId value=$songs->AlbumId}
			{$AlbumIdPairs.$AlbumId}
				</div>


	
	</fieldset>

	<fieldset>
		<legend>VSongId</legend>
		
		{datagrid 
			page=$VSongIdDataPage
		}

	</fieldset>


{include file="_footer.tpl"}