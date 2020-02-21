<!doctype html>
<html class="no-js" lang="en">

<?php $this->load->view('header');?> 

<body>
    <!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<div class="error-pagewrap">
		<div class="error-page-int">
			<div class="text-center m-b-md custom-login">
				<h3>PLEASE LOGIN</h3>
				<p>Login ini untuk masuk kedalama halaman Admin</p>
			</div>
			<div class="content-error">
				<div class="hpanel">
                    <div class="panel-body">
                        <form action="<?php echo base_url('index.php/login/aksi_login'); ?>" method="post" id="loginForm">
                            <div class="form-group">
                                <label class="control-label" for="username">Username</label>
                                <input type="text" placeholder="example@gmail.com" title="Please enter you username" required="" value="" name="username" id="username" class="form-control">
                                <span class="help-block small">Your unique username to app</span>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Password</label>
                                <input type="password" title="Please enter your password" placeholder="******" required="" value="" name="password" id="password" class="form-control">
                                <span class="help-block small">Your strong password</span>
                            </div>
                            <button class="btn btn-success btn-block loginbtn">Login</button>
                            <!-- <a class="btn btn-default btn-block" href="#">Register</a> -->
                        </form>
                    </div>
                </div>
			</div>
		</div>   
    </div>
     <!-- jquery
		============================================ -->
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
    <!-- counterup JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/counterup/jquery.counterup.min.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/counterup/waypoints.min.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/counterup/counterup-active.js') ?>"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/scrollbar/jquery.mCustomScrollbar.concat.min.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/scrollbar/mCustomScrollbar-active.js') ?>"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/metisMenu/metisMenu.min.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/metisMenu/metisMenu-active.js') ?>"></script>
    <!-- morrisjs JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/morrisjs/raphael-min.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/morrisjs/morris.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/morrisjs/morris-active.js') ?>"></script>
    <!-- morrisjs JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/sparkline/jquery.sparkline.min.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/sparkline/jquery.charts-sparkline.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/sparkline/sparkline-active.js') ?>"></script>
    <!-- calendar JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/calendar/moment.min.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/calendar/fullcalendar.min.js') ?>"></script>
    <script src="<?php echo site_url('assets2/js/calendar/fullcalendar-active.js') ?>"></script>
    <!-- plugins JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/plugins.js') ?>"></script>
    <!-- main JS
		============================================ -->
    <script src="<?php echo site_url('assets2/js/main.js') ?>"></script>
    <!-- tawk chat JS
		============================================ -->

</body>

</html>