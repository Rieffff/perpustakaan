
@extends('layout/main')

<!-- Modal -->

<!-- Endmodal -->

@section('title','Buku')

@section('container')
<!-- /.card-header -->


<div class="card-body">
@if (session('berhasil_kembalikan'))
    <div class="alert alert-success alert-dismissible fade show" role="alert" >
        {{ session('berhasil_kembalikan') }}
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

<br>
<br>
  <table id="example1" class="table table-bordered table-striped" width="100%">
    <thead>
    <tr>
      <th>No</th>
      <th>NIS</th>
      <th>Nama Siswa</th>
      <th>Kelas</th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($result as $row)
    <tr>

      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->nis }}</td>
      <td><a href="/detailData/{{ $row->id_siswa }}"> {{ $row->nama_siswa }}</a></td>
      <td>{{ $row->kelas }}</td>
    </tr>
    @endforeach
    </tbody>
    <tfoot>
    <tr>
      <th>No</th>
      <th>NIS</th>
      <th>Nama Siswa</th>
      <th>Kelas</th>
    </tr>
    </tfoot>
    
  </table>
  <footer class="blockquote mb-0">
  
  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModalLong"><i class="fa fa-fw fa-print"></i></button>
  </footer>
</div>


<!-- modal add -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
  <form role="form" action="{{ url('/cetakCustomPDF') }}" method="POST">
  @method('post')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="ISBN">Tanggal Awal</label>
        <input type="date" class="form-control" id="date1" placeholder="Pilih tanggal" name="date1" required>
      </div>
      
      <div class="form-group">
        <label for="ISBN">Sampai Tanggal</label>
        <input type="date" class="form-control" id="date2" placeholder="Pilih tanggal" name="date2" required>
      </div>
      </div>
    <!-- /.card-body -->
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" >Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>
  <!-- endModalAdd -->
@endsection

