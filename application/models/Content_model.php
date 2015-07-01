<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Content_model extends CI_Model
{

	/* untuk konfigurasi bonus */

	public function __construct()
	{

		parent::__construct();
		$this->load->database();
	}


	public function getHomePage(){
		$h = $this->db->query("SELECT * FROM contents WHERE jenis = 2")->row();
		return $h;
	}

	public function getSlider(){
		$s = $this->db->query("SELECT * FROM sliders ORDER BY urutan ASC")->result();

		return $s;
	}
}