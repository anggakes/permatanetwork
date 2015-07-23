<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ManajemenMember extends CI_Controller {

	protected $params = array('model'=>'admin');

	
	

	public function __construct()
	{
	    parent::__construct();
	    $this->load->database();
        $this->load->library('template');
        $this->load->library('session');
        $this->load->library('transferreferrallibrary');
        $this->load->model('member_model');
	    $this->load->library('authlibrary',$this->params);

	    // untuk mengecek login belum, jika belum di redirect ke login
		$this->authlibrary->check_login();
		$this->authlibrary->check_role('admin');
	    
	}//

	public function index()
	{	
		$data['status'] = '';
		$data['title'] = "Kelola Data Member";
		
		if(null !== $this->input->get('status')){
			
			$data['status'] = $this->input->get('status');
		}

		$this->template->load('template/template_main','admin/manajemen_user/index',$data);

	}

	public function toogle($username){
		

		$redirectTo = (null !== $this->input->get('from')) ? $this->input->get('from') : base_url()."profile/$username";

		$user = $this->member_model->getData($username);
		$user->toogleStatus();
		$this->session->set_flashdata('message',"Status $username berhasil di ubah");
		$this->session->set_flashdata('sukses', true);

		redirect( $redirectTo );

	}
	
	public function datatable(){
		
		$status = '';

		if(null !== $this->input->get('status')){
			
			$status = "AND status = '".$this->input->get('status')."'";
		}

		$members = $this->db->query("SELECT * FROM members,profile WHERE members.id = profile.id_member $status")->result();

		$output = array();
		foreach ($members as $key => $member) {
			$i = 0;
			$output[] = array(
					$i++ => $this->_aksi($member->username),
					$i++ => $member->username,
					$i++ => $member->email,
					$i++ => $member->nama,
					$i++ => $member->created_at,
					$i++ => $this->_setStatus($member->status),
				);
		}

		$return ['data'] = $output;
		echo json_encode($return);
	}

	public function riwayat_transfer($id_transfer){
		
		$transfer = $this->transferreferrallibrary->getData($id_transfer);
		$user = unserialize($_SESSION['login_user']);
		$referral = $this->member_model->getData($transfer->data->id_referral,'id');
		 $data['breadcrumb'] = array(
					array(
						'link' => base_url('admin/manajemenmember'),
						'nama' => "Manajemen Member",
					),
					array(
						'link' => base_url('profile/'.$referral->attributes('username')."?admin"),
						'nama' => $referral->attributes('username'),
					),
					array(
						'link' => "",
						'nama' => "Riwayat_transfer",
					),
		);
		$data['transfer'] = $transfer;
		$data['id_transfer'] = $id_transfer;
		$data['user'] = $user;
		$data['referral'] = $referral;
		$data['u'] = $this->input->get('u');
		$this->template->load('template/template_main','member/konfirmasi/riwayat_transfer',$data);
	}

	public function verifikasi_proses($id_transfer){

		
		$transfer = $this->transferreferrallibrary->getData($id_transfer);
		$referral = $this->member_model->getData($transfer->data->id_referral,"id");
		$user = $this->member_model->getData($transfer->data->id_member,"id");
		
			$transfer->confirmed($id_transfer, $referral, $transfer->data->amount);
			$this->session->set_flashdata('message',"Verifikasi berhasil");
			$this->session->set_flashdata('sukses', true);

		redirect(base_url()."profile/".$user->attributes('username'));
	}

	private function _setStatus($status){


		if($status==1){

			return "<span class='label label-success'>Aktif</span>";

		}elseif($status == 0){

			return "<span class='label label-default'>Tidak Aktif</span>";

		}elseif($status == -1){

			return "<span class='label label-danger'>Banned</span>";

		}else if($status == 2){

			return "<span class='label label-default'>Transfer</span>";
		}
	}


	private function _aksi($username){
			$button = "
		<a href='".base_url()."profile/$username?admin' class='aksi'><i class='fa fa-search'></i> Detail</a> 
		";

	
		return "<center>".$button."</center>";
	}
	
}
