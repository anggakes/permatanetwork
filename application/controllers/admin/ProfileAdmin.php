<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ProfileAdmin extends CI_Controller {

	protected $params = array('model'=>'admin');

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

	public function edit(){
		$data['user'] = unserialize($_SESSION['login_user']);

		$this->authlibrary->check_login();
		$this->template->load('template/template_main','admin/edit_profile',$data);
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
                $this->db->update('admin');

               redirect(base_url("admin/login?msg=Password sudah berhasil diubah silahkan login kembali"));

				
			}else{

				$this->session->set_flashdata('sukses', false);
				$this->session->set_flashdata('message', "password anda gagal di ubah");
			}

		}else{
			
			$this->session->set_flashdata('sukses', false);
			$this->session->set_flashdata('message', "Kombinasi Password salah");	
		}

		redirect(base_url("admin/profileadmin/edit"));
	} // end update_password


	public function update_akun(){
		$field = $this->uri->segment(4);
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
                $this->db->update('admin');

                
                redirect(base_url("admin/login?msg=$field sudah berhasil diubah silahkan login kembali"));
		}else{
			
			$this->session->set_flashdata('sukses', false);
			$this->session->set_flashdata('message', "$field sudah digunakan");	
		}

		redirect(base_url("admin/profileadmin/edit"));
	}

}