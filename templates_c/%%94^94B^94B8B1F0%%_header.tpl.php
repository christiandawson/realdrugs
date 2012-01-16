<?php /* Smarty version 2.6.19, created on 2012-01-02 15:10:16
         compiled from _header.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '_header.tpl', 29, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	
	<title><?php echo $this->_tpl_vars['title']; ?>
</title>
	
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

		<?php if (isset ( $_REQUEST['feedback'] )): ?><?php $this->assign('feedback', $_REQUEST['feedback']); ?><?php endif; ?>
	<?php if (isset ( $this->_tpl_vars['feedback'] )): ?>
		<script type="text/javascript" src="scripts/feedback.js"></script>
		<script type="text/javascript">
			setTimeout("show_feedback('Result:', '{0}', '<?php echo ((is_array($_tmp=$this->_tpl_vars['feedback'])) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
')",1000);
		</script>
	<?php endif; ?>

	<?php if (isset ( $_REQUEST['warning'] )): ?><?php $this->assign('warning', $_REQUEST['warning']); ?><?php endif; ?>
	<?php if (isset ( $this->_tpl_vars['warning'] )): ?>
		<div class="warning"><?php echo ((is_array($_tmp=$this->_tpl_vars['warning'])) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
</div>
	<?php endif; ?>

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