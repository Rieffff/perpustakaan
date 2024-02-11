
@extends('layout/main')

<!-- Modal -->

<!-- Endmodal -->

@section('title','Pengembalian')

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
      <th>ISBN</th>
      <th>Judul Buku</th>
      <th>Nama Siswa</th>
      <th>Tanggal Pinjam</th>
      <th>Batas tanggal pengembalian</th>
      <th>Denda</th>
      <th></th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($result as $row)
    <tr>

      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->ISBN }}</td>
      <td>{{ $row->judul }}</td>
      <td>{{ $row->nama_siswa }}</td>
      <td>{{ $row->date }}</td>
      <td>{{ $row->batas_peminjaman }}</td>
      <td>{{ $denda[$row->id_peminjaman] }}</td>
      <td >
 
      <div class="form-check">
        <input class="form-check-input" type="checkbox" value="{{ $row->id_peminjaman }}" id="pilBuku{{ $row->id_peminjaman }}" name="pilBuku[{{ $row->id_peminjaman }}]" onclick="check({{ $row->id_peminjaman }})">

        
        <label class="form-check-label" for="defaultCheck1">
          Pilih Buku {{ $row->id_peminjaman }}
        </label>
      </div>
      </td>
    </tr>
    <!-- /.card-body -->
    @endforeach     
    </tbody>
    <tfoot>
    <tr>
      <th>No</th>
      <th>ISBN</th>
      <th>Judul</th>
      <th>Nama Siswa</th>
      <th>Tanggal Pinjam</th>
      <th>Batas tanggal pengembalian</th>
      <th>Denda</th>
      <th></th>
    </tr>
    </tfoot>
  </table>
   
  <div class="card-footer">
  <form role="form" action="/kembalikan" method="POST">
      @method('patch')
      @csrf
      @foreach($result as $rows)
        <div id="inner46{{ $rows->id_peminjaman }}"></div>
      @endforeach
    <button type="submit" class="btn btn-info float-right" ><i class="fa fa-fw fa-save" ></i></button>
  </form>
  </div>

    
</div>
@endsection

