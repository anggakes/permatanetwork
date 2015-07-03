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
        $crud->set_table('pengumuman');
        $crud->columns('judul','isi','created_at','updated_at','expired_at');
        $crud->unset_export();
        $crud->unset_print();
        $crud->unset_texteditor('isi');
        $crud->change_field_type('created_at','invisible');
		$crud->change_field_type('updated_at','invisible');
        $crud->callback_before_insert(array($this,"_timestamp"));

        $output = $crud->render();
        $output->title='Kelola Pengumuman';
       
        $this->template->load('template/template_main','admin/pengumuman',$output);

    }

  /*  public function _createnama($data){
         $crud->callback_before_insert(array($this,"_createnama"));   
        $data['nama'] ='isa';
        return $data;
    }*/

    public function _timestamp($data){
    	$data['created_at']=date('Y-m-j H:i:s');
    	return $data;
    }

}