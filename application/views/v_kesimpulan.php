<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tes KBLI</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="<?php echo base_url('assets/img/favicon.png')?>" rel="icon">
  <link href="<?php echo base_url('assets/img/apple-touch-icon.png')?>" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,500,600,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="<?php echo base_url('assets/lib/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

   <!-- link datatable -->
    <!-- x-editor CSS
		============================================ -->
    <link rel="stylesheet" href="<?php echo site_url('assets2/css/editor/select2.css') ?>">
    <link rel="stylesheet" href="<?php echo site_url('assets2/css/editor/datetimepicker.css') ?>">
    <link rel="stylesheet" href="<?php echo site_url('assets2/css/editor/bootstrap-editable.css') ?>">
    <link rel="stylesheet" href="<?php echo site_url('assets2/css/editor/x-editor-style.css') ?>">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="<?php echo site_url('assets2/css/data-table/bootstrap-table.css') ?>">
    <link rel="stylesheet" href="<?php echo site_url('assets2/css/data-table/bootstrap-editable.css') ?>"> 

  <!-- link datatable -->
  <!-- Libraries CSS Files -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="<?php echo base_url('assets/lib/font-awesome/css/font-awesome.min.css')?>" rel="stylesheet">
  <link href="<?php echo base_url('assets/lib/animate/animate.min.css')?>" rel="stylesheet">
  <link href="<?php echo base_url('assets/lib/ionicons/css/ionicons.min.css')?>" rel="stylesheet">
  <link href="<?php echo base_url('assets/lib/owlcarousel/assets/owl.carousel.min.css')?>" rel="stylesheet">
  <link href="<?php echo base_url('assets/lib/lightbox/css/lightbox.min.css')?>" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="<?php echo base_url('assets/css/style.css')?>" rel="stylesheet">

  <!-- =======================================================
    Theme Name: Rapid
    Theme URL: https://bootstrapmade.com/rapid-multipurpose-bootstrap-business-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->

</head>

<body>
<body  class="clearfix" id="intro" style="padding-top:70px; min-height: 500px;
  background-repeat: no-repeat;
  background-attachment: fixed;
">
<div>


<br><br>
<h3 style="
  text-align: center;
  font-size: 36px;
  color: #413e66;
  font-weight: 700;
  position: relative;
  font-family: 'Montserrat', sans-serif;
  padding-top: 30px"
  >Kode KBLI Usaha Anda</h3>

<div class="containertable" style="margin: 0 auto;width:60%">
  <div class="row">
    <div class="col-12">
    <form id="acount-infor" method="post" action="<?php echo base_url('index.php/QNA/jawabKel'); ?>" class="acount-infor add-admin formkategori">  
      <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                                            data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
        <thead class="thead-dark">
          <tr>
            <th scope="col">No</th>
            <th scope="col">Kode KBLI</th>
            <th scope="col">KBLI</th>
            <th scope="col">Deskripsi</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $i =1;
            if( ! empty($kel)){ // Jika data siswa tidak sama dengan kosong, artinya jika data siswa ada
              foreach($kel as $data){
                  echo "<tr>";
                  echo "<td>".$i++."</td>";
                  echo "<td>".$data->kode_kelompok."</td>";
                  echo "<td>".$data->judul_kelompok."</td>";
                  echo "<td>".$data->deskripsi_kelompok."</td>";
                  echo "</tr>";
              }
            }
          ?>
        </tbody>
      </table>
      <a style="margin: 20px; " href="<?php echo base_url('index.php/kbli/index'); ?>" class="btn btn-danger waves-effect waves-light float-right" type="submit"  style="color:white;">Kembali</a>
    </form>
    
    </div>
  </div>
</div>
</div>
</body>
</html>
<script src="<?php echo site_url('assets2/js/vendor/jquery-1.12.4.min.js') ?>"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/bootstrap.min.js') ?>"></script>
    <!-- wow JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/wow.min.js') ?>"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/jquery-price-slider.js') ?>"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/jquery.meanmenu.js') ?>"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/owl.carousel.min.js') ?>"></script>
    <!-- sticky JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/jquery.sticky.js') ?>"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/jquery.scrollUp.min.js') ?>"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/scrollbar/jquery.mCustomScrollbar.concat.min.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/scrollbar/mCustomScrollbar-active.js') ?>"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/metisMenu/metisMenu.min.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/metisMenu/metisMenu-active.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/plugins.js') ?>"></script>
    <!-- main JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/main.js') ?>"></script>
    <!-- tawk chat JS
        ============================================ -->
        <!-- data table JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/data-table/bootstrap-table.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/data-table/tableExport.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/data-table/data-table-active.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/data-table/bootstrap-table-editable.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/data-table/bootstrap-editable.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/data-table/bootstrap-table-resizable.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/data-table/colResizable-1.5.source.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/data-table/bootstrap-table-export.js') ?>"></script>
    <!--  editable JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/editable/jquery.mockjax.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/editable/mock-active.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/editable/select2.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/editable/moment.min.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/editable/bootstrap-datetimepicker.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/editable/bootstrap-editable.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/editable/xediable-active.js') ?>"></script>
    <!-- Chart JS
		============================================ -->
    <script src="js/chart/jquery.peity.min.js"></script>
    <script src="js/peity/peity-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="js/tab.js"></script>