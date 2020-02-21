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
<style>
  .containerlogin {
  padding: 2rem 0rem;
}

@media (min-width: 576px){
  .modal-dialog {
    max-width: 400px;
    
    .modal-content {
      padding: 1rem;
    }
  }
}

.modal-header {
  .close {
    margin-top: -1.5rem;
  }
}

.form-title {
  margin: -2rem 0rem 2rem;
}

.btn-round {
  border-radius: 3rem;
}

.delimiter {
  padding: 1rem;  
}

.social-buttons {
  .btn {
    margin: 0 0.5rem 1rem;
  }
}

.signup-section {
  padding: 0.3rem 0rem;
}
</style>
</head>
<body>
  <!--==========================
  Header
  ============================-->
  <header id="header">

    <div class="container">
      <div class="logo float-left">
        <!-- Uncomment below if you prefer to use an image logo -->
        <h1 class="text-light"><a href="#intro" class="scrollto"><span>TES KBLI</span></a></h1>
        <!-- <a href="#header" class="scrollto"><img src="img/logo.png" alt="" class="img-fluid"></a> -->
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="#intro">Home</a></li>
          <li><a href="#about">Tentang KBLI</a></li>
          <li><a href="#services">Layanan Kami</a></li>
          <li><a href="#testimonials">Metode</a></li>
          <li><a href="#team">Team</a></li>
          <li><a href="#footer">Contact Us</a></li>
          <li><a href="<?php echo base_url('index.php/login/index'); ?>"  >Admin</a></li>
        </ul>
      </nav><!-- .main-nav -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro" class="clearfix">
    <div class="container d-flex h-100">
      <div class="row justify-content-center align-self-center">
        <div class="col-md-6 intro-info order-md-first order-last">
          <h2>KBLI Solusi<br> <span>Untuk Usaha Anda!</span></h2>
          <div>
            <a href="#" class="btn-get-started scrollto">Mulai Tes KBLI</a>
          </div>
        </div>
  
        <div class="col-md-6 intro-img order-md-last order-first">
          <img src="<?php echo base_url('assets/img/intro-img.svg')?>" alt="" class="img-fluid">
        </div>
      </div>

    </div>
  </section><!-- #intro -->

  <main id="main">

  <!--==========================
    About Us Section
  ============================-->
    <section id="about">

      <div class="container">
        <div class="row">

          <div class="col-lg-5 col-md-6">
            <div class="about-img">
              <img src="<?php echo base_url('assets/img/about-img2.jpg')?>" alt="">
            </div>
          </div>

          <div class="col-lg-7 col-md-6">
            <div class="about-content">
              <h2>Tentang KBLI</h2>
              <h3>Klasifikasi Baku Lapangan Usaha Indonesia.</h3>
              <p style="text-align:justify">Klasifikasi Baku Lapangan Usaha Indonesia (KBLI) merupakan salahsatu klasifikasi baku yang diterbitkan oleh Badan Pusat Statistik (BPS) untuk aktivitas ekonomi. KBLI disusun untuk menyediakan satu set kerangka klasifikasi kegiatane konomi yang komprehensif di Indonesia agar dapat digunakan untuk penyeragaman pengumpulan, pengolahan, penyajian dan analisis data statistik menurut kegiatan ekonomi, serta untuk mempelajari keadaan atau perilaku ekonomi menurut kegiatan ekonomi. Dengan penyeragaman tersebut, data statistik kegiatan ekonomi dapat dibandingkan dengan format yang standar pada tingkat internasional, nasional, maupun regional.</p>
              <ul>
                <li><i class="ion-android-checkmark-circle"></i>Badan Pusat Statistik, 2015, “Klasifikasi Baku Lapangan Usaha Indonesia”, Jakarta, Badan Pusat Statistik.</li>
              </ul>
            </div>
          </div>
        </div>
      </div>

    </section><!-- #about -->


    <!--==========================
      Services Section
    ============================-->
    <section id="services" class="section-bg">
      <div class="container">

        <header class="section-header">
          <h3>Layanan Kami</h3>
        </header>

        <div class="row">

          <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
            <div class="box" style="height:350px">
              <div class="icon" style="background: #fceef3;"><i class="ion-ios-analytics-outline" style="color: #ff689b;"></i></div>
              <h4 class="title"><a href="">Sharing</a></h4>
              <p style="text-align:center" class="description">Kami membagikan informasi kepada masyarakat tentang apa itu KBLI, apa manfaat dari adanya KBLI. Sehingga masyarakat dengan mandiri dapat melakukan pengecekkan usaha yang dimilikinya.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
            <div class="box" style="height:350px">
              <div class="icon" style="background: #fff0da;"><i class="ion-ios-bookmarks-outline" style="color: #e98e06;"></i></div>
              <h4 class="title"><a href="">Tutorial Penggunaan</a></h4>
              <p style="text-align:center" class="description">Kami menyediakan tutorial penggunaan website Tes KBLI agar memudahkan pengguna yang ingin melakukan tes KBLI.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
            <div class="box" style="height:350px">
              <div class="icon" style="background: #e6fdfc;"><i class="ion-ios-paper-outline" style="color: #3fcdc7;"></i></div>
              <h4 class="title"><a href="">Konsultasi</a></h4>
              <p style="text-align:center" class="description">Kami menyediakan tempat untuk berkonsultasi dengan para pelaku usaha dan instansi yang bersangkutan sehingga masyarakat lebih leluasa untuk melakukan tanya jawab terkait KBLI.</p>
            </div>
          </div>
        </div>

      </div>
    </section><!-- #services -->
    <!--==========================
      Portfolio Section
    ============================-->
    <!--==========================
      Clients Section
    ============================-->
    <section id="testimonials">
      <div class="container" style="height:420px">

        <header class="section-header">
          <h3>Metode</h3>
        </header>

        <div class="row justify-content-center">
          <div class="col-lg-8">

            <div class="owl-carousel testimonials-carousel wow fadeInUp">
    
              <div class="testimonial-item">
                <img src="<?php echo base_url('assets/img/testimonial-1.jpg')?>" class="testimonial-img" alt="">
                <h3>Taksonomi</h3>
                <p>
                Taksonomi bertujuan untuk merancang sebuah visualisasi informasi agar lebih baik dengan menerapkan faktor utama dalam proses pengembangan sebuah antarmuka. Pada pengembangan system informasi yang terstruktur dan memperhatikan pertimbangan yang baik, dapat menghasilkan kualitas visualisasi yang lebih tinggi. Kerangka kerja ini juga berfungsi untuk membantu pengembangan evaluasi yang efektif dan proses penilaian sistem visualisasi informasi.
                </p>
              </div>
    
              <div class="testimonial-item">
                <img src="<?php echo base_url('assets/img/testimonial-2.jpg')?>" class="testimonial-img" alt="">
                <h3>Question and Answer</h3>
                <p>
                Question and Answering System (QAS) adalah sistem dimana tiap user dapat mengajukan pertanyaan dan menjawab pertanyaan dalam berbagai topik. Dalam proses pengembangan sebuah QAS yang baik dibutuhkan pengetahuan dari berbagai disiplin ilmu yaitu seperti Natural Language Processing, Information Extraction, dan Information Retrieval.                
                </p>
              </div>
    
              <div class="testimonial-item">
                <img src="<?php echo base_url('assets/img/testimonial-3.jpg')?>" class="testimonial-img" alt="">
                <h3>Decision Tree</h3>
                <p>
                Pohon keputusan adalahstrukturpohonsepertibaganalur,dimana masing-masing simpul internal merupakan tes pada atribut, setiap cabang mewakili hasil tes, label kelas diwakili oleh masing-masing simpul leaf (atau simpul terminal). Decision Tree digunakan untuk pengenalan pola dan termasuk dalam pengenalan pola secara statistik.
                </p>
              </div>
            </div>

          </div>
        </div>


      </div>
    </section><!-- #testimonials -->

    <!--==========================
      Team Section
    ============================-->
    <section id="team" class="section-bg">
      <div class="container">
        <div class="section-header">
          <h3>Team</h3>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6 wow fadeInUp">
            <div class="member">
              <img src="<?php echo base_url('assets/img/team-1.jpg')?>" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Muhammad Ihsanuddienullah</h4>
                  <span>Front-End Developer</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="member">
              <img src="<?php echo base_url('assets/img/team-2.jpg')?>" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Muhammad Faisal Nur</h4>
                  <span>Back-End Developer</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
            <div class="member">
              <img src="<?php echo base_url('assets/img/team-3.jpg')?>" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Hendro Susanto</h4>
                  <span>Artificial Intelligent Specialist</span>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #team -->

    <!--==========================
      Clients Section
    ============================-->
    <section id="clients" class="wow fadeInUp">
      <div class="container">

        <header class="section-header">
          <h3>Our Clients</h3>
        </header>

        <div class="owl-carousel clients-carousel">
          <img src="<?php echo base_url('assets/img/clients/client-1.png')?>" alt="">
          <img src="<?php echo base_url('assets/img/clients/client-2.png')?>" alt="">
          <img src="<?php echo base_url('assets/img/clients/client-3.png')?>" alt="">
          <img src="<?php echo base_url('assets/img/clients/client-4.png')?>" alt="">
          <img src="<?php echo base_url('assets/img/clients/client-5.png')?>" alt="">
          <img src="<?php echo base_url('assets/img/clients/client-6.png')?>" alt="">
          <img src="<?php echo base_url('assets/img/clients/client-7.png')?>" alt="">
          <img src="<?php echo base_url('assets/img/clients/client-8.png')?>" alt="">
        </div>

      </div>
    </section><!-- #clients -->


    <!--==========================
      Pricing Section
   
    ==========================
      Frequently Asked Questions Section
    ============================-->
    <section id="faq">
      <div class="container">
        <header class="section-header">
          <h3>Frequently Asked Questions</h3>
          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
        </header>

        <ul id="faq-list" class="wow fadeInUp">
          <li>
            <a data-toggle="collapse" class="collapsed" href="#faq1">Non consectetur a erat nam at lectus urna duis? <i class="ion-android-remove"></i></a>
            <div id="faq1" class="collapse" data-parent="#faq-list">
              <p>
                Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non.
              </p>
            </div>
          </li>

          <li>
            <a data-toggle="collapse" href="#faq2" class="collapsed">Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque? <i class="ion-android-remove"></i></a>
            <div id="faq2" class="collapse" data-parent="#faq-list">
              <p>
                Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
              </p>
            </div>
          </li>

          <li>
            <a data-toggle="collapse" href="#faq3" class="collapsed">Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi? <i class="ion-android-remove"></i></a>
            <div id="faq3" class="collapse" data-parent="#faq-list">
              <p>
                Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis
              </p>
            </div>
          </li>

          <li>
            <a data-toggle="collapse" href="#faq4" class="collapsed">Ac odio tempor orci dapibus. Aliquam eleifend mi in nulla? <i class="ion-android-remove"></i></a>
            <div id="faq4" class="collapse" data-parent="#faq-list">
              <p>
                Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
              </p>
            </div>
          </li>

          <li>
            <a data-toggle="collapse" href="#faq5" class="collapsed">Tempus quam pellentesque nec nam aliquam sem et tortor consequat? <i class="ion-android-remove"></i></a>
            <div id="faq5" class="collapse" data-parent="#faq-list">
              <p>
                Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in
              </p>
            </div>
          </li>

          <li>
            <a data-toggle="collapse" href="#faq6" class="collapsed">Tortor vitae purus faucibus ornare. Varius vel pharetra vel turpis nunc eget lorem dolor? <i class="ion-android-remove"></i></a>
            <div id="faq6" class="collapse" data-parent="#faq-list">
              <p>
                Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nibh tellus molestie nunc non blandit massa enim nec.
              </p>
            </div>
          </li>

        </ul>

      </div>
    </section><!-- #faq -->

  </main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer" class="section-bg">
    <div class="footer-top">
      <div class="container">

        <div class="row">

          <div class="col-lg-6">

            <div class="row">

                <div class="col-sm-6">

                  <div class="footer-info">
                    <h3>Rapid</h3>
                    <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.</p>
                  </div>

                  <div class="footer-newsletter">
                    <h4>Our Newsletter</h4>
                    <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna veniam enim veniam illum dolore legam minim quorum culpa amet magna export quem.</p>
                    <form action="" method="post">
                      <input type="email" name="email"><input type="submit"  value="Subscribe">
                    </form>
                  </div>

                </div>

                <div class="col-sm-6">
                  <div class="footer-links">
                    <h4>Useful Links</h4>
                    <ul>
                      <li><a href="#">Home</a></li>
                      <li><a href="#">About us</a></li>
                      <li><a href="#">Services</a></li>
                      <li><a href="#">Terms of service</a></li>
                      <li><a href="#">Privacy policy</a></li>
                    </ul>
                  </div>

                  <div class="footer-links">
                    <h4>Contact Us</h4>
                    <p>
                      A108 Adam Street <br>
                      New York, NY 535022<br>
                      United States <br>
                      <strong>Phone:</strong> +1 5589 55488 55<br>
                      <strong>Email:</strong> info@example.com<br>
                    </p>
                  </div>

                  <div class="social-links">
                    <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                    <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                  </div>

                </div>

            </div>

          </div>

          <div class="col-lg-6">

            <div class="form">
              
              <h4>Send us a message</h4>
              <p>Eos ipsa est voluptates. Nostrum nam libero ipsa vero. Debitis quasi sit eaque numquam similique commodi harum aut temporibus.</p>
              <form method="post" action="<?php echo base_url('index.php/kbli/tambahpesan'); ?>" role="form" class="contactForm">
                <div class="form-group">
                  <input type="text" name="nama" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subjek" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="pesan" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                  <div class="validation"></div>
                </div>

                <!-- <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div> -->

                <div class="text-center"><button type="submit" title="Send Message">Send Message</button></div>
              </form>
            </div>

          </div>

          

        </div>

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>TEAM</strong> KBLI ICM
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Rapid
        
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
          -->
      </div>
    </div>
  </footer><!-- #footer -->

    <!--Pop Up Login From -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header border-bottom-0">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-title text-center">
          <h4>Login Admin</h4>
        </div>
        <div class="d-flex flex-column text-center">
          <form>
            <div class="form-group">
              <input type="email" class="form-control" id="email1" placeholder="Username">
            </div>
            <div class="form-group">
              <input type="password" class="form-control" id="password1" placeholder="Password">
            </div>
            <button type="button" class="btn btn-info btn-block btn-get-started scrollto">Login</button>
          </form>
          
          <div class="text-center text-muted delimiter"><a href="" class="text-info">Lupa Password ?</a></div>
          <div class="d-flex justify-content-center social-buttons">
            <button type="button" class="btn btn-secondary btn-round" data-toggle="tooltip" data-placement="top" title="Twitter">
              <i class="fab fa-twitter"></i>
            </button>
            <button type="button" class="btn btn-secondary btn-round" data-toggle="tooltip" data-placement="top" title="Facebook">
              <i class="fab fa-facebook"></i>
            </button>
            <button type="button" class="btn btn-secondary btn-round" data-toggle="tooltip" data-placement="top" title="Linkedin">
              <i class="fab fa-linkedin"></i>
            </button>
          </di>
        </div>
      </div>
    </div>
      <div class="modal-footer d-flex justify-content-center">
        <div class="signup-section">Login hanya untuk admin</div>
      </div>
  </div>
</div>
<!--Login-->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="<?php echo base_url('assets/lib/jquery/jquery.min.js')?>"></script>
  <script src="<?php echo base_url('assets/lib/jquery/jquery-migrate.min.js')?>"></script>
  <script src="<?php echo base_url('assets/lib/bootstrap/js/bootstrap.bundle.min.js')?>"></script>
  <script src="<?php echo base_url('assets/lib/easing/easing.min.js')?>"></script>
  <script src="<?php echo base_url('assets/lib/mobile-nav/mobile-nav.js')?>"></script>
  <script src="<?php echo base_url('assets/lib/wow/wow.min.js')?>"></script>
  <script src="<?php echo base_url('assets/lib/waypoints/waypoints.min.js')?>"></script>
  <script src="<?php echo base_url('assets/lib/counterup/counterup.min.js')?>"></script>
  <script src="<?php echo base_url('assets/lib/owlcarousel/owl.carousel.min.js')?>"></script>
  <script src="<?php echo base_url('assets/lib/isotope/isotope.pkgd.min.js')?>"></script>
  <script src="<?php echo base_url('assets/lib/lightbox/js/lightbox.min.js')?>"></script>
  <!-- Contact Form JavaScript File -->
  <script src="<?php echo base_url('assets/contactform/contactform.js')?>"></script>

  <!--Jquery PopUp overlay login-->
  <script src="<?php echo base_url('assets/login/jquery-popup-overlay/jquery.popupoverlay.js')?>"></script>

  <!-- Template Main Javascript File -->
  <script src="<?php echo base_url('assets/js/main.js')?>"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
$(document).ready(function(){
  $("#login").click(function(){
    $('#loginModal').modal('show');
    $(function () {
      $('[data-toggle="tooltip"]').tooltip()
    });
  });
  
});
</script>

</body>
</html>