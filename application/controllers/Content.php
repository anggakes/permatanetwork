<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Content extends CI_Controller {

	protected $params = array('model'=>'members');

	public function __construct()
	{
	    parent::__construct();

        $this->load->library('template');
        $this->load->library('session');
        $this->load->database();
	    $this->load->library('authlibrary',$this->params);
	    $this->authlibrary->check_login();
	    
	}//

	public function view($slug){

		$data['hal'] = $this->db->query("SELECT * FROM contents WHERE slug = '$slug'")->row();
		
		$this->template->load('template/template_main','content',$data);
	}

}