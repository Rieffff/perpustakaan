
@extends('layout/main')

<!-- Modal -->

<!-- Endmodal -->

@section('title','Pengembalian')

@section('container')
<!-- /.card-header -->


<div class="card-body">
@if (session('berhasil_pinjam'))
    <div class="alert alert-success alert-dismissible fade show" role="alert" >
        {{ session('berhasil_pinjam') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif
@if (session('gagal_pinjam'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert" >
        {{ session('gagal_pinjam') }}
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
      <th>Nama</th>
      <th>Jenis Kelamin</th>
      <th>Kelas</th>
      <th>Banyak Buku Di pinjam</th>
      <th></th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($result as $row)
    <tr>

      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->nis }}</td>
      <td>{{ $row->nama_siswa }}</td>
      <td>{{ $row->jenis_kelamin }}</td>
      <td>{{ $row->kelas }}</td>
      <td>{{ $numRows[$row->id_siswa] }}</td>
      <td >
        <!-- <a href="/pilihbuku/{{ $row->id_siswa }}" class="btn btn-info"><i class="fa fa-fw fa-book"></i></a> -->
        @if($numRows[$row->id_siswa] > 0 )
        <form role="form" action="/pengembalian2" method="POST">
          @method('patch')
          @csrf
      <div class="form-group">
        
        <input type="hidden" class="form-control"  name="id_siswa" id="id_siswa" value="{{ $row->id_siswa }}">
      </div>
      
    <!-- /.card-body -->
          <button type="submit" class="btn btn-info"><i class="fa fa-fw fa-arrow-alt-circle-left"></i><i class="fa fa-fw fa-book"></i></button>
        </form>
        @else
        <form role="form" action="" method="POST">
          
    <!-- /.card-body -->
          <button type="button" class="btn btn-danger" disabled><i class="fa fa-fw fa-arrow-alt-circle-left"></i><i class="fa fa-fw fa-book"></i></button>
        </form>
        @endif
        <!-- <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModalLong{{ $row->id_siswa }} ">
        <i class="fa fa-fw fa-book"></i>
        </button> -->
        <!-- modal -->
<!-- /.card-header -->

        <!-- end modal -->
        
        <!-- <a href="/buku/1" class="btn btn-success"><i class="fa fa-fw fa-edit"></i></a> -->
        </td>
    </tr>
    @endforeach
    </tbody>
    <tfoot>
    <tr>
      <th>No</th>
      <th>NIS</th>
      <th>Nama</th>
      <th>Jenis Kelamin</th>
      <th>Kelas</th>
      <th>Banyak Buku Di pinjam</th>
      <th></th>
    </tr>
    </tfoot>
  </table>
</div>
@endsection

