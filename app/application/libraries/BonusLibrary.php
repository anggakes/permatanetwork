<?php defined('BASEPATH') OR exit('No direct script access allowed');


class BonusLibrary {


        
        public function __construct()
        {
 
                $this->load->database();
                $this->load->model('member_model');
                $this->load->model('wallet_model');
                $this->load->model('configuration_model');
        }

        /* 
        * Using CI global variable without extra variable
        * 
        */
        public function __get($var)
        {
                return get_instance()->$var;
        }

        public function run($member){

                if($member->hasReferral()){

                        $referral = $member->getReferral();
                        $this->bonusReferral($referral);
                        $this->bonusKedalaman($referral);  
                }
        }

        public function bonusReferral($referral){
                
                $bonus = $this->configuration_model->getValue('saldo_awal')*$this->configuration_model->getValue('bonus_referral')/100;        
                $msg = "Deposit sebesar $bonus dari Bonus Referral";
                $this->wallet_model->deposit($referral, $bonus, $msg);
        }       

        public function bonusKedalaman($member, $level = 1){

                $tipe = 1; // tipe 1 untuk bonus kedalaman | tipe 2 untuk bonus unilevel
                $kedalaman = $this->configuration_model->getKedalaman($tipe);

                if($member->hasReferral() and $level <= $kedalaman){

                        $referral = $member->getReferral();
                        $bonus = $this->configuration_model->getValue('saldo_awal')*$this->configuration_model->getPersen($tipe,$level)/100;        
                        $msg = "Deposit sebesar $bonus dari Bonus Kedalaman Level $level";
                        $this->wallet_model->deposit($referral, $bonus, $msg);
                        $this->bonusKedalaman($referral, $level++);                        
                }
        }
}