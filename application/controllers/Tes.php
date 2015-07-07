<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tes extends CI_Controller {

	/* 
	* parameter model yang digunakan 
	* dalam library Auth terdapat model
	* members dan admins	
	*/
	protected $params = array('model'=>'members');

	

	public function __construct()
	{
	    parent::__construct();
	}

	public function email(){
		 $this->load->library('email');

		$to = "anggakesuma@gmail.com";
		$username = "angga";
		$password = "aaa";

		 $subject = 'Pendaftaran Permata Network';

            // Get full html:
            $body =
            "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
            <html xmlns='http://www.w3.org/1999/xhtml'>
            <head>
                <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
                <title>".htmlspecialchars($subject, ENT_QUOTES, $this->email->charset)."</title>
                <style type='text/css'>
                    body {
                        font-family: Arial, Verdana, Helvetica, sans-serif;
                        font-size: 16px;
                    }
                </style>
            </head>
            <body>
            <h3>Anda telah berhasil bergabung bersama Permata Network</h3>
            berikut ini adalah data akun anda :
            username : $username <br>
            username : $password <br>

            <br>
            <hr>
            <br>
            <a href='permatanetwork.com'>Permata Network</a>
            </body>
            </html>";
            // Also, for getting full html you may use the following internal method:
            //$body = $this->email->full_html($subject, $message);

            $result = $this->email
                ->from('noreply@permatanetwork.com')   
                ->to( $to)
                ->subject($subject)
                ->message($body);
            
            
            $result = $result->send();    
            
            var_dump($result);
            exit;
	}
}