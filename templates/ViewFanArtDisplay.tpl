{include file="_header.tpl" title="FanArt Details"}


	<fieldset>
	<legend>FanArt Details</legend>

				<div class="field">
		<label for="Image">Image:</label>
					{$fanart->Image|escape}
				</div>


				<div class="field">
		<label for="Submitter">Submitter:</label>
					{$fanart->Submitter|escape}
				</div>


				<div class="field">
		<label for="AlbumId">AlbumId:</label>
		 			{assign var=AlbumId value=$fanart->AlbumId}
			{$AlbumIdPairs.$AlbumId}
				</div>


	
	</fieldset>


{include file="_footer.tpl"}