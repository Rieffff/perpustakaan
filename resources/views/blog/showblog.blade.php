@extends('layout/main3')

<!-- Modal -->

<!-- Endmodal -->
@section('container')
<!-- Breadcrumb section -->
<div class="site-breadcrumb">
		<div class="container">
			<a href="{{ url('/')  }}"><i class="fa fa-home"></i> Home</a> <a href="{{ url('/blog')  }}"> <i class="fa fa-angle-right"></i>
			<span>Blog</span></a><i class="fa fa-angle-right"></i><span>Blog Detail</span>
		</div>
	</div>
<!-- Breadcrumb section end -->
<section class="blog-page-section spad pt-0">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 post-list">
					<div class="post-item post-details">
                        <img src="{{ asset('assets/blog/' . $row->header) }}" class="post-thumb-full" alt="">
						<div class="post-content">
							<h3><a href="{{ url('/blog/'. $row->id)  }}">{{ $row->judul }}</a></h3>
							<div class="post-meta">
								<span><i class="fa fa-calendar-o"></i> {{ $row->tanggal }}</span>
								<span><i class="fa fa-user"></i> {{ $row->admin }}</span>
							</div>
							<p>{{ $row->isi }}</p>
						</div>
                    </div>					
				</div>
				<!-- sidebar -->
				<div class="col-sm-8 col-md-5 col-lg-4 col-xl-3 offset-xl-1 offset-0 pl-xl-0 sidebar">
					<!-- widget -->
					<div class="widget">
						<form class="search-widget">
							<input type="text" placeholder="Search...">
							<button><i class="ti-search"></i></button>
						</form>
					</div>
					<!-- widget -->
					<div class="widget">
						<h5 class="widget-title">Recent News</h5>
						<div class="recent-post-widget">
							<!-- recent post -->
							<div class="rp-item">
								<div class="rp-thumb set-bg" data-setbg="img/blog/recent-post/1.jpg"></div>
								<div class="rp-content">
									<h6>Snackable study:How to break up your master's degree</h6>
									<p><i class="fa fa-clock-o"></i> 24 Mar 2018</p>
								</div>
							</div>
							<!-- recent post -->
							<div class="rp-item">
								<div class="rp-thumb set-bg" data-setbg="img/blog/recent-post/2.jpg"></div>
								<div class="rp-content">
									<h6>Op en University plans major ts to number of staff</h6>
									<p><i class="fa fa-clock-o"></i> 24 Mar 2018</p>
								</div>
							</div>
							<!-- recent post -->
							<div class="rp-item">
								<div class="rp-thumb set-bg" data-setbg="img/blog/recent-post/3.jpg"></div>
								<div class="rp-content">
									<h6>My postgrad: ‘I worked on essays as giraffes walked by’</h6>
									<p><i class="fa fa-clock-o"></i> 24 Mar 2018</p>
								</div>
							</div>
							<!-- recent post -->
							<div class="rp-item">
								<div class="rp-thumb set-bg" data-setbg="img/blog/recent-post/4.jpg"></div>
								<div class="rp-content">
									<h6>How to use the Guardian University Guide</h6>
									<p><i class="fa fa-clock-o"></i> 24 Mar 2018</p>
								</div>
							</div>
							<!-- recent post -->
							<div class="rp-item">
								<div class="rp-thumb set-bg" data-setbg="img/blog/recent-post/5.jpg"></div>
								<div class="rp-content">
									<h6>My MBA experience: ‘It was an eye opener’</h6>
									<p><i class="fa fa-clock-o"></i> 24 Mar 2018</p>
								</div>
							</div>
							<!-- recent post -->
							<div class="rp-item">
								<div class="rp-thumb set-bg" data-setbg="img/blog/recent-post/6.jpg"></div>
								<div class="rp-content">
									<h6>My MBA experience: ‘It was an eye opener’</h6>
									<p><i class="fa fa-clock-o"></i> 24 Mar 2018</p>
								</div>
							</div>
						</div>
					</div>
					
					<!-- widget -->
					<div class="widget">
						<img src="img/ad.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</section>
	@endsection
