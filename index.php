<?php
// instantiate necesary configuration options
include("_config.php");

// dispatch the action and catch any unhandled exceptions
try
{
	Dispatcher::Dispatch($G_PHREEZER,$G_SMARTY, Request::Get("action",$default_action),$G_CONTEXT,$G_URLWRITER);
}
catch (exception $ex)
{
	$G_SMARTY->assign("message",$ex->getMessage());
	$G_SMARTY->assign("stacktrace",FormatTrace($ex->getTrace(),"\n<br /># ",true));
	$G_SMARTY->assign("code",$ex->getCode());
	$G_SMARTY->display("_error.tpl");
}
	
?>