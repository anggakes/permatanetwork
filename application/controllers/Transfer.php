<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transfer extends CI_Controller {

	protected $params = array('model'=>'members');

	

	public function __construct()
	{
	    parent::__construct();


        $this->load->library('template');
        $this->load->library('session');
        $this->load->model('member_model');
	    $this->load->library('authlibrary',$this->params);
	    $this->load->library('form_validation'); 
	    $this->load->library('transferreferrallibrary');

	    $this->authlibrary->check_login();
		$this->authlibrary->check_role('members');  
	    
	}//

	public function konfirmasi($id_transfer){
		$rule = $this->_rule();
		
		$this->form_validation->set_rules($rule);

		$transfer = $this->transferreferrallibrary->getData($id_transfer);
		$data['transfer'] = $transfer;
		$data['id_transfer'] = $id_transfer;
		$data['user'] = unserialize($_SESSION['login_user']);
		$data['referral'] = $this->member_model->getData($transfer->data->id_referral,'id');
				
		// Form validation 
		if ($this->form_validation->run() == FALSE){
			
				$bank = $this->db->query("SELECT * FROM bank")->result();
				$data['bank'] = object_to_array($bank,'nama_bank');

				$this->template->load('template/template_main','member/konfirmasi/konfirmasi_transfer',$data);

		}else{

			$file_name = date('Y-m-j_H-i-s')."_".$id_transfer;
			$this->load->library('upload', $this->_upload_conf($file_name));
			
			if ( !$this->upload->do_upload())
			{
				$this->session->set_flashdata('message',$this->upload->display_errors());
				$this->session->set_flashdata('sukses', false);
				redirect(base_url()."transfer/konfirmasi/".$id_transfer);
			}
			else
			{
				$data_upload=$this->upload->data();
				$file = $this->input->post();
				$file['id_transfer_referral']= $id_transfer;
				$file['bukti_transfer']= $file_name.$data_upload['file_ext'];
				
				$this->transferreferrallibrary->transfered($file, $id_transfer);
				$this->session->set_flashdata('message',"Transfer berhasil harap tunggu verifikasi");
				$this->session->set_flashdata('sukses', true);
				redirect(base_url());
			}
		}//end else
		
	}

	public function riwayat($id_transfer){
		
		$transfer = $this->transferreferrallibrary->getData($id_transfer);
		$data['transfer'] = $transfer;
		$data['id_transfer'] = $id_transfer;
		$data['user'] = unserialize($_SESSION['login_user']);
		$data['referral'] = $this->member_model->getData($transfer->data->id_referral,'id');
		
		$this->template->load('template/template_main','member/konfirmasi/riwayat_transfer',$data);

	}

	public function verifikasi(){

		$id_transfer = $this->uri->segment(3);
		$data['user'] = unserialize($_SESSION['login_user']);

		if(isset($id_transfer)){
			$transfer = $this->transferreferrallibrary->getData($id_transfer);
			$data['transfer'] = $transfer;
			$data['id_transfer'] = $id_transfer;
			$data['member'] = unserialize($_SESSION['login_user']);
			$data['referral'] = $this->member_model->getData($transfer->data->id_referral,'id');

			$this->template->load('template/template_main','member/konfirmasi/riwayat_transfer',$data);
		}else{
			
			$this->template->load('template/template_main','member/konfirmasi/verifikasi_index',$data);
		}
	}

	public function verifikasi_proses($id_transfer){

		$user = unserialize($_SESSION['login_user']);
		$transfer = $this->transferreferrallibrary->getData($id_transfer);

		if($user->attributes('id') == $transfer->data->id_referral){

			$transfer->confirmed($id_transfer, $user, $transfer->data->amount);
			$this->session->set_flashdata('message',"Verifikasi berhasil");
			$this->session->set_flashdata('sukses', true);
		}else{
			$this->session->set_flashdata('message',"Verifikasi gagal");
			$this->session->set_flashdata('sukses', false);
		}

		redirect(base_url()."transfer/verifikasi");
	}

	public function verifikasi_batal(){
		$id_transfer = $this->uri->segment(3);
		$id_bukti = $this->uri->segment(4);
		
		$user = unserialize($_SESSION['login_user']);
		$transfer = $this->transferreferrallibrary->getData($id_transfer);

		if($user->attributes('id') == $transfer->data->id_referral){

			$transfer->cancel($this->input->post('msg'), $id_bukti);

			$this->session->set_flashdata('message',"Penolakan berhasil Disimpan");
			$this->session->set_flashdata('sukses', true);
		}else {
			$this->session->set_flashdata('message',"Penolakan gagal");
			$this->session->set_flashdata('sukses', false);
		}

		redirect(base_url()."transfer/verifikasi");
	}

	private function _rule(){

		return array(
						array(
			                'field' => 'nama_bank_penerima',
			                'label' => 'Nama Bank Penerima',
			                'rules' => 'required'
	        			),
	        			array(
			                'field' => 'nama_rekening_penerima',
			                'label' => 'Nama Rekening Penerima',
			                'rules' => 'required'
	        			),
	        			array(
			                'field' => 'no_rekening_penerima',
			                'label' => 'Nomor Rekening Penerima',
			                'rules' => 'required'
	        			),
	        			array(
			                'field' => 'nama_bank_pengirim',
			                'label' => 'Nama Bank Pengirim',
			                'rules' => 'required'
	        			),
	        			array(
			                'field' => 'nama_rekening_pengirim',
			                'label' => 'Nama Rekening Pengirim',
			                'rules' => 'required'
	        			),
	        			array(
			                'field' => 'no_rekening_pengirim',
			                'label' => 'Nomor Rekening Pengirim',
			                'rules' => 'required'
	        			),
			);
	}

	private function _upload_conf($file_name){

		return array(
				  'file_name'		=> "$file_name",
                  'upload_path'     => dirname($_SERVER["SCRIPT_FILENAME"])."/konfirmasi_transfer/",
                  'upload_url'      => base_url()."konfirmasi_transfer/",
                  'allowed_types'   => "gif|jpg|png|jpeg",
                  'overwrite'       => TRUE,
                  'max_size'        => "1000KB",
                  'max_height'      => "768",
                  'max_width'       => "1024"  
                );
	}


}