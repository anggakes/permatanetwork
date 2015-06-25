<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Configuration_model extends CI_Model
{

	/* untuk konfigurasi bonus */

	public function __construct()
	{

		parent::__construct();
		$this->load->database();
	}

	public function getValue($key){

		$data = $this->db->query("SELECT value FROM bonus_conf WHERE key ='$key'")->row();
		return $data->value;
	}

	public function setValue($key,$value){

		$this->db->set('value',$value);
		$this->where('key',$key);
		return $this->update("bonus_conf");
	}

	public function getKedalaman($tipe){

		$data = $this->db->query("SELECT max(level) as max WHERE tipe = '$tipe'");
		return $data->max;
	}

	public function setKedalaman($tipe, $dalam){

		$this->db->where('level >',$dalam);
		$this->db->where('tipe',$tipe);
		return $this->db->delete('bonus_level_conf');
	}

	public function getPersen($tipe,$level){

		$data = $this->db->query("SELECT persen FROM bonus_level_conf WHERE tipe ='$tipe' AND level='$level'  ")->row();
		return $data->persen;
	}

	public function setPersen($tipe,$level,$persen){

		$this->db->set('persen',$persen);
		$this->where('tipe',$tipe);
		$this->where('level',$level);
		return $this->update("bonus_level_conf");
	}

	public function delKedalaman($tipe,$level){

		$this->db->where('level',$this->getKedalaman($tipe));
		$this->db->where('tipe',$tipe);
		return $this->db->delete('bonus_level_conf');
	}

	public function addKedalaman($tipe,$persen){

		return $this->db->insert('bonus_level_conf',array(
				'tipe',$tipe,
				'persen',$persen,
				'level',$this->getKedalaman($tipe)+1,
			));
	}


}