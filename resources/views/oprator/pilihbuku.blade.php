
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
<p id="h1">sini</p>
<input type="text" name="coba" id="coba">
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
      <td>{{ $row->id_buku }}</td>
      <td >
        
      @if($row->stok < 1)
      <div class="form-check">
        <input class="form-check-input" type="checkbox" value="{{ $row->id_buku }}" id="defaultCheck1" name="pilBuku" disabled>
        <label class="form-check-label" for="defaultCheck1">
          Pilih Buku
        </label>
      </div>
      @else
      <div class="form-check">
        <input class="form-check-input" type="checkbox" value="{{ $row->id_buku }}" id="pilBuku{{ $row->id_buku }}" name="pilBuku[{{ $row->id_buku }}]" onclick="check({{ $row->id_buku }})">
        
        <label class="form-check-label" for="defaultCheck1">
          Pilih Buku
        </label>
      </div>
    <!-- /.card-body -->
          
        @endif
      </td>
      
    </tr>
    @endforeach
    </tbody>
  </table>
</div>

<div class="card-footer">
<form role="form" action="/pinjambuku" method="POST">
@method('patch')
@csrf
<input type="hidden" class="form-control"  name="id_siswa" id="id_siswa" value="{{ $id_siswa }}">
@foreach($result as $rows)
    <div id="inner46{{ $rows->id_buku }}"></div>

@endforeach
    <button type="submit" class="btn btn-info float-right" ><i class="fa fa-fw fa-save" ></i></button>
  </form>
  </div>
@endsection

