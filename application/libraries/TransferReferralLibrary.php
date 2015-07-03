<?php defined('BASEPATH') OR exit('No direct script access allowed');


class TransferReferralLibrary {

        public $table           = "transfer_referral";
        public $table_msg       = "transfer_referral_msg";
        public $table_conf      = "transfer_referral_conf";
        
        public $data;
        public $transfer_member = array();

        public function __construct()
        {
                $this->load->database();
                $this->load->helper('captcha');
                $this->load->model('member_model');
                $this->load->model('wallet_model');
        }

        /* 
        * Using CI global variable without extra variable
        * 
        */
        public function __get($var)
        {
                return get_instance()->$var;
        }

        public function cariReferral($member){
                $member = unserialize($member);

                $this->memenuhiSyarat(serialize($member), $member->attributes('id'));

                return $this->db->insert_batch($this->table,$this->transfer_member);
        }

        public function memenuhiSyarat($member, $id_member, $level = 1){
                
                $member = unserialize($member);
                // batas transfer 7, masih statis.
                if($member->hasReferral() and $level <= $this->getMaxLevel()){
                        $referral = $member->getReferral();
                        $max_income = $this->getMaxIncome(count($referral->getDownline()));
                        if($max_income>0){
                                 $balance = $referral->getBalance();
                                 if($balance<$max_income){
                                         $this->transfer_member[] = array(
                                                "id_member"     => $id_member,
                                                "id_referral"   => $referral->attributes("id"),
                                                "amount"        => $this->getValue($level),
                                                "status_transfer"     => 0,
                                                "updated_at"    =>  date('Y-m-j H:i:s'),
                                                "created_at"    =>  date('Y-m-j H:i:s'),
                                        );
                                         $level++;
                                 }
                        }else{
                                $this->transfer_member[] = array(
                                                "id_member"     => $id_member,
                                                "id_referral"   => $referral->attributes("id"),
                                                "amount"        => $this->getValue($level),
                                                "status_transfer"    => 0,
                                                "updated_at"    =>  date('Y-m-j H:i:s'),
                                                "created_at"    =>  date('Y-m-j H:i:s'),
                                        );
                                $level++;
                        }

                        $this->memenuhiSyarat(serialize($referral),$id_member, $level);
                }
        }

        public function transfered($data, $id_transfer){

            $this->db->trans_start();
                $this->db->insert('transfer_referral_bukti',$data);
                
                $this->db->where('id',$id_transfer);
                $this->db->set('status_transfer',1);
                $this->db->set('transfered_at', date('Y-m-j H:i:s'));
                $this->db->update($this->table);
            $this->db->trans_complete();

            return $this->db->trans_status();
        }

        public function confirmed($id_transfer, $member, $amount){
            $this->db->trans_start();
                $this->wallet_model->deposit($member, $amount, "deposit referral Rp. $amount");

                $this->db->where('id',$id_transfer);
                $this->db->set('status_transfer',2);
                $this->db->set('confirmation_at', date('Y-m-j H:i:s'));
                $this->db->update($this->table);
            $this->db->trans_complete();

            return $this->db->trans_status();
        }

         public function cancel($msg){

            $this->db->trans_start();
                $id_transfer = $this->data->id_transfer;

                $this->db->where('id',$id_transfer);
                $this->db->set('status_transfer',-1);
                $this->db->set('confirmation_at', date('Y-m-j H:i:s'));
                $this->db->update($this->table);

                $this->db->insert("transfer_referral_cancel", array(
                        'id_transfer_referral' => $id_transfer,
                        'msg' => $msg
                    ));

            $this->db->trans_complete();

            return $this->db->trans_status();
        }

        public function getCancelMassage(){
            $msg = $this->db->query("SELECT msg FROM transfer_referral_cancel WHERE id_transfer_referral = '".$this->data->id_transfer."'")->row();
            
            return (count($msg)>0) ? $msg->msg: '';
        }

        public function cekSelesaiTransfer($id_member){
            $sipp = true;
            $all = $this->db->query("SELECT status_transfer FROM transfer_referral WHERE id_member = '$id_member'")->result();
            foreach ($all as $key => $value) {
                if($value->status_transfer != 2){
                    $sipp = false;
                }
            }

            return $sipp;
        }

        public function getDataAll($id_member){

                $all   = $this->db->query(" SELECT transfer_referral.id as id_transfer, transfer_referral.*,members.*, profile.* FROM transfer_referral JOIN members ON members.id = transfer_referral.id_referral JOIN profile ON members.id = profile.id_member WHERE transfer_referral.id_member = '$id_member'")->result();
                return $all;
        }


        public function getDataAllVerifikasi($id_member, $where=''){
                
                $all   = $this->db->query(" SELECT transfer_referral.id as id_transfer, transfer_referral.*,members.*, profile.* FROM transfer_referral JOIN members ON members.id = transfer_referral.id_member JOIN profile ON members.id = profile.id_member WHERE transfer_referral.id_referral = '$id_member' $where ORDER BY transfer_referral.created_at desc")->result();
                return $all;
        }

        public function getData($val, $by='id'){
                $data = $this
                ->db
                ->query("SELECT ".$this->table.".id as id_transfer, ".$this->table.".* FROM ".$this->table." WHERE $by='$val' ")->row();
                $this->data = $data;

                return $this;
        }


        public function getBukti_transfer(){
            return  $this->db
                ->query("SELECT * FROM transfer_referral_bukti 
                            WHERE id_transfer_referral='".$this->data->id."'")
                ->row();
        }

// Massage transfer 
        public function writeMsg($msg){

        }

        public function getMsg(){

        }

// configuration
        public function getMaxIncome($jumlah_downline){

                if($jumlah_downline < $this->maxDownline()){
                   $data = $this->db->query("SELECT max_income FROM ".$this->table_conf." WHERE downline='$jumlah_downline'")->row();
                        return (isset($data->max_income)) ? $data->max_income : 1;     
                }

                return 0;
        }

        public function maxDownline(){
                $data = $this->db->query("SELECT max(downline) as max FROM ".$this->table_conf)->row();
                return $data->max;
        }

// configuration amount

        public function getMaxLevel(){

            $data = $this->db->query("SELECT max(level) as max FROM transfer_referral_conf_amount")->row();
            return $data->max;
        }

        public function getValue($level){
            $data = $this->db->query("SELECT value FROM transfer_referral_conf_amount WHERE level ='$level'")->row();
            return $data->value;
        }

}