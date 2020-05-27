<?php 
 
class Admin2 extends CI_Controller{
    public function __construct(){
        parent::__construct();
        if($this->session->userdata('status') != "login"){
          redirect(base_url('index.php/login'));
        }
        $this->load->model('m_admin'); // Load admin ke controller ini
      }
      
	function index(){
        $Cadmin['admin'] = "";
        $data['user'] = $this->m_admin->view();
		    $this->load->view('v_admin/v_tambahA', $data+$Cadmin);
    }
    function tambah(){
            $Cadmin['admin'] = "tambahkan";
            $username=$this->input->post('username');
            $password=md5($this->input->post('password'));
            $nama=$this->input->post('nama');
            $level=$this->input->post('level');
            $blokir=1;
            $this->m_admin->save($username,$password,$nama,$level,$blokir);

            $data['user'] = $this->m_admin->view();
		        $this->load->view('v_admin/v_tambahA',$data+$Cadmin);
      }
    public function hapus($id){
      $Cadmin['admin'] = "hapus";
      $this->m_admin->delete($id); // Panggil fungsi delete() yang ada di SiswaModel.php
      $data['user'] = $this->m_admin->view();
		  $this->load->view('v_admin/v_tambahA',$data+$Cadmin);
    }
    function edit($id){
      
      $where = array('id' => $id);
      $data['user'] = $this->m_admin->ubah($where); 
      
		  $this->load->view('v_admin/v_editA', $data);
    }
    public function ubah(){
        $Cadmin['admin'] = "ubah";
        $id=$this->input->post('id');
          $data = array(
            "username" => $this->input->post('username'),
            "password" => md5($this->input->post('password')),
            "nama" => $this->input->post('nama'),
            "blokir" => 1,
            "level" => $this->input->post('level')
          );
          $this->m_admin->edit($id,$data); // Panggil fungsi edit() yang ada di SiswaModel.php
          $data['user'] = $this->m_admin->view();
		      $this->load->view('v_admin/v_tambahA',$data+$Cadmin);
    }
    public function blok($id){
        $data = array(
          "blokir" => 1
        );
        $this->m_admin->edit($id,$data); // Panggil fungsi edit() yang ada di SiswaModel.php
        redirect(base_url('index.php/Admin2'));
    }
    public function blok2($id){
      $data = array(
        "blokir" => 0
      );
      $this->m_admin->edit($id,$data); // Panggil fungsi edit() yang ada di SiswaModel.php
      redirect(base_url('index.php/Admin2'));
}
}