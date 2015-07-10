<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

	protected $params = array('model'=>'members');

	public function __construct()
	{
	    parent::__construct();

        $this->load->library('template');
        $this->load->library('session');
         $this->load->library('form_validation');
        $this->load->model('member_model');

	    $this->load->library('authlibrary',$this->params);
	    $this->authlibrary->check_login();
	    

	}//

	public function index()
	{	

		$username = $this->uri->segment(2);

		if( null !== $this->input->get('admin')){
			$data['breadcrumb'] = array(
			array(
			'link' => base_url('admin/manajemenmember'),
			'nama' => "Manajemen_Member"
			),array(
			'link' => "",
			'nama' => "$username"
			),
			);
		}

		if(isset($username)){
			$data['user'] = serialize($this->member_model->getData($username));
		}else{
			$this->authlibrary->check_role('members');
			$data['user'] = $_SESSION['login_user'];
		}
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

	public function update_password(){
		$rules 		=  array(

				 array(
	                'field' => 'password_baru',
	                'label' => 'Password',
	                'rules' => 'required',
		        ),
		        array(
	                'field' => 'repassword_baru',
	                'label' => 'Password Confirmation',
	                'rules' => 'required|matches[password_baru]'
	                
	        	),
			);

		$user = unserialize($_SESSION['login_user']);

		$this->form_validation->set_rules($rules);

		// Form validation 
		if ($this->form_validation->run() != FALSE){
			$password = $this->input->post('password_lama');
			$hash = $user->attributes('password');

			if($this->authlibrary->verify_password_hash($password,$hash)){

				$newPassword = $this->member_model->hash_password($this->input->post('password_baru'));
				$this->db->where('id', $user->attributes('id'));
                $this->db->set("password",$newPassword);
                $this->db->update('members');

               redirect(base_url("auth/login?msg=Password sudah berhasil diubah silahkan login kembali"));

				
			}else{

				$this->session->set_flashdata('sukses', false);
				$this->session->set_flashdata('message', "password anda gagal di ubah");
			}

		}else{
			
			$this->session->set_flashdata('sukses', false);
			$this->session->set_flashdata('message', "Kombinasi Password salah");	
		}

		redirect(base_url("profile/edit"));
	} // end update_password


	public function update_akun(){
		$field = $this->uri->segment(3);
		$rules 		=  array(

				 array(
	                'field' => $field,
	                'label' => $field,
	                'rules' => array('required',
	                				array(
	                						'email_unique_validation',
	                						 function($str) use($field)
					                        {
					                                $cek = $this->db->query("SELECT count(*) as valid FROM members WHERE $field='$str'")->row();
					                                return ($cek->valid<1) ? true :false;
					                        }
					                )
        						),
	                'errors' => array('email_unique_validation'=>"$field Sudah Terdaftar")
		        ),
			);

		$user = unserialize($_SESSION['login_user']);

		$this->form_validation->set_rules($rules);

		// Form validation 
		if ($this->form_validation->run() != FALSE){

				$val_field = $this->input->post($field);
				$this->db->where('id', $user->attributes('id'));
                $this->db->set($field,$val_field);
                $this->db->update('members');

                
                redirect(base_url("auth/login?msg=$field sudah berhasil diubah silahkan login kembali"));
		}else{
			
			$this->session->set_flashdata('sukses', false);
			$this->session->set_flashdata('message', "$field sudah digunakan");	
		}

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
