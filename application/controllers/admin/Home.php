<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	protected $params = array('model'=>'admin');

	

	public function __construct()
	{
	    parent::__construct();

        $this->load->library('template');
        $this->load->library('session');
        $this->load->model('member_model');
        $this->load->model('pengumuman_model');
        $this->load->model('content_model');
	    $this->load->library('authlibrary',$this->params);
	    
	}//

	public function index()
	{	
		// untuk mengecek login belum, jika belum di redirect ke login
		$this->authlibrary->check_login();
		$this->authlibrary->check_role('admin');

		//ambil pengumuman
				$data['pengumumans'] = $this->pengumuman_model->getPengumuman();
				$data['halamans'] = $this->content_model->getHalaman();
				$data['beritas'] = $this->content_model->getBerita();
				$total_member = $this->db->query("SELECT count(id) as total FROM members")->row()->total;
				$data['total_member'] = $total_member;

				$data['title']="Stat Sistem";

		$this->template->load('template/template_main','admin/home',$data);

	}
	
	
}
