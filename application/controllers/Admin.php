<?php 
 
class Admin extends CI_Controller{
 
	function __construct(){
		parent::__construct();
	
		if($this->session->userdata('status') != "login"){
			redirect(base_url('index.php/login'));
		}
		$this->load->model('m_admin');
	}
 
	function index(){
		
		$where = array('username' => $this->session->userdata("nama"));
    	$data['user'] = $this->m_admin->ubah($where); 
		$this->load->view('v_admin/v_Aindex',$data);
	}
}