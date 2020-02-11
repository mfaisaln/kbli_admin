<!doctype html>
<html class="no-js" lang="en">

<head>
    <?php $this->load->view('header');?>
    <!-- x-editor CSS
		============================================ -->
    <link rel="stylesheet" href="<?php echo site_url('assets/css/editor/select2.css') ?>">
    <link rel="stylesheet" href="<?php echo site_url('assets/css/editor/datetimepicker.css') ?>">
    <link rel="stylesheet" href="<?php echo site_url('assets/css/editor/bootstrap-editable.css') ?>">
    <link rel="stylesheet" href="<?php echo site_url('assets/css/editor/x-editor-style.css') ?>">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="<?php echo site_url('assets/css/data-table/bootstrap-table.css') ?>">
    <link rel="stylesheet" href="<?php echo site_url('assets/css/data-table/bootstrap-editable.css') ?>"> 
</head>

<body>
    <!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
    <!-- Start Left menu area -->
    <?php $this->load->view('v_admin/v_menuleft');?> 
    <!-- End Left menu area -->
    <!-- Start Welcome area -->
    <div class="all-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="logo-pro">
                        <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-advance-area">
            <?php $this->load->view('v_admin/v_navAtas');?> 
            <!-- Mobile Menu start -->
            <?php $this->load->view('v_admin/v_mobileMenu');?> 
            <!-- Mobile Menu end -->
            <br><br>
            <div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list single-page-breadcome">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcome-heading">
                                            
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <ul class="breadcome-menu">
                                            <li><a href="#">Home</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">Kategori</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Single pro tab review Start-->
        <div class="single-pro-review-area mt-t-30 mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-payment-inner-st">
                            <ul id="myTabedu1" class="tab-review-design">
                                <li class="active"><a href="#t1"> Tampil Kategori</a></li>
                                <li><a href="#t2"> Tampil Golongan Pokok</a></li>
                                <li><a href="#t3"> Tampil Golongan</a></li>
                                <li><a href="#t4"> Tampil Sub Golongan</a></li>
                                <li><a href="#t5"> Tampil Kelompok</a></li>
                            </ul>
                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="t1">
                                <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="sparkline13-list">
                                                
                                                <div class="sparkline13-graph">
                                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                                        <!-- <div id="toolbar">
                                                            <select class="form-control dt-tb">
                                                                <option value="">Export Basic</option>
                                                                <option value="all">Export All</option>
                                                                <option value="selected">Export Selected</option>
                                                            </select>
                                                        </div> -->
                                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                                            data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                                            <thead>
                                                                <tr>
                                                                    <th data-field="state" data-checkbox="true"></th>
                                                                    <th data-field="id">No</th>
                                                                    <th data-field="kat" >Kode Kategori</th>
                                                                    <th data-field="judul" >Judul Kategori</th>
                                                                    <th data-field="desk" >Deskripsi Kategori</th>
                                                                    <th data-field="action">Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            <?php
                                                                $i =1;
                                                                    if( ! empty($kategori)){ // Jika data siswa tidak sama dengan kosong, artinya jika data siswa ada
                                                                        
                                                                        foreach($kategori as $data){
                                                                
                                                                        echo 
                                                                        "<tr>
                                                                        <td>".$data->kode_kategori."</td>
                                                                        <td>".$i++."</td>
                                                                        <td>".$data->kode_kategori."</td>
                                                                        <td>".$data->judul_kategori."</td>
                                                                        <td>".$data->deskripsi_kategori."</td>
                                                                        <td>
                                                                                    <a href='".base_url("index.php/Admin2/edit/".$data->kode_kategori)."' class='btn btn-success'><i class='fa fa-pencil' aria-hidden='true'></i></a>
                                                                                    <a href='".base_url("index.php/Kategori/hapusKate/".$data->kode_kategori)."' class='btn btn-danger'><i class='fa fa-trash-o' aria-hidden='true'></i></a>
                                                                        </td>
                                                                        </tr>";
                                                                        }
                                                                    }else{ // Jika data siswa kosong
                                                                        echo "<tr><td align='center' colspan='7'>Data Tidak Ada</td></tr>";
                                                                    }
                                                                ?>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-tab-list tab-pane fade  in" id="t2">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="sparkline13-list">
                                                
                                                <div class="sparkline13-graph">
                                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                                        <!-- <div id="toolbar">
                                                            <select class="form-control dt-tb">
                                                                <option value="">Export Basic</option>
                                                                <option value="all">Export All</option>
                                                                <option value="selected">Export Selected</option>
                                                            </select>
                                                        </div> -->
                                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                                            data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                                            <thead>
                                                                <tr>
                                                                    <th data-field="state" data-checkbox="true"></th>
                                                                    <th data-field="id">No</th>
                                                                    <th data-field="golpok" >Kode Golongan Pokok</th>
                                                                    <th data-field="kate" >Kode Kategori</th>
                                                                    <th data-field="judul" >Judul Golongan Pokok</th>
                                                                    <th data-field="desk" >Deskripsi Golongan Pokok</th>
                                                                    <th data-field="action">Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <?php
                                                                $i =1;
                                                                    if( ! empty($golPok)){ // Jika data siswa tidak sama dengan kosong, artinya jika data siswa ada
                                                                        
                                                                        foreach($golPok as $data1){
                                                                
                                                                        echo 
                                                                        "<tr>
                                                                        <td></td>
                                                                        <td>".$i++."</td>
                                                                        <td>".$data1->kode_golonganpokok."</td>
                                                                        <td>".$data1->kode_kategori."</td>
                                                                       
                                                                        <td>".$data1->judul_golonganpokok."</td>
                                                                        <td>".$data1->deskripsi_golonganpokok."</td>
                                                                        <td>
                                                                                    <a href='".base_url("index.php/Admin2/edit/".$data1->kode_golonganpokok)."' class='btn btn-success'><i class='fa fa-pencil' aria-hidden='true'></i></a>
                                                                                    <a href='".base_url("index.php/Kategori/hapusGolpok/".$data1->kode_golonganpokok)."' class='btn btn-danger'><i class='fa fa-trash-o' aria-hidden='true'></i></a>
                                                                        </td>
                                                                        </tr>";
                                                                        }
                                                                    }else{ // Jika data siswa kosong
                                                                        echo "<tr><td align='center' colspan='7'>Data Tidak Ada</td></tr>";
                                                                    }
                                                                ?>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-tab-list tab-pane fade  in" id="t3">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="sparkline13-list">
                                                
                                                <div class="sparkline13-graph">
                                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                                        <!-- <div id="toolbar">
                                                            <select class="form-control dt-tb">
                                                                <option value="">Export Basic</option>
                                                                <option value="all">Export All</option>
                                                                <option value="selected">Export Selected</option>
                                                            </select>
                                                        </div> -->
                                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                                            data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                                            <thead>
                                                                <tr>
                                                                    <th data-field="state" data-checkbox="true"></th>
                                                                    <th data-field="id">No</th>
                                                                    <th data-field="gol" >Kode Golongan</th>
                                                                    <th data-field="golpok" >Kode Golongan Pokok</th>
                                                                    <th data-field="judul" >Judul Golongan</th>
                                                                    <th data-field="desk" >Deskripsi Golongan</th>
                                                                    <th data-field="action">Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <?php
                                                                $i =1;
                                                                    if( ! empty($gol)){ // Jika data siswa tidak sama dengan kosong, artinya jika data siswa ada
                                                                        
                                                                        foreach($gol as $data2){
                                                                
                                                                        echo 
                                                                        "<tr>
                                                                        <td></td>
                                                                        <td>".$i++."</td>
                                                                        <td>".$data2->kode_golongan."</td>
                                                                        <td>".$data2->kode_golonganpokok."</td>
                                                                        
                                                                        <td>".$data2->judul_golongan."</td>
                                                                        <td>".$data2->deskripsi_golongan."</td>
                                                                        <td>
                                                                                    <a href='".base_url("index.php/Admin2/edit/".$data2->kode_golongan)."' class='btn btn-success'><i class='fa fa-pencil' aria-hidden='true'></i></a>
                                                                                    <a href='".base_url("index.php/Kategori/hapusGol/".$data2->kode_golongan)."' class='btn btn-danger'><i class='fa fa-trash-o' aria-hidden='true'></i></a>
                                                                        </td>
                                                                        </tr>";
                                                                        }
                                                                    }else{ // Jika data siswa kosong
                                                                        echo "<tr><td align='center' colspan='7'>Data Tidak Ada</td></tr>";
                                                                    }
                                                                ?>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-tab-list tab-pane fade  in" id="t4">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="sparkline13-list">
                                                
                                                <div class="sparkline13-graph">
                                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                                        <!-- <div id="toolbar">
                                                            <select class="form-control dt-tb">
                                                                <option value="">Export Basic</option>
                                                                <option value="all">Export All</option>
                                                                <option value="selected">Export Selected</option>
                                                            </select>
                                                        </div> -->
                                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                                            data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                                            <thead>
                                                                <tr>
                                                                    <th data-field="state" data-checkbox="true"></th>
                                                                    <th data-field="id">No</th>
                                                                    <th data-field="subgol" >Kode Sub Golongan</th>
                                                                    <th data-field="gol" >Kode Golongan</th>
                                                                    <th data-field="judul" >Judul Sub Golongan</th>
                                                                    <th data-field="desk" >Deskripsi Sub Golongan</th>
                                                                    <th data-field="action">Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <?php
                                                                $i =1;
                                                                    if( ! empty($subGol)){ // Jika data siswa tidak sama dengan kosong, artinya jika data siswa ada
                                                                        
                                                                        foreach($subGol as $data3){
                                                                
                                                                        echo 
                                                                        "<tr>
                                                                        <td></td>
                                                                        <td>".$i++."</td>
                                                                        <td>".$data3->kode_subgolongan."</td>
                                                                        <td>".$data3->kode_golongan."</td>
                                                                        
                                                                        <td>".$data3->judul_subgolongan."</td>
                                                                        <td>".$data3->deskripsi_subgolongan."</td>
                                                                        <td>
                                                                                    <a href='".base_url("index.php/Admin2/edit/".$data3->kode_subgolongan)."' class='btn btn-success'><i class='fa fa-pencil' aria-hidden='true'></i></a>
                                                                                    <a href='".base_url("index.php/Kategori/hapusSubgol/".$data3->kode_subgolongan)."' class='btn btn-danger'><i class='fa fa-trash-o' aria-hidden='true'></i></a>
                                                                        </td>
                                                                        </tr>";
                                                                        }
                                                                    }else{ // Jika data siswa kosong
                                                                        echo "<tr><td align='center' colspan='7'>Data Tidak Ada</td></tr>";
                                                                    }
                                                                ?>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-tab-list tab-pane fade  in" id="t5">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="sparkline13-list">
                                                
                                                <div class="sparkline13-graph">
                                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                                        <!-- <div id="toolbar">
                                                            <select class="form-control dt-tb">
                                                                <option value="">Export Basic</option>
                                                                <option value="all">Export All</option>
                                                                <option value="selected">Export Selected</option>
                                                            </select>
                                                        </div> -->
                                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                                            data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                                            <thead>
                                                                <tr>
                                                                    <th data-field="state" data-checkbox="true"></th>
                                                                    <th data-field="id">No</th>
                                                                    <th data-field="kel" >Kode Kelompok</th>
                                                                    <th data-field="subgol" >Kode Sub Golongan</th>
                                                                    <th data-field="judul" >Judul Kelompok</th>
                                                                    <th data-field="desk" >Deskripsi Kelompok</th>
                                                                    <th data-field="action">Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <?php
                                                                $i =1;
                                                                    if( ! empty($kel)){ // Jika data siswa tidak sama dengan kosong, artinya jika data siswa ada
                                                                        
                                                                        foreach($kel as $data4){
                                                                
                                                                        echo 
                                                                        "<tr>
                                                                        <td></td>
                                                                        <td>".$i++."</td>
                                                                        <td>".$data4->kode_kelompok."</td>
                                                                        <td>".$data4->kode_subgolongan."</td>
                                                                        
                                                                        <td>".$data4->judul_kelompok."</td>
                                                                        <td>".$data4->deskripsi_kelompok."</td>
                                                                        <td>
                                                                                    <a href='".base_url("index.php/Admin2/edit/".$data4->kode_kelompok)."' class='btn btn-success'><i class='fa fa-pencil' aria-hidden='true'></i></a>
                                                                                    <a href='".base_url("index.php/Kategori/hapusKel/".$data4->kode_kelompok)."' class='btn btn-danger'><i class='fa fa-trash-o' aria-hidden='true'></i></a>
                                                                        </td>
                                                                        </tr>";
                                                                        }
                                                                    }else{ // Jika data siswa kosong
                                                                        echo "<tr><td align='center' colspan='7'>Data Tidak Ada</td></tr>";
                                                                    }
                                                                ?>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="footer-copy-right">
                            <p>Copyright © 2020  TIM KBLI ICM</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="<?php echo site_url('assets/js/vendor/jquery-1.12.4.min.js') ?>"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/bootstrap.min.js') ?>"></script>
    <!-- wow JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/wow.min.js') ?>"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/jquery-price-slider.js') ?>"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/jquery.meanmenu.js') ?>"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/owl.carousel.min.js') ?>"></script>
    <!-- sticky JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/jquery.sticky.js') ?>"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/jquery.scrollUp.min.js') ?>"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/scrollbar/jquery.mCustomScrollbar.concat.min.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/scrollbar/mCustomScrollbar-active.js') ?>"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/metisMenu/metisMenu.min.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/metisMenu/metisMenu-active.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/plugins.js') ?>"></script>
    <!-- main JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/main.js') ?>"></script>
    <!-- tawk chat JS
        ============================================ -->
        <!-- data table JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/data-table/bootstrap-table.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/data-table/tableExport.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/data-table/data-table-active.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/data-table/bootstrap-table-editable.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/data-table/bootstrap-editable.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/data-table/bootstrap-table-resizable.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/data-table/colResizable-1.5.source.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/data-table/bootstrap-table-export.js') ?>"></script>
    <!--  editable JS
		============================================ -->
    <script src="<?php echo site_url('assets/js/editable/jquery.mockjax.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/editable/mock-active.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/editable/select2.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/editable/moment.min.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/editable/bootstrap-datetimepicker.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/editable/bootstrap-editable.js') ?>"></script>
    <script src="<?php echo site_url('assets/js/editable/xediable-active.js') ?>"></script>
    <!-- Chart JS
		============================================ -->
    <script src="js/chart/jquery.peity.min.js"></script>
    <script src="js/peity/peity-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="js/tab.js"></script>
</body>

</html>
