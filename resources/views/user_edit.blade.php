
@extends('layout/main')

<!-- Modal -->

<!-- Endmodal -->

@section('title','Kelas')

@section('container')
<!-- /.card-header -->


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

<div class="col-lg-12">
  <div class="col-lg-6">
  <form role="form" action="{{ url('/updatePasswordpro') }}" method="POST">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="judul">email</label>
        <input type="text" class="form-control" id="Email" placeholder="Enter Email" name="Email" required disabled value="{{ $rows->email }}">
      </div>
      <div class="form-group">
        <label for="judul">Password lama</label>
        <input type="password" class="form-control" id="password_old" placeholder="Enter old Password " name="password_old" required>
      </div>
      
      <div class="form-group">
        <label for="judul">Password Baru</label>
        <input type="password" class="form-control" id="password_new1" placeholder="Enter new Password" name="password_new1" required>
      </div>
      
      <div class="form-group">
        <label for="judul">Ketik ulang Password Baru</label>
        <input type="password" class="form-control" id="password_new2" placeholder="Confirm new Password" name="password_new2" required>
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-primary">Save</button>
      </div> 
    </form>
  </div>
  </div>
  <!-- endModalAdd -->
@endsection

