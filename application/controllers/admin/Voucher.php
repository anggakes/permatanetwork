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
        $crud->columns('nomor');
        $crud->display_as('nomor', 'Kode Voucher');
        $crud->unset_operations();       

        $output=$crud->render();
        $output->title='Data Voucher';
       
        $this->template->load('template/template_main','admin/voucher',$output);

    }

    public function generateVoucher(){
    	$generate=$this->voucher_model->createKodeVoucher();

    	if($generate){
    		$this->session->set_flashdata('message','Voucher berhasil di generate');
    		$this->session->set_flashdata('sukses',true);
    		redirect(base_url()."admin/voucher");
    	}
    }
}