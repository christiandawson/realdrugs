{include file="_header.tpl" title="Press Details"}


	<fieldset>
	<legend>Press Details</legend>

				<div class="field">
		<label for="Title">Title:</label>
					{$press->Title|escape}
				</div>


				<div class="field">
		<label for="Body">Body:</label>
					{$press->Body|escape}
				</div>


				<div class="field">
		<label for="Author">Author:</label>
					{$press->Author|escape}
				</div>


				<div class="field">
		<label for="AlbumId">AlbumId:</label>
		 			{assign var=AlbumId value=$press->AlbumId}
			{$AlbumIdPairs.$AlbumId}
				</div>


	
	</fieldset>


{include file="_footer.tpl"}