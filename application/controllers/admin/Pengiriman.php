<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengiriman extends CI_Controller {

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
        $this->load->model('member_model');
	    $this->load->library('authlibrary',$this->params);
	    $this->load->library('grocery_CRUD');
	    $this->load->library('session');
	    	    // untuk mengecek login belum, jika belum di redirect ke login
		$this->authlibrary->check_login();
		$this->authlibrary->check_role('admin');
	}

	public function index()
    {	
    	$data['status'] = '';
		$data['title'] = "Daftar yang harus dikirim";
		
		if(null !== $this->input->get('status')){
			
			$data['status'] = $this->input->get('status');
		}

		$this->template->load('template/template_main','admin/pengiriman',$data);

    }

    public function datatable(){
		
		$members = $this->db->query("SELECT * FROM profile,members WHERE members.id = profile.id_member AND members.dikirim=0 AND members.status=1")->result();

		$output = array();
		foreach ($members as $key => $member) {
			$i = 0;
			$output[] = array(
					$i++ => $member->username,
					$i++ => $member->nama,
					$i++ => $member->email,
					$i++ => $member->alamat,
					$i++ => $member->no_hp,
					$i++ => "<a href='".base_url()."admin/pengiriman/input/".$member->id."' class='btn btn-success'> Kirim </a>",
				);
		}

		$return ['data'] = $output;
		echo json_encode($return);
	}

	public function input($id){
		$rule = $this->_rule();
		$this->form_validation->set_rules($rule);

		$data['users']=$this->member_model->getData($id,'id');
		$data['title'] = "Form Pengiriman";

		$this->template->load('template/template_main','admin/input_pengiriman',$data);
	}

	public function input_pengiriman($id){

		$data_pengiriman = array(
				'id_member'   		=> $id,
				'tanggal_kirim'		=> $this->input->post('tanggal_pengiriman'),
				'alamat'      		=> $this->input->post('alamat'),
				'no_hp'   			=> $this->input->post('no_hp'),
				"created_at"    	=> date('Y-m-j H:i:s'),
			);

		$this->db->trans_start();
		$this->db->insert('pengiriman',$data_pengiriman);

		$this->db->where('id',$id);
        $this->db->set('dikirim',1);
        $this->db->update('members');

        $this->db->trans_complete();
        $this->db->trans_status();
        redirect(base_url()."admin/pengiriman");
	}

	public function history(){
		$crud = new grocery_CRUD;
        $crud->set_table('pengiriman');

       // $crud->columns('nama','username','email');
        $crud->set_relation('id_member','members','username');
        $crud->display_as('id_member','Username');
        $crud->unset_export();
        $crud->unset_print();
        $crud->unset_add();
        $crud->unset_delete();
        $crud->unset_edit();
        $output=$crud->render();
        $output->title='History Pengiriman';
        $this->template->load('template/template_main','admin/history_pengiriman',$output);
	}

	private function _rule(){

		return array(
						array(
			                'field' => 'nama_penerima',
			                'label' => 'Nama Penerima',
			                'rules' => 'required'
	        			),
	        			array(
			                'field' => 'username_penerima',
			                'label' => 'Username Penerima',
			                'rules' => 'required'
	        			),
	        			array(
			                'field' => 'email_penerima',
			                'label' => 'Email Penerima',
			                'rules' => 'required'
	        			),
						array(
			                'field' => 'alamat',
			                'label' => 'Alamat Penerima',
			                'rules' => 'required'
	        			),
	        			array(
			                'field' => 'no_hp',
			                'label' => 'Nomor Handphone Penerima',
			                'rules' => 'required'
	        			),
	        			array(
			                'field' => 'tanggal_pengiriman',
			                'label' => 'Tanggal Pengiriman',
			                'rules' => 'required'
	        			),
	        			
			);
	}
}