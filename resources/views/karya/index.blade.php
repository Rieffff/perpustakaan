@extends('layout/main3')

<!-- Modal -->

<!-- Endmodal -->
@section('container')
<div class="card-body">
@if (session('Pesan'))
    <div class="alert alert-success alert-dismissible fade show" role="alert" >
        {{ session('Pesan') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif
@if (session('Hapus'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert" >
        {{ session('Hapus') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif
@if (session('Update'))
    <div class="alert alert-warning alert-dismissible fade show" role="alert" >
        {{ session('Update') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif
<!-- btn menu -->
<div class="site-breadcrumb">
    <div class="container">
      <a href="#"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-right"></i>
      <span>Blog</span>
    </div>
  </div>
  <!-- Breadcrumb section end -->


  <!-- Courses section -->
  <section class="full-courses-section spad pt-0">
    <div class="container">
      <div class="row">
        <!-- course item -->
        <div class="col-lg-4 col-md-6 course-item">
          <div class="course-thumb">
            <img src="img/course/1.jpg" alt="">
            <div class="course-cat">
              <span>BUSINESS</span>
            </div>
          </div>
          <div class="course-info">
            <div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
            <h4>Certificate Course in Writing<br>for a Global Market</h4>
            <h4 class="cource-price">$100<span>/month</span></h4>
          </div>
        </div>
        <!-- course item -->
        <div class="col-lg-4 col-md-6 course-item">
          <div class="course-thumb">
            <img src="img/course/2.jpg" alt="">
            <div class="course-cat">
              <span>Marketing</span>
            </div>
          </div>
          <div class="course-info">
            <div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
            <h4>Google AdWords: Get More<br> Customers with Search Marketing </h4>
            <h4 class="cource-price">$150<span>/month</span></h4>
          </div>
        </div>
        <!-- course item -->
        <div class="col-lg-4 col-md-6 course-item">
          <div class="course-thumb">
            <img src="img/course/3.jpg" alt="">
            <div class="course-cat">
              <span>DESIGN</span>
            </div>
          </div>
          <div class="course-info">
            <div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
            <h4>The Ultimate Drawing Course<br> Beginner to Advanced</h4>
            <h4 class="cource-price">$180<span>/month</span></h4>
          </div>
        </div>
        <!-- course item -->
        <div class="col-lg-4 col-md-6 course-item">
          <div class="course-thumb">
            <img src="img/course/4.jpg" alt="">
            <div class="course-cat">
              <span>DATABASE</span>
            </div>
          </div>
          <div class="course-info">
            <div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
            <h4>Ultimate MySQL Bootcamp: Go from SQL Beginner to Expert</h4>
            <h4 class="cource-price">$150<span>/month</span></h4>
          </div>
        </div>
        <!-- course item -->
        <div class="col-lg-4 col-md-6 course-item">
          <div class="course-thumb">
            <img src="img/course/5.jpg" alt="">
            <div class="course-cat">
              <span>PROGRAM</span>
            </div>
          </div>
          <div class="course-info">
            <div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
            <h4>Web Developer Bootcamp<br>Make web  applications</h4>
            <h4 class="cource-price">$250<span>/month</span></h4>
          </div>
        </div>
        <!-- course item -->
        <div class="col-lg-4 col-md-6 course-item">
          <div class="course-thumb">
            <img src="img/course/6.jpg" alt="">
            <div class="course-cat">
              <span>BUSINESS</span>
            </div>
          </div>
          <div class="course-info">
            <div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
            <h4>How to Start an Amazon<br>FBA Store on a Tight Budget</h4>
            <h4 class="cource-price">$150<span>/month</span></h4>
          </div>
        </div>
      </div>
      <div class="text-center">
        <ul class="site-pageination">
          <li><a href="#" class="active">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
        </ul>
      </div>
    </div>
  </section>
  <!-- Courses section end-->

@endsection

