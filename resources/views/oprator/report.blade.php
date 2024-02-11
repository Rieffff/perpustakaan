<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<table class="table table-bordered table-striped" width="100%">
    <thead>
    <tr>
      <th>No</th>
      <th>Nama Siswa</th>
      <th>ISBN</th>
      <th>Judul Buku</th>
      <th>Tanggal Dipinjam</th>
      <th>Tanggal Dikembalikan</th>
      <th>denda</th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($result as $row):
    <tr>

      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->nama_siswa }}</td>
      <td>{{ $row->ISBN }}</td>
      <td>{{ $row->judul }}</td>
      <td>{{ $row->date }} s/d {{ $row->batas_peminjaman }}</td>
      <td>{{ $row->tanggal_dikembalikan }}</td>
      <td >Rp.{{ $row->denda }}</td>
    </tr>
    @endforeach
    </tbody>
        
      </table>
  </table>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>