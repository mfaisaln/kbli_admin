<?php 
 
class Kategori extends CI_Controller{ 
	function index(){
		$this->load->view('v_admin/v_tambahK');
	}
}