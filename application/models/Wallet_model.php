<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Wallet_model extends CI_Model
{


	public function __construct()
	{

		parent::__construct();
		$this->load->database();
		$this->load->model('member_model');
		$this->load->model('configuration_model');
	}

	public function create($id){
		$this->db->trans_start();
		$data = array(
				"id_member" => $id,
				"balance"	=> 0,
			);
		$this->db->insert('wallet', $data);
		$this->writeLog("Pembuatan wallet",$id,"created",0);
		$this->db->trans_complete();

		return $this->db->trans_status();
	}

	public function deposit($member, $amount, $msg = ''){
		$this->db->trans_start();
		$this->db->set("balance", "balance + ".(int) $amount,false);
		$this->db->where('id_member',$member->attributes('id'));
		$this->db->update("wallet");
		$this->writeLog($msg,$member->attributes('id'),"deposit",$amount);
		$this->db->trans_complete();
		return $this->db->trans_status();

	}

	public function withdraw($member, $amount, $msg=''){
		$this->db->trans_start();
		$this->db->set("balance", "balance - ".(int) $amount, false);
		$this->db->where('id_member',$member->attributes('id'));

		$this->writeLog($msg,$member->attributes('id'),"withdraw",$amount);
		$this->db->update("wallet");
		$this->db->trans_complete();
		return $this->db->trans_status();
	}
	
	public function getBalance($member){

		$data = $this->db->query("SELECT balance FROM wallet WHERE id_member = ".$member->attributes('id'))->row();
		return $data->balance;
	}

	public function writeLog($msg, $id_member, $type, $amount){

		$data = array(
				"id_member" => $id_member,
				"message"	=> $msg,
				"type" 		=> $type,
				"amount" 	=> $amount,
			);
		return $this->db->insert('wallet_logs', $data);
	}

}