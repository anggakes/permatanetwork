<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengumuman extends CI_Controller {

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

	    	    // untuk mengecek login belum, jika belum di redirect ke login
		$this->authlibrary->check_login();
		$this->authlibrary->check_role('admin');
	}

    public function index()
    {	
    	$crud = new grocery_CRUD;
        $crud->set_table('belajar');
        $crud->where('nama','isa');
        $crud->fields('enum','date','nama');

        $crud->callback_before_insert(array($this,"_createnama"));   
       
        $this->template->load('template/template_main','belajar',$crud->render());

    }

    public function _createnama($data){
        $data['nama'] ='isa';
        return $data;
    }

}