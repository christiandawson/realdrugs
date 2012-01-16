<?php
require_once("verysimple/HTTP/Request.php");
Request::NormalizeUrlRewrite();

$_REQUEST["action"] = Request::Get("qs");
include("index.php");
?>