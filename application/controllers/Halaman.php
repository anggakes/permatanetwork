<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Halaman extends CI_Controller {

	protected $params = array('model'=>'members');

	

	public function __construct()
	{
	    parent::__construct();

	    $this->load->database();
        $this->load->library('template');
       
        $this->load->model('content_model');
	    
	}//

	public function index($slug)
	{
		$this->load->model('content_model');

			$data['halaman'] = $this->db->query("SELECT * FROM contents WHERE slug = '$slug'")->row();
			$this->template->load('template/template_web','halaman',$data);
	}
}