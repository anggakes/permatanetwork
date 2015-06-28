<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AktifasiMember extends CI_Controller {

	protected $params = array('model'=>'admin');
	private $table    = 'konfirmasi_pendaftaran'; 
	

	public function __construct()
	{
	    parent::__construct();
	    $this->load->database();
        $this->load->library('template');
        $this->load->library('session');
        $this->load->model('member_model');
	    $this->load->library('authlibrary',$this->params);

	   
	    
	}//

	public function konfirmasi($id)
	{	
		
		 // untuk mengecek login belum, jika belum di redirect ke login
		$this->authlibrary->check_login();
		$this->authlibrary->check_role('members');

		$message = $this->input->post('pesan');

		$this->db->insert($this->table, array(
				"id_member" 	=> $id,
				"message" 		=> $message,
				"created_at" 	=> date('Y-m-j H:i:s'),
				"updated_at"	=> date('Y-m-j H:i:s'),
			));

		redirect("/");
	}

	public function index()
	{

		
	}


}
