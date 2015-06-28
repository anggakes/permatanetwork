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
		$data = array(
				"id_member" => $id,
				"balance"	=> 0,
			);
		return $this->db->insert('wallet', $data);
	}

	public function deposit($member, $amount, $msg = ''){

		$this->db->set("balance", "balance + ".(int) $amount,false);
		$this->db->where('id_member',$member->attributes('id'));
		$this->writeLog($msg, $member->attributes('id'), 1, $amount);
		return $this->db->update("wallet");

	}

	public function withdraw($member, $amount, $msg=''){

		$this->db->set("balance", "balance - ".(int) $amount, false);
		$this->db->where('id_member',$member->attributes('id'));
		$this->writeLog($msg, $member->attributes('id'), 2, $amount);
		return $this->db->update("wallet");
	}

	public function getBalance($member){

		$data = $this->db->query("SELECT balance WHERE id_member = ".$member->attributes('id'))->row();
		return $data->balance;
	}

	public function writeLog($msg, $id_member, $type, $amount){

		$data = array(
				"id_member" => $id_member,
				"msg"		=> $msg,
				"type" 		=> $type,
				"amount" 	=> $amount,
			);
		return $this->db->insert('wallet', $data);
	}

}