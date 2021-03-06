<?php
/**
 * PressMap is a static class with functions used to get FieldMap and KeyMap information that
 * is used by Phreeze to map the PressDAO to the press datastore.
 *
 * This file is automatically generated by ClassBuilder.
 *
 * This file should generally not be edited by hand except in special circumstances.
 * You can override the default fetching strategies for KeyMaps in _config.php.
 * Leaving this file alone will allow easy re-generation of all DAOs in the event of schema changes
 *
 * @package    Model::DAO
 * @author ClassBuilder
 * @version 1.0
 */
 
require_once("verysimple/Phreeze/IDaoMap.php");

	
class PressMap implements IDaoMap
{
	/**
	 * Returns a singleton array of FieldMaps for the Press object
	 *
	 * @access static
	 * @return array of FieldMaps
	 */
	public static function GetFieldMaps()
	{
		static $fm = null;
		if ($fm == null)
		{
			$fm = Array();
			$fm["Id"] = new FieldMap("Id","press","p_id",true,FM_TYPE_INT,11,null,false);
			$fm["Title"] = new FieldMap("Title","press","p_title",false,FM_TYPE_TEXT,null,null,false);
			$fm["Body"] = new FieldMap("Body","press","p_body",false,FM_TYPE_TEXT,null,null,false);
			$fm["Author"] = new FieldMap("Author","press","p_author",false,FM_TYPE_TEXT,null,null,false);
			$fm["AlbumId"] = new FieldMap("AlbumId","press","p_album_id",false,FM_TYPE_INT,11,null,false);
		}
		return $fm;
	}
	
	/**
	 * Returns a singleton array of KeyMaps for the Press object
	 *
	 * @access static
	 * @return array of KeyMaps
	 */
	public static function GetKeyMaps()
	{
		static $km = null;
		if ($km == null)
		{
			$km = Array();
			$km["p_album_id"] = new KeyMap("p_album_id", "AlbumId", "Albums", "Id", KM_TYPE_MANYTOONE, KM_LOAD_LAZY); // you change to KM_LOAD_EAGER here or (preferrably) make the change in _config.php
		}
		return $km;
	}
	
}

?>