<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Voucher extends CI_Controller {

	/* 
	* parameter model yang digunakan 
	* dalam library Auth terdapat model
	* members dan admins	
	*/
	protected $params = array('model'=>'admin');

	

	public function __construct()
	{
	    parent::__construct();

        $this->load->library('form_validation');
        $this->load->library('template');
	    $this->load->library('authlibrary',$this->params);
	    $this->load->library('grocery_CRUD');
	    $this->load->model('voucher_model');
	    $this->load->library('session');
	    	    // untuk mengecek login belum, jika belum di redirect ke login
		$this->authlibrary->check_login();
		$this->authlibrary->check_role('admin');
	}

    public function index()
    {	
    	$crud = new grocery_CRUD;
        $crud->set_table('voucher');
        $crud->where('status','0');
        $crud->columns('nomor','created_at');
        $crud->display_as('nomor', 'Kode Voucher');
        $crud->unset_operations();       

        $output=$crud->render();
        $output->title='Data Voucher';
       
        $this->template->load('template/template_main','admin/voucher',$output);

    }

     public function histori()
    {   
        $crud = new grocery_CRUD;
        $crud->set_table('voucher');
        $crud->where('voucher.status','1');
        $crud->columns('nomor','id_member','created_at',"used_at");
        $crud->set_relation('id_member','members','username');
        $crud->display_as('nomor', 'Kode Voucher');
        $crud->display_as('id_member', 'Member');
        $crud->unset_operations();       

        $output=$crud->render();
        $output->title='Data Voucher';
       
        $this->template->load('template/template_main','admin/voucher',$output);

    }

    public function voucher_bonus(){
        
        $data['status'] = '';
        $data['title'] = "Daftar penerima bonus voucher yang belum dikirim";
        
        if(null !== $this->input->get('status')){
            
            $data['status'] = $this->input->get('status');
        }

        $this->template->load('template/template_main','admin/voucher_bonus',$data);
    }

    public function voucher_bonus_datatables(){

        $members = $this->db->query("SELECT * FROM profile,members,wallet WHERE members.id = profile.id_member  AND members.id = wallet.id_member AND wallet.balance >= 5000000 AND members.voucher_bonus=0 AND members.status=1")->result();

        $output = array();
        foreach ($members as $key => $member) {
            $i = 0;
            $output[] = array(
                    $i++ => $this->_aksi($member->username),
                    $i++ => $member->nama,
                    $i++ => $member->email,
                    $i++ => "Rp. ".rupiah($member->balance),
                    $i++ => $member->no_hp,
                    $i++ => "<a href='".base_url()."admin/voucher/voucher_bonus_proses/".$member->id."?username=".$member->username."' class='btn btn-success proses' onClick=\" $(this).attr('disabled',true); \"> Buat Voucher </a>",
                );
        }

        $return ['data'] = $output;
        echo json_encode($return);
    }

    public function voucher_bonus_proses($id_member){

        if($this->belumDapatVoucherBonus($id_member)){
            $username = $this->input->get('username');
            $dataVoucher = $this->voucher_model->createBonusVoucher($id_member);
            $this->db->where('id',$id_member);
            $this->db->update('members',array(
                    "voucher_bonus" => 1,
                ));
            $this->session->set_flashdata('message',"Voucher $username berhasil di generate sebagai berikut :  $dataVoucher[0] dan $dataVoucher[1]");
            $this->session->set_flashdata('sukses',true);
            redirect(base_url()."admin/voucher/voucher_bonus");
        }
    }

    public function histori_voucher_bonus(){
        $crud = new grocery_CRUD;
        $crud->set_table('members');
        $crud->where('voucher_bonus',1);

        $crud->set_relation_n_n('voucher', 'voucher_bonus', 'voucher', 'id_member', 'id_voucher', 'nomor');
        $crud->columns('username','email','voucher');
        $crud->add_action('Detail', '', '','fa fa-search',array($this,'_aksi_detail'));

        $crud->unset_export();
        $crud->unset_print();
        $crud->unset_read();
        $crud->unset_add();
        $crud->unset_delete();
        $crud->unset_edit();
        $output=$crud->render();
        $output->title='History Voucher Bonus';
        $this->template->load('template/template_main','admin/history_pengiriman',$output);
    }

    private function _aksi($username){
            $button = "
        <a href='".base_url()."profile/$username?admin' class='aksi'><i class='fa fa-search'></i> $username</a> 
        ";

    
        return $button;
    }

    public function _aksi_detail($id, $row){

            return base_url()."profile/$row->username?admin";
    }

    private function belumDapatVoucherBonus($id_member){

        $data = $this->db->query("SELECT voucher_bonus from members WHERE id='$id_member'")->row();

        if($data->voucher_bonus == 0){
            return true;
        }

            return false;
    }

    public function generateVoucher(){
        $banyak = $this->input->post('banyak');
    	$generate=$this->voucher_model->createKodeVoucher($banyak);

    	if($generate){
    		$this->session->set_flashdata('message','Voucher berhasil di generate');
    		$this->session->set_flashdata('sukses',true);
    		redirect(base_url()."admin/voucher");
    	}
    }
}