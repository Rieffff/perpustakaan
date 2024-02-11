@extends('layout/main')
@section('title','Kategori')
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
<!-- btn menu -->
    <a class="btn btn-warning" href="/kategori/export">Export From Database </a>
    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModalLongImport">
    <i class="fa fa-fw fa-import"></i>
    Import Data
    </button>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
    <i class="fa fa-fw fa-plus"></i>
    Tambah Data
    </button>
<!-- end btn menu -->
<br>
<br>
  <table id="example1" class="table table-bordered table-striped" width="100%">
    <thead>
    <tr>
      <th>No</th>
      <th>id Kategori</th>
      <th>Kategori</th>
      <th></th>
      <th></th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($rows as $row)
    <tr>

      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->id_kategori }}</td>
      <td>{{ $row->kategori }}</td>
      <td >
     
        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalLong{{ $row->id_kategori }} ">
        <i class="fa fa-fw fa-edit"></i>
        </button>
      
<!-- modal add -->
<div class="modal fade" id="exampleModalLong{{ $row->id_kategori }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal Edit</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
  <form role="form" action="kategori/{{ $row->id_kategori }}" method="POST">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="judul">kategori</label>
        <input type="text" class="form-control" id="kategori" placeholder="Enter kategori" name="kategori" required value="{{ $row->kategori }}">
      </div>
      <div class="form-group">
        <label>Deadline</label>
        <select class="form-control select2bs4" style="width: 100%;" name="id_dealine" >
          
          <option value="1">3 Hari</option>
          <option value="2">2 Semester</option>
          <option value="3">1 Semester</option>
        </select>
      </div>

    </div>
    <!-- /.card-body -->


</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>
  <!-- endModalAdd -->
        
        <!-- <a href="/buku/1" class="btn btn-success"><i class="fa fa-fw fa-edit"></i></a> -->
        </td>
        <td>
        <form action="/kategori/{{ $row->id_kategori }}" method="POST">
          @method('delete')
          @csrf
          <button type="submit" name="submit" class="btn btn-danger" onclick="return confirm('Apakah Anda Yakin ingin menghapus data ??')"><i class="fa fa-fw fa-trash"></i></button>
        </form>
        
      </td>
    </tr>
    @endforeach
    </tbody>
    <tfoot>
    <tr>
      <th>No</th>
      <th>Kategori</th>
      <th></th>
      <th></th>
    </tr>
    </tfoot>
  </table>
</div>
<!-- modal add -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal Add</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
  <form role="form" action="{{ url('/kategori/store') }}" method="POST">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="judul">kategori</label>
        <input type="text" class="form-control" id="kategori" placeholder="Enter kategori" name="kategori" required>
      </div>
      <div class="form-group">
        <label>Deadline</label>
        <select class="form-control select2bs4" style="width: 100%;" name="id_dealine" >
          
          <option value="1">3 Hari</option>
          <option value="2">2 Semester</option>
          <option value="3">1 Semester</option>
        </select>
      </div>

    </div>
    <!-- /.card-body -->


</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>
  <!-- endModalAdd -->
  <!-- modal import -->
<div class="modal fade" id="exampleModalLongImport" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal Add</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="/kategori/import" method="POST" enctype="multipart/form-data">
        @csrf
        <input type="file" name="file" class="form-control">
        <br>
        <br>
        <button class="btn btn-success">Import to Database</button>
        <a  class="btn btn-success" href="{{ asset('assets/template/KategoriTemplate.xlsx') }}" download>Template XLSX</a>
    </form>
      </div>
    </div>
  </div>
</div>
  <!-- endModalAdd -->
@endsection

