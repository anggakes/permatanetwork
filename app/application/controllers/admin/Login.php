<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	/* 
	* parameter model yang digunakan 
	* dalam library Auth terdapat model
	* members dan admins	
	*/
	protected $params = array('model'=>'admin');

	

	public function __construct()
	{
	    parent::__construct();

        $this->load->library('form_validation');
        $this->load->library('template');
	    $this->load->library('authlibrary',$this->params);


	}


public function index()
	{	
		
		$rules 		=  array(
				array(
	                'field' => 'usernameOrEmail',
	                'label' => 'Username',
	                'rules' => 'required'
		        ),
		        array(
	                'field' => 'password',
	                'label' => 'Password',
	                'rules' => 'required',
		        ),
			);
		$this->form_validation->set_rules($rules);

		// Form validation 
		if ($this->form_validation->run() == FALSE){

				$this->template->load('template/template_auth','auth/adminlogin');

		}else{

				$usernameOrEmail 	= $this->input->post('usernameOrEmail');
				$password 			= $this->input->post('password');

				$this->authlibrary->login($usernameOrEmail, $password);
				
		}

	}

}