<?php
// set the error reporting to the level desired
// error_reporting(E_ERROR); // E_ALL | E_ERROR | E_WARNING | E_NOTICE

// system paths
define("APP_ROOT", realpath("./"));
define("TEMPLATE_PATH", APP_ROOT . "/templates/");
define("COMPILE_PATH", APP_ROOT . "/templates_c/");
define("TEMP_PATH", APP_ROOT . "/temp/");

// add local libs to include path (optionally use .htaccess or php.ini)
set_include_path(APP_ROOT . "/libs/" . PATH_SEPARATOR . get_include_path());

// require framework libs
require_once("verysimple/HTTP/UrlWriter.php");
require_once("verysimple/HTTP/Request.php");
require_once("verysimple/Phreeze/Phreezer.php");
require_once("verysimple/Phreeze/Dispatcher.php");
require_once("Smarty.class.php");

// it may be necessary to require your user account model files prior to session start
// require_once("Model/Account.php");
session_start();

///####################################################################################################
//# CONFIGURATION SETTINGS

// database connection settings
$csetting = new ConnectionSetting();
$csetting->ConnectionString = "localhost:3306";
$csetting->DBName = "real_drugs";
$csetting->Username = "root";
$csetting->Password = "";

// default action
$default_action = "Albums.Display";

// specify a custom context object if desired
$G_CONTEXT = null;

// specify a url writer object.  must have method: Get($controller,$method,$params)
$G_URLWRITER = new UrlWriter("index.php?action=%s.%s&%s");

// debugging info
$debug_mode = false;

//#
///####################################################################################################


// instantiate the smarty template engine
$G_SMARTY = new Smarty();
$G_SMARTY->template_dir = TEMPLATE_PATH;
$G_SMARTY->compile_dir = COMPILE_PATH;
$G_SMARTY->config_dir = COMPILE_PATH;
$G_SMARTY->cache_dir = COMPILE_PATH;

// debugging configuration
$observer = null;
if ($debug_mode)
{
	require_once("verysimple/Phreeze/ObserveToSmarty.php"); 
	$observer = new ObserveToSmarty($G_SMARTY);
}

// instantiate the phreezer persistance api
$G_PHREEZER = new Phreezer($csetting, $observer);


/* Fetching Strategy Configuration
 * You may uncomment any of the lines below to specify always eager fetching.
 * Alternatively, you can copy/paste to a specific page for one-time eager fetching
 * If you paste into a controller method, replace $G_PHREEZER with $this->Phreezer
 */
// $G_PHREEZER->SetLoadType("FanArt","fa_album_id",KM_LOAD_EAGER);
// $G_PHREEZER->SetLoadType("Press","p_album_id",KM_LOAD_EAGER);
// $G_PHREEZER->SetLoadType("Songs","s_album_id",KM_LOAD_EAGER);
// $G_PHREEZER->SetLoadType("Videos","v_song_id",KM_LOAD_EAGER);


/**
 * Formats the debug_backtrace array into a printable string
 *
 * @access     public
 * @param array  debug_backtrace array
 * @param string $join the string used to join the array
 * @return string
 */
function FormatTrace($tb, $join = " :: ", $show_lines = false)
{
	$stack = "";
	$delim = "";
	for ($x = count($tb)-1; $x > 0; $x--)
	{
		$stack .= $delim . (isset($tb[$x]['class']) ? ($tb[$x]['class'] . "-&gt;") : "") . $tb[$x]['function'];
		$show_lines && isset($tb[$x]['file']) && $stack .= " (" . basename($tb[$x]['file']) . " Line " . (isset($tb[$x]['line']) ? $tb[$x]['line'] : "??") . ")";
		$delim = $join;
	}
	return $stack;
}

?>