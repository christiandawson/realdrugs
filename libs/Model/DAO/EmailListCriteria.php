<?php
/**
 * EmailListCriteria allows custom querying for the EmailList object.  Here you may
 * add properties that will translate into SQL.  Included are the basic fields that can 
 * be used as a typical "query by example" however you may add properties that do not
 * directly relate to fields or use other types of logic.
 *
 * This file is automatically generated by ClassBuilder.
 *
 * @package    Model::DAO
 * @author ClassBuilder
 * @version 1.0
 */
 
require_once("verysimple/Phreeze/Criteria.php");
	
class EmailListCriteria extends Criteria
{
	/**
	 * Phreeze parses all of the properties in the Criteria class and knows how to process
	 * any that end in the following _Equals, _IsLike, _BeginsWith, _EndsWith, _GreaterThan, LessThan.
	 * If you wish to add any criteria parameters beyond these, you must override OnPrepare
	 */
	public $Id_Equals;
	public $Id_IsLike;
	public $Id_BeginsWith;
	public $Id_EndWith;
	public $Id_GreaterThan;
	public $Id_LessThan;
	public $Address_Equals;
	public $Address_IsLike;
	public $Address_BeginsWith;
	public $Address_EndWith;
	public $Address_GreaterThan;
	public $Address_LessThan;

	/**
	 * For custom query logic, you may override OnProcess and set the $this->_where to whatever
	 * sql code is necessary.  If you choose to manually set _where then Phreeze will not touch
	 * your where clause at all and so any of the standard property names will be ignored
	 */
	/*
	function OnPrepare()
	{
		if ($this->MyCustomField == "special value")
		{
			// _where must begin with "where"
			$this->_where = "where db_field ....";
		}
	}
	*/
}

?>