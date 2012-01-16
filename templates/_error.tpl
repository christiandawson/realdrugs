{include file="_header.tpl" title="Error Occured"}

<div class="warning">{$message}</div>

{if stacktrace}
<div class="stacktrace"><b>Stack Trace:</b><br />{$stacktrace}</div>
{/if}

{include file="_footer.tpl"}