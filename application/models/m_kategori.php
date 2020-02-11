<?php 
 
class M_kategori extends CI_Model{	
	// Fungsi untuk menampilkan semua data siswa
    public function viewK(){
        return $this->db->get('kategori')->result();
      }
      public function viewGol(){
        return $this->db->get('golonganpokok')->result();
      }
      public function viewGoll(){
        return $this->db->get('golongan')->result();
      }
      public function viewSub(){
        return $this->db->get('subgolongan')->result();
      }
      public function viewKel(){
        return $this->db->get('kelompok')->result();
      }
      public function saveKate($db,$data){
        $this->db->insert($db, $data);
      }
      public function saveGolpok($db,$data){
        $this->db->insert($db, $data);
      }
      public function saveGol($db,$data){
        $this->db->insert($db, $data);
      }
      public function saveSubgol($db,$data){
        $this->db->insert($db, $data);
      }
      public function saveKel($db,$data){
        $this->db->insert($db, $data);
      }
      public function deleteKate($kode_kategori){
        $this->db->where('kode_kategori', $kode_kategori);
        $this->db->delete('kategori'); // Untuk mengeksekusi perintah delete data
      }
      public function deleteGolpok($kode_golonganpokok){
        $this->db->where('kode_golonganpokok', $kode_golonganpokok);
        $this->db->delete('golonganpokok'); // Untuk mengeksekusi perintah delete data
      }
      public function deleteGol($kode_golongan){
        $this->db->where('kode_golongan', $kode_golongan);
        $this->db->delete('golongan'); // Untuk mengeksekusi perintah delete data
      }
      public function deleteSubgol($kode_subgolongan){
        $this->db->where('kode_subgolongan', $kode_subgolongan);
        $this->db->delete('subgolongan'); // Untuk mengeksekusi perintah delete data
      }
      public function deleteKel($kode_kelompok){
        $this->db->where('kode_kelompok', $kode_kelompok);
        $this->db->delete('kelompok'); // Untuk mengeksekusi perintah delete data
      }
    // public function save($username,$password,$nama,$level,$blokir){
        
    //     // $this->db->insert('user', $data); // Untuk mengeksekusi perintah insert data
    //     $this->db->query("INSERT INTO user VALUES('','$username','$password','$nama','$level','$blokir')");
    // }
    
    //   public function edit($id,$data){
    //     $this->db->where('id', $id);
    //     $this->db->update('user', $data); // Untuk mengeksekusi perintah update data
    //   }
      
    //   public function ubah($where){
    //     return $this->db->get_where('user',$where)->result();
    //   }
}