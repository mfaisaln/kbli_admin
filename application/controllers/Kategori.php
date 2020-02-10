<?php 
 
class Kategori extends CI_Controller{ 
	function __construct(){
		parent::__construct();
	
		if($this->session->userdata('status') != "login"){
			redirect(base_url('index.php/login'));
		}
		$this->load->model('m_kategori'); // Load admin ke controller ini
	}
	function index(){
		
		$this->load->view('v_admin/v_tambahK');
	}
	function view(){
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5);
	}
}