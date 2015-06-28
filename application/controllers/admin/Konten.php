<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Konten extends CI_Controller {

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

    public function artikel()
    {	


    	$crud = new grocery_CRUD;
        $crud->set_table('konten');
        $crud->columns('judul','created_at','updated_at');
   		$crud->fields('judul','isi','created_at','updated_at');
        $output = $crud->render();
 
        $this->template->load('template/template_main','admin/pengumuman',$output);
    }

    public function halaman(){


    }

    public function homepage(){

        
    }

 
}