<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Konfirmasi extends CI_Controller {

	protected $params = array('model'=>'members');

	public function __construct()
	{
	    parent::__construct();
	    $this->load->database();
        $this->load->library('template');
        $this->load->library('session');
        $this->load->model('member_model');
	    $this->load->library('authlibrary',$this->params);
	    $this->load->model('voucher_model');
	    
	}//

	public function statusTransfer()
	{	
		$pesan ='';
		$sukses = false;

		$this->authlibrary->check_login();
		$this->authlibrary->check_role('members');

		$this->db->trans_start();
		if($this->voucher_model->cekKodeVoucher($this->input->post('kode_voucher'))){
			$user = unserialize($_SESSION['login_user']);
			$user->activation(2);

			$_SESSION['login_user'] = serialize($this->member_model->getData($user->attributes('username')));
			$pesan = "Selamat Anda. Kode Voucher berhasil.";
			$sukses = true;
		}
		else{
			$pesan = "Maaf voucher salah";

		}
		$this->db->trans_complete();

		$this->session->set_flashdata('sukses', $sukses);
		$this->session->set_flashdata('message', $pesan);
		redirect("/");
	}

	public function statusAktif(){
		$user = unserialize($_SESSION['login_user']);
		$user->activation(1);
	}
	
	
}
