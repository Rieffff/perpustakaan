
@extends('layout/main')

<!-- Modal -->

<!-- Endmodal -->

@section('title','Buku')

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

<br>
<br>
  <table id="example1" class="table table-bordered table-striped" width="100%">
    <thead>
    <tr>
      <th>No</th>
      <th>ISBN</th>
      <th>Judul</th>
      <th>Pengarang</th>
      <th>Penerbit</th>
      <th>Tahun Terbit</th>
      <th>stok</th>
      <th></th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($result as $row)
    <tr>

      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->ISBN }}</td>
      <td>{{ $row->judul }}</td>
      <td>{{ $row->pengarang }}</td>
      <td>{{ $row->penerbit }}</td>
      <td>{{ $row->thn_terbit }}</td>
      <td>{{ $row->stok }}</td>
      <td >
      @if( $row->stok > 0)
      <form role="form" action="/pinjambuku" method="POST">
  @method('patch')
  @csrf
      <div class="form-group">
        
        <input type="hidden" class="form-control"  name="id_buku" id="id_buku" value="{{ $row->id_buku }}">
        <input type="hidden" class="form-control"  name="id_siswa" id="id_siswa" value="{{ $id_siswa }}">
      </div>
      
    <!-- /.card-body -->
          <button type="submit" class="btn btn-info"><i class="fa fa-fw fa-shopping-cart"></i></button>
        </form>
        @else
        <form role="form" action="/pinjambuku" method="POST">
        @method('patch')
        @csrf
      <div class="form-group">
        
        <input type="hidden" class="form-control"  name="id_buku" id="id_buku" value="{{ $row->id_buku }}">
        <input type="hidden" class="form-control"  name="id_siswa" id="id_siswa" value="{{ $id_siswa }}">
      </div>
      
    <!-- /.card-body -->
          <button type="button" class="btn btn-danger" disabled><i class="fa fa-fw fa-shopping-cart" ></i></button>
        </form>
        @endif
      </td>
    </tr>
    @endforeach
    </tbody>
    <tfoot>
    <tr>
      <th>No</th>
      <th>ISBN</th>
      <th>Judul</th>
      <th>Pengarang</th>
      <th>Penerbit</th>
      <th>Tahun Terbit</th>
      <th>stok</th>
      <th></th>
    </tr>
    </tfoot>
  </table>
</div>
@endsection

