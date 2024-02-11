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
<div class="site-breadcrumb">
    <div class="container">
      <a href="#"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-right"></i>
      <span>Buku tamu</span>
    </div>
  </div>
<!-- Breadcrumb section end -->
<section class="blog-page-section spad pt-0">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 post-list">
        <div class="post-item">
          <div class="post-content">
<form role="form" action="{{ url('/tamu/store') }}" method="POST">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="nama">nama</label>
        <input type="text" class="form-control" id="nama" placeholder="Enter nama" name="nama"    required>
      </div>
      <div class="form-group">
        <label>Sebagai</label>
        <select class="form-control select2bs4" style="width: 100%;" name="guru" id="guru" onchange="myFunction()">
          <option value="2">--pilih--</option>
          <option value="0">Siswa</option>
          <option value="1">Guru</option>
          
        </select>
      </div>
      <div id="kelas" style="display: none;">
      <div class="form-group">
        <label>Kelas</label>
        <select class="form-control select2bs4" style="width: 100%;" id="id_kelas" name="id_kelas">
          <option value="0">Pilih Kelas</option>
          @foreach($kelas as $row2)

          <option value="<?= $row2->id_kelas ?>"><?= $row2->kelas ?></option>
          @endforeach
        </select>
      </div>
      </div>
      <div id="kelas_disabled" style="display: block;">
      <div class="form-group">
        <label>Kelas</label>
        <select class="form-control select2bs4" style="width: 100%;" id="id_kelas_disabled" name="" disabled>
          <option value="0">Pilih Kelas</option>
        </select>
      </div>
      </div>
    </div>
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" >Submit</button>
        </form>
          </div>
        </div>
      </div>
      <!-- sidebar -->

      <div class="col-sm-8 col-md-5 col-lg-4 col-xl-3 offset-xl-1 offset-0 pl-xl-0 sidebar">
        @include('sidebar')
      </div>
    </div>
  </div>
  </div>
</section>
<!-- btn menu -->
   

          
          
  <script>

function myFunction() {
  var x = document.getElementById("guru").value;
  var i = document.getElementById("kelas");
  var j = document.getElementById("kelas_disabled");

  if (x == 0){
     
      // document.getElementById("id_kelas").remove("31");
   document.getElementById("id_kelas").value = "0";
     i.style.display = "block";
     j.style.display = "none";
  }else{

   document.getElementById("id_kelas").value = "31";
   i.style.display = "none";
   j.style.display = "block";
   

  }
}

</script>      

<!-- modal add -->

  <!-- endModalAdd -->

  <!-- endModalAdd -->
@endsection

