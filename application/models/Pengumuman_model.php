<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pengumuman_model extends CI_Model
{

	/* untuk konfigurasi bonus */

	public function __construct()
	{

		parent::__construct();
		$this->load->database();
	}

	public function getPengumuman(){

		return $this->db->query("SELECT * FROM pengumuman where status = 'aktif'")->result();
	}

}