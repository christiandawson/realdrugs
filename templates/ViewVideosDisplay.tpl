{include file="_header.tpl" title="Videos Details"}


	<fieldset>
	<legend>Videos Details</legend>

				<div class="field">
		<label for="Name">Name:</label>
					{$videos->Name|escape}
				</div>


				<div class="field">
		<label for="SongId">SongId:</label>
		 			{assign var=SongId value=$videos->SongId}
			{$SongIdPairs.$SongId}
				</div>


	
	</fieldset>


{include file="_footer.tpl"}