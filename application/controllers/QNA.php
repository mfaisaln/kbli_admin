<?php 
 
class QNA extends CI_Controller{
 
	function __construct(){
		parent::__construct();
	
		
		$this->load->model('m_kategori');
	}
 
	function index(){
		$data['kategori'] = $this->m_kategori->viewK();
		$this->load->view('v_jawabKategori',$data);
	}
	function jawabgolPok(){
		// $data['golPok'] = $this->m_kategori->viewGol();
		// $this->load->view('v_jawabKategori',$data);
		
		$cek = $this->input->post('check_list');
		if (empty ($cek)){
			redirect(base_url('index.php/QNA'));
		}else{
			$where = "";
			foreach ($cek as $objek){
					if($where == null){
						$where = "kode_kategori='$objek'";
					}else{
						$where = $where." OR kode_kategori='$objek'";
					}
					
				}
			
			$data['golPokok'] = $this->m_kategori->cariGolpok($where);

			$this->load->view('v_jawabGolPokok', $data);
		}
		
	}
	function jawabGol(){
		// $data['golPok'] = $this->m_kategori->viewGol();
		// $this->load->view('v_jawabKategori',$data);
		$cek = $this->input->post('check_list');
		if (empty ($cek)){
			redirect(base_url('index.php/QNA'));
		}else{
			$where = "";
			foreach ($cek as $objek){
					if($where == null){
						$where = "kode_golonganpokok='$objek'";
					}else{
						$where = $where." OR kode_golonganpokok='$objek'";
					}
					
				}
			
			$data['gol'] = $this->m_kategori->cariGol($where);

			$this->load->view('v_jawabGol', $data);
		}
	}
	function jawabSubGol(){
		// $data['golPok'] = $this->m_kategori->viewGol();
		// $this->load->view('v_jawabKategori',$data);
		$cek = $this->input->post('check_list');
		if (empty ($cek)){
			redirect(base_url('index.php/QNA'));
		}else{
			$where = "";
			foreach ($cek as $objek){
					if($where == null){
						$where = "kode_golongan='$objek'";
					}else{
						$where = $where." OR kode_golongan='$objek'";
					}
					
				}
			
			$data['subGol'] = $this->m_kategori->cariSubgol($where);

			$this->load->view('v_jawabSubGol', $data);
		}
	}
	function jawabKel(){
		// $data['golPok'] = $this->m_kategori->viewGol();
		// $this->load->view('v_jawabKategori',$data);
		$cek = $this->input->post('check_list');
		if (empty ($cek)){
			redirect(base_url('index.php/QNA'));
		}else{
			$where = "";
			foreach ($cek as $objek){
					if($where == null){
						$where = "kode_subgolongan='$objek'";
					}else{
						$where = $where." OR kode_subgolongan='$objek'";
					}
					
				}
			// echo $where;
			$data['kel'] = $this->m_kategori->cariKel($where);

			$this->load->view('v_jawabKel', $data);
		}
	}
	function kesimpulan(){
		// $data['golPok'] = $this->m_kategori->viewGol();
		// $this->load->view('v_jawabKategori',$data);
		$cek = $this->input->post('check_list');
		if (empty ($cek)){
			redirect(base_url('index.php/QNA'));
		}else{
			$where = "";
			foreach ($cek as $objek){
					if($where == null){
						$where = "kode_kelompok='$objek'";
					}else{
						$where = $where." OR kode_kelompok='$objek'";
					}
					
				}
			// echo $where;
			$data['kel'] = $this->m_kategori->cariKel($where);

			$this->load->view('v_kesimpulan', $data);
		}
	}
}