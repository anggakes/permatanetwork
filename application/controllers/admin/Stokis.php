<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Stokis extends CI_Controller {

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
	    $this->load->library('authlibrary',$this->params);
	    $this->load->library('session');
	    	    // untuk mengecek login belum, jika belum di redirect ke login
		$this->authlibrary->check_login();
		$this->authlibrary->check_role('admin');
	}

    public function index()
    {	
    	$data['status'] = '';
		$data['title'] = "Stokist";
		
		if(null !== $this->input->get('status')){
			
			$data['status'] = $this->input->get('status');
		}

		$this->template->load('template/template_main','admin/stokis',$data);

    }

    public function datatable(){
		
		$status = '';

		if(null !== $this->input->get('status')){
			
			$status = "AND status = '".$this->input->get('status')."'";
		}

		$members = $this->db->query("SELECT * FROM members,profile WHERE members.id = profile.id_member $status")->result();

		$output = array();
		foreach ($members as $key => $member) {
			if($member->status == 1 AND $member->dikirim == 0){
			$i = 0;
			$output[] = array(
					$i++ => $member->username,
					$i++ => $member->nama,
					$i++ => $member->email,
					$i++ => $member->alamat,
					$i++ => $member->no_hp,
					$i++ => "<a href='".base_url()."admin/stokis/status_kirim/".$member->id."' class='aksi'><i class='fa fa-check-square-o'></i> Kirim </a>",
				);
			}
		}

		$return ['data'] = $output;
		echo json_encode($return);
	}

	public function status_kirim($id){

		$this->db->where('id',$id);
		$this->db->update('members', array('dikirim'=>1));

		$this->session->set_flashdata('sukses', true);
		$this->session->set_flashdata('message', 'Barang telah dikirim ke user tersebut');

		redirect(base_url().'admin/stokis');
	}
}