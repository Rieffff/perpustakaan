
@extends('layout/main')

<!-- Modal -->

<!-- Endmodal -->

@section('title','User')

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

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
<i class="fa fa-fw fa-plus"></i>
</button>
<br>
<br>
  <table id="example1" class="table table-bordered table-striped" width="100%">
    <thead>
    <tr>
      <th>No</th>
      <th>Email</th>
      <th>Nama</th>
      <th>Hak Akses</th>
      <th></th>
      <th></th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($rows as $row)
    <tr>

      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->email }}</td>
      <td><a href="{{ Url('/detailuser/'.$row->id.'') }}">{{ $row->name }}</a> </td>
      <td>{{ $row->role }}</td>
      <td >
      <?php $URL = "/bukuEdit";  ?>
        <!-- <a href="{{ url($URL) }}" class="btn btn-success"><i class="fa fa-fw fa-edit"></i></a> -->
        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalLong{{ $row->id }} ">
        <i class="fa fa-fw fa-edit"></i>
        </button>
        <!-- modal -->
        <div class="modal fade" id="exampleModalLong{{ $row->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle{{ $row->id }}" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal Edit</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

<!-- /.card-header -->
<div class="card-body" >
  <form role="form" method="POST" action="/user/{{ $row->id }}">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="{{ $row->email }}" required>
        <input type="hidden" class="form-control" id="id" placeholder="Enter id" name="id" value="{{ $row->id }}" required>
      </div>
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" value="{{ $row->name }}" required>
      </div>
    </div>
    <!-- /.card-body -->

    
</div>
</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>

        <!-- end modal -->
        
        <!-- <a href="/buku/1" class="btn btn-success"><i class="fa fa-fw fa-edit"></i></a> -->
        </td>
        <td>
        <form action="/userReset/{{ $row->id }}" method="POST">
          @method('patch')
          @csrf
          <button type="submit" name="submit" class="btn btn-danger" onclick="return confirm('Apakah Anda Yakin ingin mereset password ??')"><i class="fa fa-fw fa-sync-alt"></i></button>
        </form>
        
      </td>
    </tr>
    @endforeach
    </tbody>
    <tfoot>
    <tr>
      <th>No</th>
      <th>Email</th>
      <th>Nama</th>
      <th>Role</th>
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
  <form role="form" action="{{ url('/user/store') }}" method="POST">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="email">email</label>
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
      </div>
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
      </div>
      <div class="form-group">
        <label for="kelas">kelas</label>
        <select class="form-control select2bs4" style="width: 100%;" name="role">
          <option value="Operator">Operator</option>
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
@endsection

