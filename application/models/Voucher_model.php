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

	public function createKodeVoucher($banyak=1){
		$voucher = array();

		for($i=0;$i<$banyak;$i++){
		$kode=$this->generateRandomString().'-'.$this->generateRandomString().'-'.$this->generateRandomString().'-'.$this->generateRandomString();
		$vocher []	= array(
				'nomor'   => $kode,
				'created_at' => date('Y-m-j H:i:s'),
			);   		
   		}
   		$this->db->trans_start();
		$this->db->insert_batch('voucher',$vocher);
   		$this->db->trans_complete();
		return $this->db->trans_status();
	}

	public function getKodeVoucher(){
		$confirmation = $this->db->query("SELECT * FROM voucher ")->result();
		
		return $confirmation ;	
	}

	public function cekKodeVoucher($kode, $id_member){
		$sql=$this->db->query("select COUNT(*) as count from voucher where nomor = '$kode' AND status = 0")->row();
		
		if($sql->count > 0){
			$this->db->trans_start();
				$this->db->where('nomor',$kode);
				$this->db->update('voucher',array(
					"id_member"=>$id_member,
					"used_at"=>date('Y-m-j H:i:s'),
					"status" => 1,
					));
			$this->db->trans_complete();
		return $this->db->trans_status();
		}else{
			return false;
		}
	}
}