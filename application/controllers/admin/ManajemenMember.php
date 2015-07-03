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
		
		$redirectTo = (null !== $this->input->get('from')) ? $this->input->get('from') : base_url()."admin/manajemenmember";

		$user = $this->member_model->getData($username);
		$user->toogleStatus();

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
					$i++ => $this->_aksi($member->username, $member->status),
					$i++ => $this->_cbUsername($member->username),
					$i++ => $member->email,
					$i++ => $member->nama,
					$i++ => $member->created_at,
					$i++ => $this->_setStatus($member->status),
				);
		}

		$return ['data'] = $output;
		echo json_encode($return);
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

	private function _cbUsername($username){

		return "<a href='".base_url()."profile/$username'>$username</a>";
	}


	private function _aksi($id, $status){

		$button ='';

		if($status==1){

			$button = "
		<a href='".base_url()."admin/manajemenmember/toogle/$id' class='aksi'><i class='fa fa-ban'></i> Banned</a> 
		";

		}elseif($status == 0){

			$button = "
		<a href='".base_url()."admin/manajemenmember/aktifasi/$id' class='aksi'><i class='fa  fa-check-square-o'></i> Aktifasi</a>
		";

		}elseif($status == -1){

			$button = "
		<a href='".base_url()."admin/manajemenmember/toogle/$id' class='aksi'><i class='fa fa-undo'></i> Unbanned</a>
		";

		}
		
		return "<center>".$button."</center>";
	}
	
}
