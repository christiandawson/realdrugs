<?php
/**
 * AlbumsDAO provides object-oriented access to the  table.  This
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
require_once("AlbumsMap.php");

class AlbumsDAO extends Phreezable
{
	public $Id;
	public $BandName;
	public $AlbumName;
	public $ReleaseDate;
	public $CoverArt;
	public $Credits;

	public function GetFaAlbumId($criteria = null)
	{
		return $this->_phreezer->GetOneToMany($this, "fa_album_id", $criteria);
	}

	public function GetPAlbumId($criteria = null)
	{
		return $this->_phreezer->GetOneToMany($this, "p_album_id", $criteria);
	}

	public function GetSAlbumId($criteria = null)
	{
		return $this->_phreezer->GetOneToMany($this, "s_album_id", $criteria);
	}


}
?>