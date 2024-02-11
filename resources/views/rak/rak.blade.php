
@extends('layout/main')

<!-- Modal -->

<!-- Endmodal -->

@section('title','Rak Buku')

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

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLongRak">
<i class="fa fa-fw fa-plus"></i>Tambah Data
</button>
<br>
<br>
  <table id="example1" class="table table-bordered table-striped" width="100%">
    <thead>
    <tr>
      <th>No</th>
      <th>ID</th>
      <th>rak</th>
      <th><i class="fa fa-fw fa-edit"></i></th>
      <th><i class="fa fa-fw fa-trash"></i></th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($rows as $row)
    <tr>

      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->id_rak }}</td>
      <td>{{ $row->rak }}</td>
      <td >
      <?php $URL = "/rakEdit";  ?>
        <!-- <a href="{{ url($URL) }}" class="btn btn-success"><i class="fa fa-fw fa-edit"></i></a> -->
        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalLongRak{{ $row->id_rak }} ">
        <i class="fa fa-fw fa-edit"></i>
        </button>
      
<!-- modal EDIT -->
<div class="modal fade" id="exampleModalLongRak{{ $row->id_rak }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal Edit</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
  <form role="form" action="rak/{{ $row->id_rak }}" method="POST">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="judul">Rak</label>
        <input type="text" class="form-control" id="rak" placeholder="Enter rak" name="rak" required value="{{ $row->rak }}">
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
        <form action="/rak/{{ $row->id_rak }}" method="POST">
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
      <th>rak</th>
      <th></th>
      <th></th>
    </tr>
    </tfoot>
  </table>
</div>

<!-- modal add -->
<div class="modal fade" id="exampleModalLongRak" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal Add</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
  <form role="form" action="{{ url('/rak/store') }}" method="POST">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="Rak">Rak</label>
        <input type="text" class="form-control" id="rak" placeholder="Enter rak" name="rak" required>
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
@endsection

