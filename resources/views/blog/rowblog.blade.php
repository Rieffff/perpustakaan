@extends('layout/main3')

<!-- Modal -->

<!-- Endmodal -->
@section('container')
<!-- Breadcrumb section -->
<div class="site-breadcrumb">
		<div class="container">
			<a href="#"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-right"></i>
			<span>Blog</span>
		</div>
	</div>
<!-- Breadcrumb section end -->
<section class="blog-page-section spad pt-0">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 post-list">
                @foreach($get4 as $key => $row)
					<div class="post-item">
						<div class="post-thumb set-bg" data-setbg="{{ asset('assets/blog/' . $row->header) }}"></div>
						<div class="post-content">
							<h3><a href="single-blog.html">{{ $row->judul }}</a></h3>
							<div class="post-meta">
								<span><i class="fa fa-calendar-o"></i> {{ $row->tanggal }}</span>
								<span><i class="fa fa-user"></i> {{ $row->admin }}</span>
							</div>
							<p>{{ substr(strip_tags($row->isi), 0, 50) }}
							@if (strlen(strip_tags($row->isi)) > 50)
							 <a href="/blog/{{ $row->judul }}" class="btn btn-warning btn-sm"> Read More </a>
							@endif</p>
						</div>
					</div>
                @endforeach
				
					<!-- <ul class="site-pageination">
						<li><a href="#" class="active">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
						
					</ul> -->
					
					<div class="d-flex justify-content-center">{{  $get4->links()  }}</div>
					
				</div>
				<!-- sidebar -->
				<div class="col-sm-8 col-md-5 col-lg-4 col-xl-3 offset-xl-1 offset-0 pl-xl-0 sidebar">
					@include('sidebar')
				</div>
	</section>
	@endsection
