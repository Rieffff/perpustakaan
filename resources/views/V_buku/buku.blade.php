
@extends('layout/main')
@section('title','Buku')
@section('container')
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
<a class="btn btn-warning" href="/buku/export">Export From Database </a>
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
      <th>ISBN</th>
      <th>Judul</th>
      <th>Pengarang</th>
      <th>Penerbit</th>
      <th>Tahun Terbit</th>
      <th></th>
      <th></th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($buku as $row)
    <tr>

      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->ISBN }}</td>
      <td>{{ $row->judul }}</td>
      <td>{{ $row->pengarang }}</td>
      <td>{{ $row->penerbit }}</td>
      <td>{{ $row->thn_terbit }}</td>
      <td >
      <?php $URL = "/bukuEdit";  ?>
        <!-- <a href="{{ url($URL) }}" class="btn btn-success"><i class="fa fa-fw fa-edit"></i></a> -->
        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalLong{{ $row->id_buku }} ">
        <i class="fa fa-fw fa-edit"></i>
        </button>
        <!-- modal -->
        <div class="modal fade" id="exampleModalLong{{ $row->id_buku }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle{{ $row->id_buku }}" aria-hidden="true">
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
  <form role="form" method="POST" action="/buku/{{ $row->id_buku }}">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="ISBN">ISBN</label>
        <input type="number" class="form-control" id="ISBN" placeholder="Enter ISBN" name="ISBN" value="{{ $row->ISBN }}" required>
      </div>
      <div class="form-group">
        <label for="judul">Judul</label>
        <input type="text" class="form-control" id="judul" placeholder="Enter judul" name="judul" value="{{ $row->judul }}" required>
      </div>
      <div class="form-group">
        <label for="pengarang">Pengarang</label>
        <input type="text" class="form-control" id="pengarang" placeholder="Enter pengarang" name="pengarang" value="{{ $row->pengarang }}" required>
      </div>
      <div class="form-group">
        <label for="penerbit">penerbit</label>
        <input type="text" class="form-control" id="penerbit" placeholder="Enter penerbit" name="penerbit" value="{{ $row->penerbit }}" required>
      </div>
      <div class="form-group">
        <label for="thn_terbit">Tahun Terbit</label>
        <input type="number" class="form-control" id="thn_terbit" placeholder="Enter thn_terbit" name="thn_terbit" value="{{ $row->thn_terbit }}" required>
      </div>
      <div class="form-group">
        <label for="stok">Stok</label>
        <input type="number" class="form-control" id="stok" placeholder="Enter stok" name="stok" value="{{ $row->stok }}" required>
      </div>
      <div class="form-group">
        <label>Kategori Buku</label>
        <select class="form-control select2bs4" style="width: 100%;" name="id_ketegori" >
        <option selected="selected" value="{{ $row->id_ketegori }}" >{{ $row->kategori }}</option>
          @foreach($kategori as $row2)
          <option value="<?= $row2->id_kategori ?>"><?= $row2->kategori ?></option>
          @endforeach
        </select>
      </div>
      <div class="form-group">
        <label>Nama Rak Buku</label>
        <select class="form-control select2bs4" style="width: 100%;" name="id_rak">
        <option selected="selected" value="{{ $row->id_rak }}" >{{ $row->rak }}</option>
          @foreach($rak_buku as $row3)
            <option value="<?= $row3->id_rak ?>"><?= $row3->rak ?></option>
          @endforeach
        </select>
      </div>
      <div class="form-group">
        <label>Nomor Kolom Rak Buku</label>
        <select class="form-control select2bs4" style="width: 100%;" name="id_kolom">
        <option selected="selected" value="{{ $row->id_kolom }}" >{{ $row->kolom }}</option>
          @foreach($kolom_rak as $row4)
            <option value="<?= $row4->id_kolom ?>"><?= $row4->kolom ?></option>
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
        <form action="/buku/{{ $row->id_buku }}" method="POST">
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
      <th>ISBN</th>
      <th>Judul</th>
      <th>Pengarang</th>
      <th>Penerbit</th>
      <th>Tahun Terbit</th>
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
  <form role="form" action="{{ url('/buku/store') }}" method="POST">
  @method('patch')
  @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="ISBN">ISBN</label>
        <input type="number" class="form-control" id="ISBN" placeholder="Enter ISBN" name="ISBN"    required>
      </div>
      <div class="form-group">
        <label for="judul">Judul</label>
        <input type="text" class="form-control" onclick="return cek()" id="judul" placeholder="Enter judul" name="judul" required>
      </div>
      <div class="form-group">
        <label for="pengarang">Pengarang</label>
        <input type="text" class="form-control" id="pengarang" placeholder="Enter pengarang" name="pengarang" required>
      </div>
      <div class="form-group">
        <label for="penerbit">penerbit</label>
        <input type="text" class="form-control" id="penerbit" placeholder="Enter penerbit" name="penerbit"required>
      </div>
      <div class="form-group">
        <label for="thn_terbit">Tahun Terbit</label>
        <input type="number" class="form-control" id="thn_terbit" placeholder="Enter thn_terbit" name="thn_terbit" required>
        <input type="hidden" class="form-control" id="di_pinjam" placeholder="Enter di_pinjam" name="di_pinjam" value="0">
      </div>
      <div class="form-group">
        <label for="stok">Stok</label>
        <input type="number" class="form-control" id="stok" placeholder="Enter stok" name="stok">
      </div>
      <div class="form-group">
        <label>Kategori Buku</label>
        <select class="form-control select2bs4" style="width: 100%;" name="id_ketegori">
          @foreach($kategori as $row2)
          <option value="<?= $row2->id_kategori ?>"><?= $row2->kategori ?></option>
          @endforeach
        </select>
      </div>
      <div class="form-group">
        <label>Nama Rak Buku</label>
        <select class="form-control select2bs4" style="width: 100%;" name="id_rak">
          @foreach($rak_buku as $row3)
            <option value="<?= $row3->id_rak ?>"><?= $row3->rak ?></option>
          @endforeach
        </select>
      </div>
      <div class="form-group">
        <label>Nomor Kolom Rak Buku</label>
        <select class="form-control select2bs4" style="width: 100%;" name="id_kolom">
          @foreach($kolom_rak as $row4)
            <option value="<?= $row4->id_kolom ?>"><?= $row4->kolom ?></option>
          @endforeach
        </select>
      </div>
    </div>
    <!-- /.card-body -->
    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" >Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>
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
      <form action="/buku/import" method="POST" enctype="multipart/form-data">
        @csrf
        <input type="file" name="file" class="form-control">
        <br>
        <br>
        <button class="btn btn-success">Import to Database</button>
        <a  class="btn btn-success" href="{{ asset('assets/template/BooksTemplate.xlsx') }}" download>Template XLSX</a>
    </form>
      </div>
    </div>
  </div>
</div>
  <!-- endModalAdd -->
<script type = "text/javascript">
    
document.getElementById("ISBN").addEventListener("focusout", myFunction);

function myFunction() {
  var str = document.getElementById("ISBN").value;
  //var lengt = str.length;
  if(str.length > 4){
  	alert("lanjheng ghellu cok");
  }else if(str.length < 3){
  	alert("korang lanjheng cok");
  }
}
</script>
  <!-- endModalAdd -->
@endsection

