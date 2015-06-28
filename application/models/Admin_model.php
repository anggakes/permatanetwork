<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin_model extends CI_Model
{

	public $attributes;

	public function __construct()
	{

		parent::__construct();
		$this->load->database();
	}

	public function getData($val, $by = "username"){

		$user 		= $this->db->query("SELECT * FROM admin WHERE $by='$val' ")->row();

		$this->attributes 	= $user;

		return $this;

	}

	public function attributes($property){

		return (isset($this->attributes->$property)) ? $this->attributes->$property : '' ;
	}

	public function profile($property){
		
		if($property == 'nama'){
			return (isset($this->attributes->$property)) ? $this->attributes->$property : '' ;
		}
	}


}