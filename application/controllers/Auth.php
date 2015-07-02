<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	/* 
	* parameter model yang digunakan 
	* dalam library Auth terdapat model
	* members dan admins	
	*/
	protected $params = array('model'=>'members');

	

	public function __construct()
	{
	    parent::__construct();

	    $this->load->database();
        $this->load->library('form_validation');
        $this->load->library('template');
        $this->load->library('session');
	    $this->load->library('authlibrary',$this->params);
	    $this->load->model('member_model');
	    $this->load->model('voucher_model');
	    $this->load->library('captchalibrary');
	}

	function accept_terms()
	{
		//if (isset($_POST['accept_terms_checkbox']))
            if ($this->input->post('accept_terms_checkbox'))
		{
			return TRUE;
		}
		else
		{
			$error = 'Anda belum menyetujui syarat dan kondisi kami';
			$this->form_validation->set_message('accept_terms', $error);
			return FALSE;
		}
	}

	public function daftar()
	{	

		$rule = $this->member_model->rules();
		$rule[] = array(
					array(
	                'field' => 'captcha',
	                'label' => 'Captcha',
	                'rules' => array('required',
					                array(
					                        'check_captcha',
					                        function($str)
					                        {
					                           return ($this->captchalibrary->cek_captcha());
					                        }
					                )
        						),
	                'errors' => array('check_captcha'=>'Maaf captcha yang anda masukkan salah')),
	        
	        	);
		$this->form_validation->set_rules('accept_terms_checkbox', '', 'callback_accept_terms');
		$this->form_validation->set_rules($rule);

		// Form validation 
		if ($this->form_validation->run() == FALSE){
				$data['cap_img'] = $this->captchalibrary->make_captcha();

				$this->template->load('template/template_auth','auth/register',$data);

		}else{

				if($this->member_model->register() === false){
					echo "terjadi error di server";
				}else{
					redirect(base_url()."auth/success");
				}
		}

	}

	public function success(){

		$this->template->load('template/template_auth','auth/success');
	}

	public function login()
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

				$this->template->load('template/template_auth','auth/login');

		}else{

				$usernameOrEmail 	= $this->input->post('usernameOrEmail');
				$password 			= $this->input->post('password');

				$this->authlibrary->login($usernameOrEmail, $password);
				
		}

	}

	public function logout(){

		$this->authlibrary->logout($usernameOrEmail, $password);
		
	}

	public function not_allowed(){
		
		$this->template->load('template/template_auth','auth/not_allowed');
	}
	
	
	public function get_referral_code($usernameOrRefcode){
		if($usernameOrRefcode != ''){
			$data = $this->db->query("SELECT members.username,members.code as codex, profile.* FROM members JOIN profile ON members.id = profile.id_member WHERE username = '$usernameOrRefcode' OR code = '$usernameOrRefcode' ")->row();
		
			echo json_encode($data);

		}
	}

	public function tes($val){

		print_r($this->member_model->hash_password($val));

	}


}
