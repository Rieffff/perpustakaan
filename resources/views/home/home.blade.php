@extends('layout/main3')


<!-- Modal -->

<!-- Endmodal -->
@section('container')
@include('layout/slider')
	<!-- Services section -->
	<section class="service-section spad">
		<div class="container services">
			<div class="section-title text-center">
				<h3>Cari Buku</h3>
				<table id="example1" class="table table-bordered table-striped" width="100%">
    <thead>
    <tr>
      <th>No</th>
      <th>ISBN</th>
      <th>Judul/Tahun Terbit</th>
      <th>Pengarang/Penerbit</th>
      <th>Stok Buku</th>
      <th>Tempat Buku</th>
    </tr>
    </thead>
    <tbody>
    	@foreach($get4 as $row)
    	<tr>
    	<td>{{ $loop->iteration }}</td>
    	<td>{{ $row->ISBN }}</td>
    	<td>{{ $row->judul }} / {{ $row->thn_terbit }}</td>
    	<td>{{ $row->pengarang }} / {{ $row->penerbit }}</td>
    	<td>{{ $row->stok }}</td>
    	<td>Rak {{ $row->rak }} - kolom {{ $row->kolom }}</td>
    	</tr>
    	@endforeach
    </tbody>
    </table>
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


	<!-- Newsletter section -->
	<section class="newsletter-section">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-lg-7">
					<div class="section-title mb-md-0">
					<h3>RIWAYAT PINJAMAN</h3>
					<p>Ketikan NIS untuk mencari riwayat peminjaman buku</p>
				</div>
				</div>
				<div class="col-md-7 col-lg-5">
					<form class="newsletter" action="/cariRiwayat" method="POST">
						@csrf
						@method('patch')
						<input type="text" name="nis" placeholder="Enter your NIS">
						<button class="site-btn" type="submit">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Newsletter section end -->	
	@endsection
