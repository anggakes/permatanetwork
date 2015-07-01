<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contents extends CI_Controller {

	/* 
	* parameter model yang digunakan 
	* dalam library Auth terdapat model
	* members dan admins	
	*/
	protected $params = array('model'=>'admin');

	
    public $jenis;

	public function __construct()
	{
	    parent::__construct();

        $this->load->library('form_validation');
        $this->load->library('template');
	    $this->load->library('authlibrary',$this->params);
	    $this->load->library('grocery_CRUD');
        $this->load->library('image_CRUD');

        // untuk mengecek login belum, jika belum di redirect ke login
        $this->authlibrary->check_login();
        $this->authlibrary->check_role('admin');
	}

    private function master(){
        $crud = new grocery_CRUD;
        $crud->set_table('contents');
        $crud->unset_columns('jenis','slug','isi');
        $crud->callback_before_insert(array($this,"_timestamp"));
        $crud->callback_before_update(array($this,"_timestamp"));
        $crud->unset_export();
        $crud->unset_print();
        $crud->unset_read();
        $crud->change_field_type('jenis','invisible');
        $crud->change_field_type('slug','invisible');
        $crud->change_field_type('created_at','invisible');
        $crud->change_field_type('updated_at','invisible');

        return $crud;
    }

    public function artikel(){

        $this->jenis=0;
        $crud=$this->master();
        $crud->where('jenis',0);
        
        $output = $crud->render();
        $output->title='Kelola Artikel';
        $this->template->load('template/template_main','admin/contents',$output);
    }

    public function halaman(){

        $this->jenis=1;
        $crud=$this->master();
        $crud->where('jenis',1);
        
        $output = $crud->render();
        $output->title='Kelola Halaman';

        $this->template->load('template/template_main','admin/contents',$output);

    }

    public function homepage(){

        $this->jenis=2;
        $crud=$this->master();
        $crud->where('jenis',2);
        $crud->unset_delete();
        $crud->unset_add();
        $crud->unset_read();
        
        $output = $crud->render();
        $output->title='Kelola Homepage';
        $this->template->load('template/template_main','admin/contents',$output);
        
    }

    public function _timestamp($data){
        $data['created_at']=date('Y-m-j H:i:s');
        $data['jenis']=$this->jenis;
        $data['slug']=$this->create_unique_slug($data['judul'],'contents');
        return $data;
    }

    function create_unique_slug($string,$table,$field='slug',$key=NULL,$value=NULL)
    {
        $t =& get_instance();
        $slug = url_title($string);
        $slug = strtolower($slug);
        $i = 0;
        $params = array ();
        $params[$field] = $slug;
     
        if($key)$params["$key !="] = $value;
     
        while ($t->db->where($params)->get($table)->num_rows())
        {  
            if (!preg_match ('/-{1}[0-9]+$/', $slug ))
                $slug .= '-' . ++$i;
            else
                $slug = preg_replace ('/[0-9]+$/', ++$i, $slug );
             
            $params [$field] = $slug;
        }  
        return $slug;  
    }
 
    public function slider(){

         $image_crud = new image_CRUD();
         $image_crud->set_table('sliders');
         $image_crud->set_url_field('image_url');
         $image_crud->set_title_field('caption');
         $image_crud->set_ordering_field('urutan')
        ->set_image_path('assets/uploads/sliders');
         $output = $image_crud->render();
         $output->title='Kelola Slide Show';

         $this->template->load('template/template_main','admin/contents',$output);
    }
}