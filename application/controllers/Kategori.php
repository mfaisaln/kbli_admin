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
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$this->load->view('v_admin/v_tambahK',$data+$data2+$data3+$data4+$data5);
		
	}
	function view(){
		$data['kategori'] = $this->m_kategori->viewK();
		$data2['golPok'] = $this->m_kategori->viewGol();
		$data3['gol'] = $this->m_kategori->viewGoll();
		$data4['subGol'] = $this->m_kategori->viewSub();
		$data5['kel'] = $this->m_kategori->viewKel();
		$this->load->view('v_admin/v_tampilK',$data+$data2+$data3+$data4+$data5);
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
		redirect(base_url('index.php/Kategori'));
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
		redirect(base_url('index.php/Kategori'));
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
		redirect(base_url('index.php/Kategori'));
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
		redirect(base_url('index.php/Kategori'));
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
		redirect(base_url('index.php/Kategori'));
	 }
	
}