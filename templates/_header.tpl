<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	
	<title>{$title}</title>
	
	<!-- form validation scripts -->
	<script type="text/javascript" src="/shared/js/verysimple/validate.js"></script>
	<script type="text/javascript" src="scripts/validate_model.js"></script>

	<!-- ext js components -->
	<link rel="stylesheet" href="/shared/js/ext/resources/css/ext-all.css"/>
	<script type="text/javascript" src="/shared/js/ext/adapter/yui/yui-utilities.js"></script>
	<script type="text/javascript" src="/shared/js/ext/adapter/yui/ext-yui-adapter.js"></script>
	<script type="text/javascript" src="/shared/js/ext/ext-all.js"></script>
	
	<link rel="stylesheet" href="styles/bootstrap.min.css">
	<link rel="stylesheet" rev="stylesheet" href="styles/real_drugs.css" />
	<link rel="stylesheet" rev="stylesheet" href="/shared/css/tables.css" />
	<link rel="stylesheet" rev="stylesheet" href="/shared/css/forms.css" />

	{* show feedback or warning if necessary using animated ext dialog *}
	{if isset($smarty.request.feedback)}{assign var=feedback value=$smarty.request.feedback}{/if}
	{if isset($feedback)}
		<script type="text/javascript" src="scripts/feedback.js"></script>
		<script type="text/javascript">
			setTimeout("show_feedback('Result:', '{ldelim}0{rdelim}', '{$feedback|escape}')",1000);
		</script>
	{/if}

	{if isset($smarty.request.warning)}{assign var=warning value=$smarty.request.warning}{/if}
	{if isset($warning)}
		<div class="warning">{$warning|escape}</div>
	{/if}

</head>
<body>

<div id="main">
	<div id="stage">

	<div class="topbar-wrapper" style="z-index: 5;">
	    <div class="topbar" data-dropdown="dropdown">
	      <div class="topbar-inner">
	        <div class="container">
	          <h3><a href="#">REAL DRUGS</a></h3>
	          <ul class="nav">
	            <li class="active"><a href="#">All Releases</a></li>
	            <li><a href="#">Press</a></li>
	            <li><a href="#">Contact</a></li>
	            
	            <!--
		            <li class="dropdown">
		              <a href="#" class="dropdown-toggle">Dropdown</a>
		              <ul class="dropdown-menu">
		                <li><a href="#">Secondary link</a></li>
		                <li><a href="#">Something else here</a></li>
		                <li class="divider"></li>
		                <li><a href="#">Another link</a></li>
		              </ul>
		            </li>
	            -->
	          </ul>
	         
	         
				<!--
		          <form class="pull-left" action="">
		            <input type="text" placeholder="Search" />
		          </form>
		      	-->
		      
		      	<ul class="nav secondary-nav">
		            <li class="dropdown">
		              <a href="#" class="dropdown-toggle">Dropdown</a>
		              <ul class="dropdown-menu">
		                <li><a href="#">Secondary link</a></li>
		                <li><a href="#">Something else here</a></li>
		                <li class="divider"></li>
		                <li><a href="#">Another link</a></li>
		              </ul>
		            </li>
		          </ul>
		          
	        </div>
	      </div><!-- /topbar-inner -->
	    </div><!-- /topbar -->
	</div>
