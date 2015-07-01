<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ManajemenAdmin extends CI_Controller {

	protected $params = array('model'=>'admin');

	

	public function __construct()
	{
	    parent::__construct();
	    $this->load->database();
        $this->load->library('template');
        $this->load->library('session');
        $this->load->model('admin_model');
	    $this->load->library('authlibrary',$this->params);
	    $this->load->library('grocery_CRUD');

	    // untuk mengecek login belum, jika belum di redirect ke login
		$this->authlibrary->check_login();
		$this->authlibrary->check_role('admin');
	    
	}//

	public function index(){
		$crud = new grocery_CRUD;
        $crud->set_table('admin');

        $crud->columns('nama','username','email','last_login');
        $crud->unset_export();
        $crud->unset_print();
        $crud->unset_read();
        $crud->unset_edit_fields('password');

        $crud->callback_before_insert(array($this,"_timestamp"));
        
        $crud->change_field_type('created_at','invisible');
        $crud->change_field_type('updated_at','invisible');
        $crud->change_field_type('last_login','invisible');
        $crud->change_field_type('super_admin','invisible');

        $output=$crud->render();
        $output->title='Kelola Admin';
        $this->template->load('template/template_main','admin/contents',$output);
	}

	 public function _timestamp($data){
        $data['created_at']=date('Y-m-j H:i:s');
        $data['super_admin']=0;
        $data['password']=$this->admin_model->hash_password($data['password']);
        
        return $data;
    }

}