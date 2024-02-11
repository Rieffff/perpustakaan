
@extends('layout/main')

<!-- Modal -->

<!-- Endmodal -->

@section('title','Siswa')

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
      <th>nis</th>
      <th>nama_siswa</th>
      <th>jenis_kelamin</th>
      <th>kelas</th>
      <th></th>
      <th></th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($rows as $row)
    <tr>

      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->nis }}</td>
      <td>{{ $row->nama_siswa }}</td>
      <td>{{ $row->jenis_kelamin }}</td>
      <td>{{ $row->kelas }}</td>
      <td >
      <?php $URL = "/bukuEdit";  ?>
        <!-- <a href="{{ url($URL) }}" class="btn btn-success"><i class="fa fa-fw fa-edit"></i></a> -->
        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalLong{{ $row->id_siswa }} ">
        <i class="fa fa-fw fa-edit"></i>
        </button>
        <!-- modal -->
        <div class="modal fade" id="exampleModalLong{{ $row->id_siswa }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle{{ $row->id_siswa }}" aria-hidden="true">
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
  <form role="form" method="POST" action="/siswa/{{ $row->id_siswa }}">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="nis">nis</label>
        <input type="number" class="form-control" id="nis" placeholder="Enter nis" name="nis" value="{{ $row->nis }}" required>
      </div>
      <div class="form-group">
        <label for="nama_siswa">nama_siswa</label>
        <input type="text" class="form-control" id="nama_siswa" placeholder="Enter nama_siswa" name="nama_siswa" value="{{ $row->nama_siswa }}" required>
      </div>
      <div class="form-group">
        <label for="kelas">kelas</label>
        <select class="form-control select2bs4" style="width: 100%;" name="jenis_kelamin" >
        <option value="{{ $row->jenis_kelamin }}">{{ $row->jenis_kelamin }}</option>
          <option value="Laki-Laki">Laki-Laki</option>
          <option value="Perempuan">Perempuan</option>
        </select>
      </div>
      <div class="form-group">
        <label>Deadline</label>
        <select class="form-control select2bs4" style="width: 100%;" name="id_kelas" >
            <option value="{{ $row->id_kelas }}">{{ $row->kelas }}</option>  
        @foreach($kelas as $row2)
          <option value="{{ $row2->id_kelas }}">{{ $row2->kelas }}</option>
        @endforeach
        </select>
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
        <form action="/siswa/{{ $row->id_siswa }}" method="POST">
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
      <th>nis</th>
      <th>nama_siswa</th>
      <th>jenis_kelamin</th>
      <th>kelas</th>
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
  <form role="form" action="{{ url('/siswa/store') }}" method="POST">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="nis">nis</label>
        <input type="number" class="form-control" id="nis" placeholder="Enter nis" name="nis" required>
      </div>
      <div class="form-group">
        <label for="nama_siswa">nama_siswa</label>
        <input type="text" class="form-control" id="nama_siswa" placeholder="Enter nama_siswa" name="nama_siswa" required>
      </div>
      <div class="form-group">
        <label for="kelas">kelas</label>
        <select class="form-control select2bs4" style="width: 100%;" name="jenis_kelamin" >
        
          <option value="Laki-Laki">Laki-Laki</option>
          <option value="Perempuan">Perempuan</option>
        </select>
      </div>
      <div class="form-group">
        <label for="kelas">kelas</label>
        <select class="form-control select2bs4" style="width: 100%;" name="id_kelas" >
        @foreach($kelas as $row2)
          <option value="{{ $row2->id_kelas }}">{{ $row2->kelas }}</option>
        @endforeach
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

