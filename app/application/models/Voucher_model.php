<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Voucher_model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();		
	}
	
	public function generateRandomString($length = 4) {
   		
   		return substr(md5(uniqid(rand(), true)),0,$length);
  
	}

	public function createKodeVoucher(){
		
		for($i=0;$i<1000;$i++){
		$kode=$this->generateRandomString().'-'.$this->generateRandomString().'-'.$this->generateRandomString().'-'.$this->generateRandomString();
		
		$vocher 	= array(
				'nomor'   => $kode,
			);
   		$this->db->trans_start();
		$this->db->insert('voucher',$vocher);
   		$this->db->trans_complete();
   		}
		return $this->db->trans_status();
	}

	public function getKodeVoucher(){
		$confirmation = $this->db->query("SELECT * FROM voucher ")->result();
		
		return $confirmation ;	
	}

	public function cekKodeVoucher($kode){
		$sql=$this->db->query("select COUNT(*) as count from voucher where nomor = '$kode'")->row();
		
		if($sql->count > 0){
			$this->db->where('nomor',$kode);
			return $this->db->delete('voucher');
		}else{
			return false;
		}
	}
}