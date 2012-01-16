<?php
/**
 * DefaultController is a basic controller object that displays the ListAll view
 * This controller is not bound to any specific Model.
 *
 * @author ClassBuilder
 * @version 1.0
 */
 
require_once("verysimple/Phreeze/Controller.php");

class DefaultController extends Controller
{
	function ListAll()
	{
		$this->Smarty->display("ViewListAll.tpl");
	}

	protected function Init()
	{
		// we have to implement this method even though the model isn't used
		$this->ModelName = "NULL";
	}

	protected function LoadFromForm($pk = null)
	{
		return null;
	}

}
?>