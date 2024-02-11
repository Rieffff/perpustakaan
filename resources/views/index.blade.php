@extends('layout/main2')
@include('layout.slider')
@section('container')

  <!-- Small boxes (Stat box) -->
  
  <!-- /.row -->
  <!-- Main row -->
  
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-success">
        <div class="inner">
          <h4>{{ $countBuku }}</h4>

          <p>total <br> Buku</p>
        </div>
        <div class="icon">
          <i class="fa fa-fw fa-book"></i>
        </div>
        @if(auth()->user()->role == 'Admin')
        <a href="{{ url('/buku') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        @else
        <a href="{{ url('/peminjaman') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        @endif
      </div>
    </div>
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-info">
        <div class="inner">
          <h4>{{ $countSiswa }}</h4>

          <p>total <br> User</p>
        </div>
        <div class="icon">
          <i class="fa fa-fw fa-user-graduate"></i>
        </div>
        @if(auth()->user()->role == 'Admin')
        <a href="{{ url('/siswa') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        @else
        <a href="{{ url('/peminjaman') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        @endif
      </div>
    </div>
  
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-orange"style="color:white;" >
        <div class="inner" style="color:white;">
          <h4>{{ $countT }}</h4>

          <p>total <br> Peminjaman</p>
        </div>
        <div class="icon">
          <i class="fa fa-fw fa-shopping-cart"></i>
        </div>
        @if(auth()->user()->role == 'Admin')
        <a href="{{ url('/peminjaman') }}" class="small-box-footer" ><div style="color:white;">More info <i class="fas fa-arrow-circle-right"></i></div></a>
        @else
        <a href="{{ url('/data') }}" class="small-box-footer" ><div style="color:white;">More info <i class="fas fa-arrow-circle-right"></i></div></a>
        @endif
      </div>
    </div>
      
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-maroon">
        <div class="inner">
          <h4>Rp.{{ $get4 }}</h4>
          
          <p>perolehan Denda <br> Bulan ini </p>
          
        </div>
        <div class="icon">
          <i class="fa fa-fw fa-donate"></i>
        </div>
        @if(auth()->user()->role == 'Admin')
        <a href="{{ url('/peminjaman') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        @else
        <a href="{{ url('/data') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        @endif
      </div>
    </div>
@endsection