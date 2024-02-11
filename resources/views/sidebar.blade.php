<!-- widget -->
					<div class="widget">
					</div>
					<!-- widget -->
					<div class="widget">
						<h5 class="widget-title">Blog</h5>
						<div class="recent-post-widget">
							<!-- recent post -->
							  @foreach($getBlog as $key => $row)
							<div class="rp-item">
								<div class="rp-thumb set-bg" data-setbg="{{ asset('assets/blog/' . $row->header) }}"></div>
								<div class="rp-content">
									<h6><a href="/blog/{{ $row->judul }}" >{{ substr(strip_tags($row->isi), 0, 40) }}
							@if (strlen(strip_tags($row->isi)) > 40)
							   </a>
							@endif</h6>
									<p><i class="fa fa-clock-o"></i> {{ $row->created_at->translatedFormat('l, d F Y') }}</p>
								</div>
							</div>
							@endforeach
							
					
					<!-- widget -->
					<div class="widget">
						<img src="img/ad.jpg" alt="">
					</div>
				</div>
			</div>