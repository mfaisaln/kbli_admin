<?php 
 
class Admin2 extends CI_Controller{
    public function __construct(){
        parent::__construct();
        
        $this->load->model('m_admin'); // Load admin ke controller ini
      }
	function index(){
        $data['user'] = $this->m_admin->view();
		$this->load->view('v_admin/v_tambahA', $data);
    }
    function tambah(){
            $username=$this->input->post('username');
            $password=$this->input->post(md5('password'));
            $nama=$this->input->post('nama');
            $level=$this->input->post('level');
            $blokir=1;
            
            $this->m_admin->save($username,$password,$nama,$level,$blokir); // Panggil fungsi save() yang ada di SiswaModel.php
            $data['user'] = $this->m_admin->view();
		    $this->load->view('v_admin/v_tambahA', $data);
      }
}