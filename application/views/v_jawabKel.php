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
<div class="clearfix" id="intro" style="padding-top:70px;">
<header class="section-header" style="padding-top:60px">  
  <h3>Pilih Kelompok</h3>
</header>

<!--<form id="acount-infor" method="post" action="<?php echo base_url('index.php/QNA/kesimpulan'); ?>" class="acount-infor add-admin">
    <?php
    if( ! empty($kel)){ // Jika data siswa tidak sama dengan kosong, artinya jika data siswa ada
      foreach($kel as $data){
        echo "<input type='checkbox' name='check_list[]' alt='heckbox' value='".$data->kode_kelompok."'>".$data->judul_kelompok."</input></br>";
      }
    }
    ?>
    <input class="btn btn-primary waves-effect waves-light"  type="submit" name="submit" value="Next">
</form>-->

<div class="containertable" style="margin: 0 auto;width:60%">
  <div class="row">
    <div class="col-12">
    <form id="acount-infor" method="post" action="<?php echo base_url('index.php/QNA/kesimpulan'); ?>" class="acount-infor add-admin formkategori">  
      <table class="table table-bordered table-stripped">
        <thead class="thead-dark">
          <tr>
            <th scope="col" style="width:13px">Pilih</th>
            <th scope="col">Kelompok</th>
          </tr>
        </thead>
        <tbody>
          <?php
            if( ! empty($kel)){ // Jika data siswa tidak sama dengan kosong, artinya jika data siswa ada
              foreach($kel as $data){
                  echo "<tr>";
                  echo "<td align='center'><input type='checkbox' name='check_list[]' alt='checkbox' value='".$data->kode_kelompok."'></td>";
                  echo "<td>".$data->judul_kelompok."</td>";
                  echo "</tr>";
              }
            }
          ?>
        </tbody>
      </table>
      <input class="btn btn-primary waves-effect waves-light float-right" type="submit" name="submit" value="Next">
    </form>
    </div>
  </div>
</div>
</div>
</body>
</html>