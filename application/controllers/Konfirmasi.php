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

	    $this->authlibrary->check_login();
		$this->authlibrary->check_role('members');
	    
	}//

	public function statusTransfer()
	{	
		$pesan ='';
		$sukses = false;
		$user = unserialize($_SESSION['login_user']);

		$this->db->trans_start();
		if($this->voucher_model->cekKodeVoucher($this->input->post('kode_voucher'), $user->attributes('id'))){
			
			$data = array(
				"id_member" => $user->attributes('id'),
				"keterangan" => "Aktivasi dengan Voucher ".$this->input->post('kode_voucher'),
				"created_at" => date('Y-m-j H:i:s'),
				"tahap_aktivasi" => "voucher" //tahap aktifasi jadi transfer
			);
			
			$user->activation(2); // 2 adalah status member menjadi transfer 
			$this->db->insert("activation_member_logs",$data); // catat logs
			$user->cariReferralTransfer(); // cari referral yang akan di transfer
			
			$_SESSION['login_user'] = serialize($this->member_model->getData($user->attributes('username')));
			$pesan = "Selamat Anda berhasil. Kode Voucher benar.";
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
		$pesan ='';
		$sukses = false;

		$this->db->trans_start();
		if($user->cekSelesaiTransfer()){
				
			$data = array(
				"id_member" => $user->attributes('id'),
				"keterangan" => "Aktifasi selesai transfer referral",
				"created_at" => date('Y-m-j H:i:s'),
				"tahap_aktivasi" => "transfer" //tahap aktifasi jadi transfer
			);
			
			$user->activation(1); // 2 adalah status member menjadi transfer 
			$this->db->insert("activation_member_logs",$data); // catat logs
			
			$_SESSION['login_user'] = serialize($this->member_model->getData($user->attributes('username')));
			$pesan = "Selamat anda sudah dapat menikmati income dari downline anda";
			$sukses = true;
		}
		else{
			$pesan = "Maaf status transfer anda belum di verifikasi semua, Harap tunggu verifikasi member lainnya";

		}
		$this->db->trans_complete();

		$this->session->set_flashdata('sukses', $sukses);
		$this->session->set_flashdata('message', $pesan);
		redirect("/");
		
	}
	
	
}
