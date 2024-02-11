<!DOCTYPE html>
<html lang="en">
<head>
	<title>SMPN 1 SITUBONDO || @yield('title')</title>
	<meta charset="UTF-8">
	<meta name="description" content="Unica University Template">
	<meta name="keywords" content="event, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="{{ asset('assets/image/logo2.png') }}" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Rubik:400,400i,500,500i,700,700i" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css" rel="stylesheet">
	<!-- Stylesheets -->
	<link rel="stylesheet" href="{{ asset('assets/unica/css/bootstrap.min.css') }}"/>
	<link rel="stylesheet" href="{{ asset('assets/unica/css/font-awesome.min.css') }}"/>
	<link rel="stylesheet" href="{{ asset('assets/unica/css/themify-icons.css') }}"/>
	<link rel="stylesheet" href="{{ asset('assets/unica/css/magnific-popup.css') }}"/>
	<link rel="stylesheet" href="{{ asset('assets/unica/css/animate.css') }}"/>
	<link rel="stylesheet" href="{{ asset('assets/unica/css/owl.carousel.css') }}"/>
	<link rel="stylesheet" href="{{ asset('assets/unica/css/style.css') }}"/>
	<link rel="stylesheet" href="{{ asset('assets/LTE/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/LTE/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- header section -->
	<header class="header-section">
		<div class="container">
			<!-- logo -->
			<a href="{{ url('/') }}" class="site-logo"><img src="{{ asset('assets/image/logo.png') }}" alt="" style="width:200px; height:80px; margin-top:-23px; "> </a><b style="margin-left:-100px;">PERPUSTAKAAN SMP NEGERI 1 SITUBONDO</b>
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-info">
				<div class="hf-item">
					<i class="fa fa-envelope-o"></i>
					<p><span>EMAIL</span>info@smpn1situbondo.sch.id</p>
				</div>
				<div class="hf-item">
					<i class="fa fa-phone"></i>
					<p><span>TELEPON </span> (0338) 671550</p>
				</div>
			</div>
		</div>
	</header>
	<!-- header section end-->


	<!-- Header section  -->
	<!-- Header section  -->
	<nav class="nav-section">
		<div class="container">
			<div class="nav-right">
				<a href=""><i class="fa fa-search"></i></a>
				<a href="{{ url('/sign') }}"><i class="fa fa-sign-in"></i></a>
			</div>
			<ul class="main-menu">
				<li class="{{ ( $title === 'Home') ? 'active' : '' }}"  ><a href="{{ url('/')  }}">Home</a></li>
				<li class="{{ ( $title === 'Blog') ? 'active' : '' }}"><a href="{{ url('/blog') }}">blog</a></li>
				<li class="{{ ( $title === 'Buku Tamu') ? 'active' : '' }}"><a href="{{ url('/buku_tamu') }}">Buku Tamu</a></li>
				<li class="{{ ( $title === 'Karya') ? 'active' : '' }}"><a href="{{ url('/project') }}">Karya Siswa</a></li>
				<li></li>
			</ul>
		</div>
	</nav>
	<!-- Header section end -->
	<!-- Header section end -->
	

	<!-- Hero section end -->

	@yield('container')


	<!-- Footer section -->
	<footer class="footer-section">
		<div class="container footer-top">
			<div class="row">
				<!-- widget -->
				<div class="col-sm-6 col-lg-3 footer-widget">
					<div class="about-widget">
						<img src="{{ asset('assets/image/logo2.png') }}" alt="" style="width:100px; height:100px;">
						<p>Perpustakaan SMP NEGERI 1 SITUBONDO</p>
						<div class="social pt-1">
							<a href="https://wa.me/+6289612788123"><i class="fa fa-phone-square"></i></a>
							<a href=""><i class="fa fa-facebook-square"></i></a>
							<a href=""><i class="fa fa-google-plus-square"></i></a>
							<a href=""><i class="fa fa-linkedin-square"></i></a>
							<a href=""><i class="fa fa-rss-square"></i></a>
						</div>
					</div>
				</div>
				<!-- widget -->
				<div class="col-sm-6 col-lg-3 footer-widget">
					<h6 class="fw-title">USEFUL LINK</h6>
					<div class="dobule-link">
						<ul>
							<li><a href="{{ url('/') }}">Home</a></li>
							<li><a href="{{ url('/blog') }}">Blog</a></li>
							<li><a href="smpn1situbondo.sch.id">About Spensasi</a></li>
						</ul>
					</div>
				</div>
				<!-- widget -->
				<div class="col-sm-6 col-lg-3 footer-widget">
					<h6 class="fw-title"></h6>
				</div>
				<!-- widget -->
				<div class="col-sm-6 col-lg-3 footer-widget">
					<h6 class="fw-title">CONTACT</h6>
					<ul class="contact">
						<li><p><i class="fa fa-map-marker"></i> Jl. Pb. Sudirman No.5, Karangasem, Patokan, Kec. Situbondo, Kabupaten Situbondo, Jawa Timur</p></li>
						<li><p><i class="fa fa-phone"></i> (+62) 89 612 788 123</p></li>
						<li><p><i class="fa fa-envelope"></i> itsupport2@smpn1situbondo.sch.id</p></li>
						<li><p><i class="fa fa-clock-o"></i> Monday - Saturday, 08:00AM - 02:00 PM</p></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- copyright -->
		<div class="copyright">
			<div class="container">
				<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
			</div>		
		</div>
	</footer>
	<!-- Footer section end-->



	<!--====== Javascripts & Jquery ======-->

	<script src="{{ asset('assets/unica/js/jquery-3.2.1.min.js') }}"></script>
	<script src="{{ asset('assets/unica/js/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('assets/unica/js/jquery.countdown.js') }}"></script>
	<script src="{{ asset('assets/unica/js/masonry.pkgd.min.js') }}"></script>
	<script src="{{ asset('assets/unica/js/magnific-popup.min.js') }}"></script>
	<script src="{{ asset('assets/unica/js/main.js') }}"></script>
	<script src="{{ asset('assets/LTE/plugins/datatables/jquery.dataTables.min.js') }}"></script>
	<script src="{{ asset('assets/LTE/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
	<script src="{{ asset('assets/LTE/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
	<script src="{{ asset('assets/LTE/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
	<script>
  $(function () {
    $("#example1").DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</body>
</html>