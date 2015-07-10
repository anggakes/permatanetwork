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

	public function isSuperAdmin(){
		return ($this->attributes('role') == 1) ? true :false;
	}

	public function isStokis(){
		return ($this->attributes('role') == 2) ? true :false;
	}

	public function isAdmin(){
		return ($this->attributes('role') == 0) ? true :false;
	}

	public function getRole(){

		$role = '';
		if($this->attributes('role') == 1){
			$role = "super admin";
		}elseif($this->attributes('role') == 2){
			$role = "stokis";
		}elseif($this->attributes('role') == 1){
			$role = "admin";
		}

		return $role;
	}

	public function attributes($property){

		return (isset($this->attributes->$property)) ? $this->attributes->$property : '' ;
	}

	public function profile($property){
		
		if($property == 'nama'){
			return (isset($this->attributes->$property)) ? $this->attributes->$property : '' ;
		}
	}

	public function hash_password($password) {
		
		
		return password_hash($password, PASSWORD_BCRYPT);
	}
}