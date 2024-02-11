
@extends('layout/main')

<!-- Modal -->

<!-- Endmodal -->

@section('title','User')

@section('container')
<!-- /.card-header -->
<div class="card-body">


  <table id="example1" class="table table-bordered table-striped" width="100%">
    <thead>
    <tr>
      <th>No</th>
      <th>Email</th>
      <th>Nama</th>
      <th>login</th>
      <th>logout</th>
      <th>akhir Session</th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($rows as $row)
    <tr>

      <td scope="row">{{ $loop->iteration }}</td>
      <td>{{ $row->email }}</td>
      <td>{{ $row->name }}</td>
      <td>{{ $row->created_at }}</td>
      <td>{{ $row->updated_at }}</td>
      <td>{{ $row->keterangan }}</td>
    </tr>
    @endforeach
    </tbody>
    <tfoot>
    <tr>
      <th>No</th>
      <th>Email</th>
      <th>Nama</th>
      <th>login</th>
      <th>logout</th>
      <th>akhir Session</th>
    </tr>
    </tfoot>
  </table>
  
</div>

@endsection

