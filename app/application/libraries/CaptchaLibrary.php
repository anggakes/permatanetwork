<?php defined('BASEPATH') OR exit('No direct script access allowed');


class CaptchaLibrary {

        
        public function __construct()
        {
 
                $this->load->helper('captcha');
        }

        /* 
        * Using CI global variable without extra variable
        * 
        */
        public function __get($var)
        {
                return get_instance()->$var;
        }

        public function make_captcha(){

                $vals = array(

        'img_path'       => './captcha/',
        'img_url'    => base_url().'captcha/',
        'img_width'  => 200,
        'img_height' => 30,
        );
        
        $cap = create_captcha($vals);

        if($cap){
                $data= array(
                        'captcha_id'=>'',
                        'captcha_time'=>$cap['time'],
                        'ip_address'=>$this->input->ip_address(),
                        'word'=>$cap['word'],
                );

                $query=$this->db->insert_string('captcha', $data);
                $this->db->query($query);
        }else{
                return "captcha didn't work";
        }

                return $cap['image'];
        }
        
        public function cek_captcha()
        {
                $expiration = time()-7200;
                $sql = "delete from captcha where captcha_time < ?";
                $binds= array($expiration);
                $query = $this->db->query($sql,$binds);

                $sql="select COUNT(*) as count from captcha where word = ? and ip_address = ? and captcha_time > ? ";
                $binds= array($this->input->post('captcha'),$this->input->ip_address(),$expiration);
                $query = $this->db->query($sql,$binds);
                $row = $query->row();

                if($row->count > 0){
                        return true;
                }
                        return false;
        }
}