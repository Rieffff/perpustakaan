@extends('layout/main3')

<!-- Modal -->

<!-- Endmodal -->

@section('title','Buku')

@section('container')
	<!-- Services section -->
	<section class="service-section spad">
		<div class="container services">
			<div class="section-title text-center">
				<h3>Riwayat Peminjaman Buku</h3>
				
				<table id="example1" class="table table-bordered table-striped" width="100%">
    <thead>
    <tr>
      <th>No</th>
      <th>ISBN</th>
      <th>Judul/Tahun Terbit</th>
      <th>Pengarang/Penerbit</th>
      <th>Nama Member</th>
      <th>Tanggal dipinjam / dikembalikan</th>
    </tr>
    </thead>
    <tbody>
    	@foreach($get4 as $row)
    	<tr>
    	<td>{{ $loop->iteration }}</td>
    	<td>{{ $row->ISBN }}</td>
    	<td>{{ $row->judul }} / {{ $row->thn_terbit }}</td>
    	<td>{{ $row->pengarang }} / {{ $row->penerbit }}</td>
    	<td>{{ $row->nama_siswa }} ({{ $row->nis }})</td>
    	<td>{{ $row->date }} - {{ $row->tanggal_dikembalikan }}</td>
    	</tr>
    	@endforeach
    </tbody>
    </table>
    <button class="btn btn-info" onclick="window.history.back()" style="float: right;">back</button>
			</div>
		</div>
	</section>
	<!-- Services section end -->


	<!-- Fact section -->
	<section class="fact-section spad set-bg" data-setbg="{{ asset('assets/unica/img/fact-bg.jpg') }}">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-4 fact">
					<div class="fact-icon">
						<i class="ti-book"></i>
					</div>
					<div class="fact-text">
						<br>
						<h2>{{ $countBuku }} BUKU</h2>
						<p>BUKU</p>
					</div>
				</div>
				<div class="col-sm-6 col-lg-4 fact">
					<div class="fact-icon">
						<i class="ti-user"></i>
					</div>
					<div class="fact-text">
					<br>
						<h2>{{ $countSiswa }} ORANG</h2>
						<p>MEMBER</p>
					</div>
				</div>
				<div class="col-sm-6 col-lg-4 fact">
					<div class="fact-icon">
						<i class="ti-pencil-alt"></i>
					</div>
					<div class="fact-text">
					<br>
						<h2>{{ $countT }} KALI</h2>
						<p>PEMINJAMAN</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Fact section end-->


	<!-- Newsletter section end -->	
	@endsection
