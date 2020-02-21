<?php 
 
class Saran extends CI_Controller{
 
	function __construct(){
		parent::__construct();
	
		if($this->session->userdata('status') != "login"){
			redirect(base_url('index.php/login'));
		}
		$this->load->model('m_pesan');
	}
 
	function index(){
		$data['saran'] = $this->m_pesan->view();
		$this->load->view('v_admin/v_Saran',$data);
    }
    public function hapus($id){
		$this->m_pesan->delete($id); // Panggil fungsi delete() yang ada di SiswaModel.php
		redirect(base_url('index.php/Saran/index'));
	}
}