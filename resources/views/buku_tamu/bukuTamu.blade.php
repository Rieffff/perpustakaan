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

</div>
<section class="blog-page-section spad pt-0">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 post-list">
          <div class="post-item">
            <div class="post-content">
              
    
<!-- end btn menu -->
<br>
<br>
  <table id="example1" class="table table-bordered table-striped" width="100%">
    <thead>
    <tr>
      <th>No</th>
      <th>Nama Pengunjung</th>
      <th>Guru / Siswa</th>
      <th>kelas</th>
      <th>Tanggal Kunjungan</th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($get4 as $row)
    <tr>
      <?php 
        if($row->guru == 1 ){
          $status =  "guru";
        }else{
          $status = "siswa";
        }
      ?>
      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->nama }}</td>
      <td>{{ $status }}</td>
      <td>{{ $row->kelas->kelas }}</td>
      <td> {{ $row->created_at->translatedFormat('l, d F Y') }}</td>
    </tr>
    @endforeach
    </tbody>
    <tfoot>
    <tr>
      <th>No</th>
      <th>Nama Pengunjung</th>
      <th>Guru / Siswa</th>
      <th>kelas</th>
      <th>Tanggal Kunjungan</th>
    </tr>
    </tfoot>
  </table>
          </div>
          </div>
        </div>
        <div class="col-sm-8 col-md-5 col-lg-4 col-xl-3 offset-xl-1 offset-0 pl-xl-0 sidebar">
          @include('sidebar')
        </div>
      </div>
    </div>
        <!-- sidebar -->
       
  </section>
  <!-- endModalAdd -->
@endsection

