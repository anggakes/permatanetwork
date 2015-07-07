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
	    $this->authlibrary->check_login();
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

	public function edit(){
		
		$data['user'] = unserialize($_SESSION['login_user']);
		$bank = $this->db->query("SELECT * FROM bank")->result();
		$data['bank'] = object_to_array($bank,'nama_bank');

		$this->authlibrary->check_login();
		$this->template->load('template/template_main','member/profile/edit',$data);
	}

	public function upload_foto(){
			$user = unserialize($_SESSION['login_user']);
			$file_name = $user->attributes("username");


			$this->load->library('upload', $this->_upload_conf($file_name));
			
			if ( !$this->upload->do_upload())
			{
				$this->session->set_flashdata('message',$this->upload->display_errors());
				$this->session->set_flashdata('sukses', false);
				
			}
			else
			{
				$data_upload=$this->upload->data();
				$foto= $file_name.$data_upload['file_ext'];
				
				$this->db->where('id',$user->profile('id'));
				$this->db->set('foto',$foto);
				$this->db->update('profile');

				$this->session->set_flashdata('message',"Berhasil di Ubah");
				$this->session->set_flashdata('sukses', true);
				$this->_refresh_session();
			}

			redirect(base_url("profile/edit"));
	}

	public function update(){
		
		$user = unserialize($_SESSION['login_user']);

		$data  = $this->input->post('profile');
		$table = 'profile';
		$id = $user->profile('id');

		$this->session->set_flashdata('message',"Berhasil di Ubah");
		$this->session->set_flashdata('sukses', true);
		
		$this->member_model->update($table, $data, $id);
		$this->_refresh_session();
		redirect(base_url("profile/edit"));
	}

	private function _refresh_session(){
		
		$user = unserialize($_SESSION['login_user']);
		$new = $this->member_model->getData($user->attributes('username'));
		$_SESSION['login_user'] = serialize($new);

	}

	private function _upload_conf($file_name){

		return array(
				  'file_name'		=> "$file_name",
                  'upload_path'     => dirname($_SERVER["SCRIPT_FILENAME"])."/foto_profil/",
                  'upload_url'      => base_url()."foto_profil/",
                  'allowed_types'   => "gif|jpg|png|jpeg",
                  'overwrite'       => TRUE,
                  'max_size'        => "1000KB",
                  'max_height'      => "768",
                  'max_width'       => "1024"  
                );
	}


	
	
}
