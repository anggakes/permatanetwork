<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

	protected $params = array('model'=>'members');

	public function __construct()
	{
	    parent::__construct();

        $this->load->library('template');
        $this->load->library('session');
        $this->load->model('member_model');
	    $this->load->library('authlibrary',$this->params);
	    
	}//

	public function index()
	{	

		$username = $this->uri->segment(2);

		if(isset($username)){
			$data['user'] = serialize($this->member_model->getData($username));
		}else{
			$data['user'] = $_SESSION['login_user'];
		}
		$this->authlibrary->check_login();
		$this->template->load('template/template_main','member/profile/index',$data);
		
	}

	public function downline($username){

		$data['user'] = serialize($this->member_model->getData($username));
		
		$this->authlibrary->check_login();
		$this->load->view('member/profile/downline',$data);
	}
	
	
}
