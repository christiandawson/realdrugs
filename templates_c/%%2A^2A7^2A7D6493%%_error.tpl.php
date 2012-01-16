<?php /* Smarty version 2.6.19, created on 2012-01-02 15:05:04
         compiled from _error.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "_header.tpl", 'smarty_include_vars' => array('title' => 'Error Occured')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div class="warning"><?php echo $this->_tpl_vars['message']; ?>
</div>

<?php if (stacktrace): ?>
<div class="stacktrace"><b>Stack Trace:</b><br /><?php echo $this->_tpl_vars['stacktrace']; ?>
</div>
<?php endif; ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>