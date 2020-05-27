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
		$Ctambah['tambah'] = "";
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$this->load->view('v_admin/v_tambahK',$data+$data2+$data3+$data4+$data5+$Ctambah);
		
	}
	function view(){
		$Cview['view'] = "";
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5+$Cview);
	}
	function tambahKate(){
		$kode_kategori=$this->input->post('kode_kategori');
		$judul_kategori=$this->input->post('judul_kategori');
		$deskripsi_kategori=$this->input->post('deskripsi_kategori');
		$data = array(
			'kode_kategori' => $kode_kategori,
			'judul_kategori' => $judul_kategori,
			'deskripsi_kategori' => $deskripsi_kategori
		);
		$this->m_kategori->saveKate('kategori',$data); // Panggil fungsi save() yang ada di SiswaModel.php
		$Ctambah['tambah'] = "Kategori";
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$this->load->view('v_admin/v_tambahK',$data+$data2+$data3+$data4+$data5+$Ctambah);
	 }
	 function tambahgolpok(){
		$kode_golonganpokok=$this->input->post('kode_golonganpokok');
		$kode_kategori=$this->input->post('kode_kategori');
		$judul_golonganpokok=$this->input->post('judul_golonganpokok');
		$deskripsi_golonganpokok=$this->input->post('deskripsi_golonganpokok');
		$data = array(
			'kode_golonganpokok' => $kode_golonganpokok,
			'kode_kategori' => $kode_kategori,
			'judul_golonganpokok' => $judul_golonganpokok,
			'deskripsi_golonganpokok' => $deskripsi_golonganpokok
		);
		$this->m_kategori->saveGolpok('golonganpokok',$data); // Panggil fungsi save() yang ada di SiswaModel.php
		$Ctambah['tambah'] = "Golongan Pokok";
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$this->load->view('v_admin/v_tambahK',$data+$data2+$data3+$data4+$data5+$Ctambah);
	 }
	 function tambahgol(){
		$kode_golongan=$this->input->post('kode_golongan');
		$kode_golonganpokok=$this->input->post('kode_golonganpokok');
		$judul_golongan=$this->input->post('judul_golongan');
		$deskripsi_golongan=$this->input->post('deskripsi_golongan');
		$data = array(
			'kode_golongan' => $kode_golongan,
			'kode_golonganpokok' => $kode_golonganpokok,
			'judul_golongan' => $judul_golongan,
			'deskripsi_golongan' => $deskripsi_golongan
		);
		$this->m_kategori->saveGol('golongan',$data); // Panggil fungsi save() yang ada di SiswaModel.php
		$Ctambah['tambah'] = "Golongan";
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$this->load->view('v_admin/v_tambahK',$data+$data2+$data3+$data4+$data5+$Ctambah);
	 }
	 function tambahSubgol(){
		$kode_subgolongan=$this->input->post('kode_subgolongan');
		$kode_golongan=$this->input->post('kode_golongan');
		$judul_subgolongan=$this->input->post('judul_subgolongan');
		$deskripsi_subgolongan=$this->input->post('deskripsi_subgolongan');
		$data = array(
			'kode_subgolongan' => $kode_subgolongan,
			'kode_golongan' => $kode_golongan,
			'judul_subgolongan' => $judul_subgolongan,
			'deskripsi_subgolongan' => $deskripsi_subgolongan
		);
		$this->m_kategori->saveSubgol('subgolongan',$data); // Panggil fungsi save() yang ada di SiswaModel.php
		$Ctambah['tambah'] = "Sub Golongan";
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$this->load->view('v_admin/v_tambahK',$data+$data2+$data3+$data4+$data5+$Ctambah);
	 }
	 function tambahKel(){
		$kode_kelompok=$this->input->post('kode_kelompok');
		$kode_subgolongan=$this->input->post('kode_subgolongan');
		$judul_kelompok=$this->input->post('judul_kelompok');
		$deskripsi_kelompok=$this->input->post('deskripsi_kelompok');
		$data = array(
			'kode_kelompok' => $kode_kelompok,
			'kode_subgolongan' => $kode_subgolongan,
			'judul_kelompok' => $judul_kelompok,
			'deskripsi_kelompok' => $deskripsi_kelompok
		);
		$this->m_kategori->saveSubgol('kelompok',$data); // Panggil fungsi save() yang ada di SiswaModel.php
		$Ctambah['tambah'] = "Kelompok";
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$this->load->view('v_admin/v_tambahK',$data+$data2+$data3+$data4+$data5+$Ctambah);
	 }
	 public function hapusKate($id){
		
		$this->m_kategori->deleteKate($id); // Panggil fungsi delete() yang ada di SiswaModel.php
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$Cview['view'] = "Kategori";
		$Ctitle['title'] = "Hapus";
		$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5+$Cview+$Ctitle);
		
	}
	public function hapusGolpok($id){
		$this->m_kategori->deleteGolpok($id); // Panggil fungsi delete() yang ada di SiswaModel.php
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$Cview['view'] = "Golongan Pokok";
		$Ctitle['title'] = "Hapus";
		$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5+$Cview+$Ctitle);
	}
	public function hapusGol($id){
		$this->m_kategori->deleteGol($id); // Panggil fungsi delete() yang ada di SiswaModel.php
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$Cview['view'] = "Golongan";
		$Ctitle['title'] = "Hapus";
		$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5+$Cview+$Ctitle);
	}
	public function hapusSubgol($id){
		$this->m_kategori->deleteSubgol($id); // Panggil fungsi delete() yang ada di SiswaModel.php
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$Cview['view'] = "Sub Golongan";
		$Ctitle['title'] = "Hapus";
		$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5+$Cview+$Ctitle);
	}
	public function hapusKel($id){
		$this->m_kategori->deleteKel($id); // Panggil fungsi delete() yang ada di SiswaModel.php
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$Cview['view'] = "Kelompok";
		$Ctitle['title'] = "Hapus";
		$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5+$Cview+$Ctitle);
	}
	function cariKate($kode_kategori){
		$where = array('kode_kategori' => $kode_kategori);
		$data['kategori'] = $this->m_kategori->cariKete($where); 
		
		$this->load->view('v_admin/v_editKate', $data);
	  }
	  public function ubahKate(){
		  $kode_kategori=$this->input->post('kode_kategori');
			$data = array(
			  "judul_kategori" => $this->input->post('judul_kategori'),
			  "deskripsi_kategori" => $this->input->post('deskripsi_kategori')
			);
			$this->m_kategori->editKate($kode_kategori,$data); // Panggil fungsi edit() yang ada di SiswaModel.php
			$data['kategori'] = $this->m_kategori->viewK();
			$data2['golPok'] = $this->m_kategori->viewGol();
			$data3['gol'] = $this->m_kategori->viewGoll();
			$data4['subGol'] = $this->m_kategori->viewSub();
			$data5['kel'] = $this->m_kategori->viewKel();
			$Cview['view'] = "Kategori";
			$Ctitle['title'] = "Ubah";
			$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5+$Cview+$Ctitle);
	  }
	  function cariGolpok($kode_golonganpokok){
		$where = array('kode_golonganpokok' => $kode_golonganpokok);
		$data['Golpok'] = $this->m_kategori->cariGolpok($where); 
		$data2['kategori'] = $this->m_kategori->viewK();
		$this->load->view('v_admin/v_editGolpok', $data+$data2);
	  }
	  public function ubahGolpok(){
		  $kode_golonganpokok=$this->input->post('kode_golonganpokok');
			$data = array(
			"kode_kategori" => $this->input->post('kode_kategori'),
			  "judul_golonganpokok" => $this->input->post('judul_golonganpokok'),
			  "deskripsi_golonganpokok" => $this->input->post('deskripsi_golonganpokok')
			);
			$this->m_kategori->editGolpok($kode_golonganpokok,$data); // Panggil fungsi edit() yang ada di SiswaModel.php
			$data['kategori'] = $this->m_kategori->viewK();
			$data2['golPok'] = $this->m_kategori->viewGol();
			$data3['gol'] = $this->m_kategori->viewGoll();
			$data4['subGol'] = $this->m_kategori->viewSub();
			$data5['kel'] = $this->m_kategori->viewKel();
			$Cview['view'] = "Golongan Pokok";
			$Ctitle['title'] = "Ubah";
			$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5+$Cview+$Ctitle);
	  }
	  function cariGol($kode_golongan){
		$where = array('kode_golongan' => $kode_golongan);
		$data['Gol'] = $this->m_kategori->cariGol($where); 
		$data2['golPok'] = $this->m_kategori->viewGol();
		$this->load->view('v_admin/v_editGol', $data+$data2);
	  }
	  public function ubahGol(){
		  $kode_golongan=$this->input->post('kode_golongan');
			$data = array(
			"kode_golonganpokok" => $this->input->post('kode_golonganpokok'),
			  "judul_golongan" => $this->input->post('judul_golongan'),
			  "deskripsi_golongan" => $this->input->post('deskripsi_golongan')
			);
			$this->m_kategori->editGol($kode_golongan,$data); // Panggil fungsi edit() yang ada di SiswaModel.php
			$data['kategori'] = $this->m_kategori->viewK();
			$data2['golPok'] = $this->m_kategori->viewGol();
			$data3['gol'] = $this->m_kategori->viewGoll();
			$data4['subGol'] = $this->m_kategori->viewSub();
			$data5['kel'] = $this->m_kategori->viewKel();
			$Cview['view'] = "Golongan";
			$Ctitle['title'] = "Ubah";
			$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5+$Cview+$Ctitle);
	  }
	  function cariSubgol($kode_subgolongan){
		$where = array('kode_subgolongan' => $kode_subgolongan);
		$data['Subgol'] = $this->m_kategori->cariSubgol($where); 
		$data2['gol'] = $this->m_kategori->viewGoll();
		$this->load->view('v_admin/v_editSubgol', $data+$data2);
	  }
	  public function ubahSubgol(){
		  $kode_subgolongan=$this->input->post('kode_subgolongan');
			$data = array(
			"kode_golongan" => $this->input->post('kode_golongan'),
			  "judul_subgolongan" => $this->input->post('judul_subgolongan'),
			  "deskripsi_subgolongan" => $this->input->post('deskripsi_subgolongan')
			);
			$this->m_kategori->editSubgol($kode_subgolongan,$data); // Panggil fungsi edit() yang ada di SiswaModel.php
			$data['kategori'] = $this->m_kategori->viewK();
			$data2['golPok'] = $this->m_kategori->viewGol();
			$data3['gol'] = $this->m_kategori->viewGoll();
			$data4['subGol'] = $this->m_kategori->viewSub();
			$data5['kel'] = $this->m_kategori->viewKel();
			$Cview['view'] = "Sub Golongan";
			$Ctitle['title'] = "Ubah";
			$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5+$Cview+$Ctitle);
	  }
	  function cariKel($kode_kelompok){
		$where = array('kode_kelompok' => $kode_kelompok);
		$data['Kel'] = $this->m_kategori->cariKel($where); 
		$data2['Subgol'] = $this->m_kategori->viewSub();
		// if ($data2['Subgol']==null) {
		// 	echo"tidak ada";
		// } else {
		// 	echo" ada";
		// }
		
		$this->load->view('v_admin/v_editKel', $data+$data2);
	  }
	  public function ubahKel(){
		  $kode_kelompok=$this->input->post('kode_kelompok');
			$data = array(
			"kode_subgolongan" => $this->input->post('kode_subgolongan'),
			  "judul_kelompok" => $this->input->post('judul_kelompok'),
			  "deskripsi_kelompok" => $this->input->post('deskripsi_kelompok')
			);
			$this->m_kategori->editKel($kode_kelompok,$data); // Panggil fungsi edit() yang ada di SiswaModel.php
			$data['kategori'] = $this->m_kategori->viewK();
			$data2['golPok'] = $this->m_kategori->viewGol();
			$data3['gol'] = $this->m_kategori->viewGoll();
			$data4['subGol'] = $this->m_kategori->viewSub();
			$data5['kel'] = $this->m_kategori->viewKel();
			$Cview['view'] = "Kelompok";
			$Ctitle['title'] = "Ubah";
			$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5+$Cview+$Ctitle);
	  }
	
}