<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Member_model extends CI_Model
{

	public $attributes;
	public $profile;



	public function __construct()
	{

		parent::__construct();
		$this->load->database();
		$this->load->model('member_model');
		$this->load->model('wallet_model');
		$this->load->library('transferreferrallibrary');
		
	}

	public function register(){

		$data_member 	= array(

				'username'   	=> $this->input->post('member[username]'),
				'code'		 	=> $this->generate_code($this->input->post('member[username]')),
				'email'      	=> $this->input->post('member[email]'),
				'password'   	=> $this->hash_password($this->input->post('member[password]')),
				'referral_code' => $this->input->post('member[referral_code]'),
				'created_at' => date('Y-m-j H:i:s'),
				'updated_at' => date('Y-m-j H:i:s'),

			);


		$this->db->trans_start();
		
		$this->db->insert('members',$data_member);
			$id_member 					= $this->db->insert_id();			
			$data_profile 				= $this->input->post('profile');
			$data_profile['id_member'] 	= $id_member;
		$this->db->insert('profile',$data_profile);	
		// buat dompet dulu om ! 
		$this->wallet_model->create($this);

		$this->db->trans_complete();

		return $this->db->trans_status();
		
	}

	public function hasConfirmation(){

		$confirmation = $this->db->query("SELECT count(id) as b FROM konfirmasi_pendaftaran WHERE id_member ='".$this->attributes('id')."'")->row();
		
		return ($confirmation->b > 0) ? true : false ;
	}

	public function getConfirmation(){
		
		$confirmation = $this->db->query("SELECT * FROM konfirmasi_pendaftaran WHERE id_member ='".$this->attributes('id')."'")->row();
		
		return $confirmation ;	
	}

	public function activation($status){

		$this->db->trans_start();
		// update status member
		// 0 => tidak aktif, 1=> aktif, 2=>transfer, -1=>banned
		$this->db->set('status',$status);

		if($status == 1){
			
			$this->db->set('activation_at',date('Y-m-j H:i:s'));

		}else if($status == 2){

			$waktu_transfer = date('Y-m-j H:i:s',strtotime(date('Y-m-j H:i:s').'+ 36 hours'));
			$this->db->set('limited_transfer_at',$waktu_transfer);
		}

		$this->db->where('id', $this->attributes('id'));
		$this->db->update('members');

		if($status == 2){
			
			$this->setAutomaticBlock($waktu_transfer);
		}

		$this->db->trans_complete();

		return $this->db->trans_status();
	}

	public function setAutomaticBlock($waktu_transfer){

		// set timer menggunakan mysql event

		$query = "CREATE EVENT banned_".$this->attributes('id')."
			    ON SCHEDULE AT FROM_UNIXTIME(".strtotime($waktu_transfer).")
			    DO
			      BEGIN
			        UPDATE members SET status = '-1' WHERE id = ".$this->attributes('id').";
			      END";

		return $this->db->query($query);
	}

	public function toogleStatus(){

		// update status member
		$this->db->set('status','status *'.(int) -1,false);
		$this->db->where('id', $this->attributes('id'));
		$this->db->update('members');

		return $this;
	}

	public function isActive(){

		return ($this->attributes('status') == 1) ? true : false ;
	}

	/*
	* mengambil data dari table members
	* berdasarkan username, code, atau email
	*/

	public function getData($val, $by = "username"){

		$user 		= $this->db->query("SELECT * FROM members WHERE $by='$val' ")->row();
		$profile 	= $this->db->query("SELECT * FROM profile WHERE id_member='$user->id'")->row();
		
		$this->attributes 	= $user;
		$this->profile	 	= $profile;

		return $this;

	}

	/*
	* 
	* Mengecek apakah user memiliki referral
	*/
	public function hasReferral(){

		if($this->attributes("referral_code") !== '') {
			
			if($this->getReferral()->attributes('status') == 1){

				return true;
			}
		}
		else{

			return false;
		}
	}

	public function getReferral(){

		$referral 		= $this->member_model->getData($this->attributes('referral_code'),'code');

		return $referral;
	}
	
	/*
	* mengecek apakah user memiliki downline
	* 
	*/
	public function hasDownline(){

		$downline = $this->db->query("SELECT count(*) as banyak FROM members WHERE referral_code = '".$this->attributes('code')."' AND status = 1")->row();

		return ($downline->banyak > 0) ? true : false;
	}

	/*
	* Mengembalikan object member_model sebagai referral user
	* 1 user memiliki null atau banyak downline
	*/
	public function getDownline(){

		$downline_data = $this->db->query("SELECT code FROM members WHERE referral_code = '".$this->attributes('code')."' AND status = 1")->result();

		$downline_obj 	= array();

		foreach ($downline_data as $key => $value) {
			$member_model = new Member_model;
			$downline_obj[] = $member_model->getData($value->code,'code');
		}

		return $downline_obj;
	}

	public function countDownline(){
		return $this->recursiveCountDownline($this->getDownline());
	}

	private function recursiveCountDownline($listOfItems){	
		$jumlah = 0;
      	foreach ($listOfItems as $item) {
          $jumlah ++;
          if ($item->hasDownline()) {
             $jumlah += $this->recursiveCountDownline($item->getDownline()); // here is the recursion
          }
      	}
      	return $jumlah;
	}


	public function getBalance(){
		return $this->wallet_model->getBalance($this);
	}

	/*
	Transfer referral 
	*/

	public function cariReferralTransfer(){

		return $this->transferreferrallibrary->cariReferral(serialize($this));
	}

	public function getDataAllTransfer(){

		return $this->transferreferrallibrary->getDataAll($this->attributes('id'));
	}

	public function getDataAllVerifikasiTransfer(){

		return $this->transferreferrallibrary->getDataAllVerifikasi($this->attributes('id'));
	}

	public function cekSelesaiTransfer(){

		return $this->transferreferrallibrary->cekSelesaiTransfer($this->attributes('id'));
	}

	/*
	* Membuat chart downline
	* 1 user memiliki null atau banyak downline
	*/


	public function attributes($property){

		return (isset($this->attributes->$property)) ? $this->attributes->$property : '' ;
	}

	public function profile($property){

		return (isset($this->profile->$property)) ? $this->profile->$property : '' ;
	}


	public function generate_code($username){

		return strtoupper(substr(md5($username),0,7));
	}

	public function hash_password($password) {
		
		
		return password_hash($password, PASSWORD_BCRYPT);
	}

	public function rules(){

      return array(
	        array(
	                'field' => 'member[username]',
	                'label' => 'Username',
	                'rules' => 'required|is_unique[members.username]'
	        ),
	        array(
	                'field' => 'member[password]',
	                'label' => 'Password',
	                'rules' => 'required',
	        ),
	        array(
                'field' => 'member[repassword]',
                'label' => 'Password Confirmation',
                'rules' => 'required|matches[member[password]]'
                
        	),
	        array(
	                'field' => 'member[referral_code]',
	                'label' => 'Refferal Code',
	                'rules' => array('required',
					                array(
					                        'referral_code_validation',
					                        function($str)
					                        {
					                                
					                                $cek = $this->db->query("SELECT count(*) as valid FROM members WHERE code='$str'")->row();
					                                return ($cek->valid>0) ? true :false;
					                        }
					                )
        						),
	                'errors' => array('referral_code_validation'=>'Kode Refferal yang anda masukkan tidak valid')        
	        ),
	        array(
	                'field' => 'member[email]',
	                'label' => 'Email',
	                'rules' => 'required|is_unique[members.email]'
	        ),
	        array(
	                'field' => 'profile[nama]',
	                'label' => 'Nama',
	                'rules' => 'required'
	        ),
	        array(
	                'field' => 'profile[alamat]',
	                'label' => 'Alamat',
	                'rules' => 'required'
	        ),
	        array(
	                'field' => 'profile[kota]',
	                'label' => 'Kota',
	                'rules' => 'required'
	        ),
	        array(
	                'field' => 'profile[provinsi]',
	                'label' => 'Provinsi',
	                'rules' => 'required'
	        ),
	        array(
	                'field' => 'profile[kode_pos]',
	                'label' => 'Kode Pos',
	                'rules' => 'required'
	        ),
	        array(
	                'field' => 'profile[no_hp]',
	                'label' => 'Nomor HP',
	                'rules' => 'required'
	        ),
	         array(
	                'field' => 'profile[no_rekening]',
	                'label' => 'Nomor Rekening',
	                'rules' => 'required'
	        ),
	           array(
	                'field' => 'profile[nama_bank]',
	                'label' => 'Nama Bank',
	                'rules' => 'required'
	        ),  array(
	                'field' => 'profile[no_rekening]',
	                'label' => 'Nomor Rekening',
	                'rules' => 'required'
	        ),  array(
	                'field' => 'profile[nama_rekening]',
	                'label' => 'Nama Rekening',
	                'rules' => 'required'
	        ),
	       
		);

	}



}