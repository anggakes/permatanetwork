<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Voucher extends CI_Controller {

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
	    $this->load->library('grocery_CRUD');
	    $this->load->model('voucher_model');
	    $this->load->library('session');
	    	    // untuk mengecek login belum, jika belum di redirect ke login
		$this->authlibrary->check_login();
		$this->authlibrary->check_role('admin');
	}

    public function index()
    {	
    	$crud = new grocery_CRUD;
        $crud->set_table('voucher');
        $crud->where('status','0');
        $crud->columns('nomor','created_at');
        $crud->display_as('nomor', 'Kode Voucher');
        $crud->unset_operations();       

        $output=$crud->render();
        $output->title='Data Voucher';
       
        $this->template->load('template/template_main','admin/voucher',$output);

    }

     public function histori()
    {   
        $crud = new grocery_CRUD;
        $crud->set_table('voucher');
        $crud->where('voucher.status','1');
        $crud->columns('nomor','id_member','created_at',"used_at");
        $crud->set_relation('id_member','members','username');
        $crud->display_as('nomor', 'Kode Voucher');
        $crud->display_as('id_member', 'Member');
        $crud->unset_operations();       

        $output=$crud->render();
        $output->title='Data Voucher';
       
        $this->template->load('template/template_main','admin/voucher',$output);

    }

    public function generateVoucher(){
        $banyak = $this->input->post('banyak');
    	$generate=$this->voucher_model->createKodeVoucher($banyak);

    	if($generate){
    		$this->session->set_flashdata('message','Voucher berhasil di generate');
    		$this->session->set_flashdata('sukses',true);
    		redirect(base_url()."admin/voucher");
    	}
    }
}