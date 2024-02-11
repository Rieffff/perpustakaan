<?php

namespace App\Http\Controllers;

use App\peminjaman;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use DateTime;
class C_Peminjaman extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       
        $result = DB::table('siswa')
                 ->join('kelas', 'siswa.id_kelas', '=', 'kelas.id_kelas')
                 ->get();
        return view("oprator.oprator",compact("result"));


    }
    public function index2(Request $request)
    {
        
        $id_siswa = $request->id_siswa;
        $result = DB::table('buku')
                 ->join('kategori_buku', 'buku.id_ketegori', '=', 'kategori_buku.id_kategori')
                 ->join('deadline', 'kategori_buku.id_dealine', '=', 'deadline.id_deadline')
                 ->where('buku.stok','>','0')
                 ->get();
        return view("oprator.pilihbuku",compact("result","id_siswa"));


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        
        foreach ($request->id as $id_buku ) {
            $cekPeminjaman = DB::table('buku')
            ->join('peminjaman','buku.id_buku', '=', 'peminjaman.id_buku')
            ->where('peminjaman.id_buku','=',$id_buku)
            ->where('peminjaman.id_siswa','=',$request->id_siswa)
            ->where('peminjaman.status','=','Belum di kembalikan')
            ->count();

            if ($cekPeminjaman == 0) {
            $getDate = DB::table('buku')
            ->join('kategori_buku', 'buku.id_ketegori', '=', 'kategori_buku.id_kategori')
            ->join('deadline', 'kategori_buku.id_dealine', '=', 'deadline.id_deadline')
            ->select('deadline.*')
            ->where('buku.id_buku','=',$id_buku)
            ->first();
            $hari = $getDate->hari;
            $bulan = $getDate->bulan;
            $tahun = $getDate->tahun;

            //dd($getDate);
            $dateTime1 = new DateTime();
            $formatDate = $dateTime1->format('Y-m-d');
            $datebaru = date('Y-m-d', strtotime('+'.$hari.' days', strtotime($formatDate))); 
            $datebaru = date('Y-m-d', strtotime('+'.$bulan.' month', strtotime( $datebaru )));
            $datebaru = date('Y-m-d', strtotime('+'.$tahun.' year', strtotime( $datebaru))); 
            $id = Auth::user()->id;
            $id = DB::table('peminjaman')
            ->insertGetId([
                'id_buku' => $id_buku,
                'id_siswa' => $request->id_siswa,
                'date' => $formatDate,
                'status' => 'Belum di kembalikan',
                'batas_peminjaman' => $datebaru,
                'id' => $id
            ]);

            if ($id > 0) {
            $getBuku = DB::table('buku')
                        ->where('id_buku','=',$id_buku)
                        ->first();
            $stok = $getBuku->stok;
            $newStok = $stok-1;
            $update = DB::table('buku')
                    ->where('id_buku','=',$id_buku)
                    ->update(['stok' => $newStok]);
            }

            }else{    
            echo "<script>alert('Mohon maaf terjadi kesalahan karena duplikasi data')</script>";
            return redirect("/peminjaman")->with('gagal_pinjam','Gagal meminjam buku karena siswa tersebut masih meminjam buku yang sama');
            } 
            
        }
        
        return redirect("/peminjaman")->with('berhasil_pinjam','Berhasil meminjam buku');
        
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\peminjaman  $peminjaman
     * @return \Illuminate\Http\Response
     */
    public function show(peminjaman $peminjaman)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\peminjaman  $peminjaman
     * @return \Illuminate\Http\Response
     */
    public function edit(peminjaman $peminjaman)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\peminjaman  $peminjaman
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, peminjaman $peminjaman)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\peminjaman  $peminjaman
     * @return \Illuminate\Http\Response
     */
    public function destroy(peminjaman $peminjaman)
    {
        //
    }
}
