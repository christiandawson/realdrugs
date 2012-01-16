<?php
/**
 * VideosDAO provides object-oriented access to the  table.  This
 * class is automatically generated by ClassBuilder.
 *
 * This file should generally not be edited by hand except in special circumstances.
 * Add any custom business logic to the Model class which is extended from this DAO class.
 * Leaving this file alone will allow easy re-generation of all DAOs in the event of schema changes
 *
 * @package    Model::DAO
 * @author ClassBuilder
 * @version 1.0
 */

require_once("verysimple/Phreeze/Phreezable.php");
require_once("VideosMap.php");

class VideosDAO extends Phreezable
{
	public $Id;
	public $Name;
	public $SongId;

	public function GetVSongId($criteria = null)
	{
		return $this->_phreezer->GetManyToOne($this, "v_song_id");
	}


}
?>