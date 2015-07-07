<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Template {
		
		public $template_data = array();

		
		public function set($name, $value)
		{
			$this->template_data[$name] = $value;
		}
	
		public function load($template = '', $view = '' , $view_data = array(), $return = FALSE)
		{               
			// library url dan form sudah di autoload
			$this->set('halaman', $this->getHalaman());
			$this->set('contents', $this->load->view($view, $view_data, TRUE));		
			return $this->load->view($template, $this->template_data, $return);
		}

		public function __get($var)
        {
                return get_instance()->$var;
        }

/* untuk menampilkan link halaman di menu */

        public function getHalaman(){
        	$this->load->model('content_model');
        	$halaman = $this->content_model->getHalaman();
        	return $halaman;
        }
}