<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	protected $params = array('model'=>'members');

	

	public function __construct()
	{
	    parent::__construct();


        $this->load->library('template');
        $this->load->library('session');
        $this->load->model('member_model');
	    $this->load->library('authlibrary',$this->params);
	    $this->load->library('transferreferrallibrary');
	    
	}//

	public function index()
	{	

		if($this->authlibrary->is_login() and $this->authlibrary->is_role('members')){
			// untuk mengecek login belum, jika belum di redirect ke login
			$this->authlibrary->check_login();
			$this->authlibrary->check_role('members');
			$user = unserialize($_SESSION['login_user']);
			$data['user'] = $user;
			
			if($user->attributes('status') == 1){

				$data['verifikasi'] = $this->transferreferrallibrary->getDataAllVerifikasi($user->attributes('id')," AND status_transfer <> 2 AND members.limited_transfer_at >= NOW()");
				$data['title']="Statistik Member";
				$this->template->load('template/template_main','member/home/dashboard',$data);	
			}
			else if($user->attributes('status') == 2){
				
				$this->template->load('template/template_main','member/home/transfer',$data);	
			}
			else if($user->attributes('status') == 0){

				$this->template->load('template/template_main','member/home/inactive',$data);

			}else if($user->attributes('status') == -1){

				$this->template->load('template/template_main','member/home/banned',$data);
			}
			
		}else{
			$this->load->model('content_model');

			$data['homepage'] = $this->content_model->getHomePage()->isi;
			$data['slider']= $this->content_model->getSlider();
			$this->template->load('template/template_web','home',$data);
		}

	}
	
	
}
