<?php

namespace App\Http\Controllers;

use App\pengembalian;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use DateTime;

class C_Pengembalian extends Controller
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
        foreach ($result as $row) {
            # code...
            $cek = DB::table('peminjaman')
            ->join('buku','buku.id_buku','=','peminjaman.id_buku')
            ->join('siswa','siswa.id_siswa','=','peminjaman.id_siswa')
            ->join('kategori_buku', 'buku.id_ketegori', '=', 'kategori_buku.id_kategori')
            ->join('deadline', 'kategori_buku.id_dealine', '=', 'deadline.id_deadline')
            ->where('peminjaman.status','=','Belum di kembalikan')
            ->where('peminjaman.id_siswa','=',$row->id_siswa)
            ->get();
            $numRows[$row->id_siswa] = $cek->count();
        }
        return view("oprator.pengembalian1",compact("result","numRows"));


    }
    public function kembalikan(Request $request){
       foreach ($request->id as $id_peminjaman) {
           # code...
           
           $cek = DB::table('peminjaman')
                    ->where('id_peminjaman','=',$id_peminjaman)
                    ->first();
                    $tanggal1 = new DateTime($cek->batas_peminjaman);
                    $tanggal2 = new DateTime();
                    if ($tanggal2 > $tanggal1) {
                        $perbedaan = $tanggal2->diff($tanggal1);
                        $formatTGL = $perbedaan->format("%a");
                        $denda = $formatTGL * 500;
                    }else{
                        $denda = 0;
                    }
            $id = DB::table('pengembalian')
            ->insertGetId([
                'tanggal_dikembalikan' => NOW(),
                'id_peminjaman' => $id_peminjaman,
                'denda' => $denda
            ]);
            if($id > 0){
                $updatePeminjaman = DB::table('peminjaman')
                                        ->where('id_peminjaman','=',$id_peminjaman)
                                        ->update(['status'=>'Di kembalikan']);
                if($updatePeminjaman){
                    $selectBuku = DB::table('buku')
                                        ->where('id_buku','=',$cek->id_buku)
                                        ->first();
                    $lastStok = $selectBuku->stok;
                    $newStok = $lastStok + 1;
                    $updateBuku = DB::table('buku')
                                    ->where('id_buku','=',$cek->id_buku)
                                    ->update(['stok'=>$newStok]);
                    
                    
                    
                }
            }
     
       }
       return redirect('/pengembalian')->with('berhasil_kembalikan','Berhasil mengembalikan buku');

    }
    public function kembalikan86(Request $request){
        $id = DB::table('pengembalian')
                ->insertGetId([
                    'tanggal_dikembalikan' => NOW(),
                    'id_peminjaman' => $request->id_peminjaman,
                    'denda' => $request->denda
                ]);
        if($id > 0){
            $updatePeminjaman = DB::table('peminjaman')
                                    ->where('id_peminjaman','=',$request->id_peminjaman)
                                    ->update(['status'=>'Di kembalikan']);
            if($updatePeminjaman){
                $selectBuku = DB::table('buku')
                                    ->where('id_buku','=',$request->id_buku)
                                    ->first();
                $lastStok = $selectBuku->stok;
                $newStok = $lastStok + 1;
                $updateBuku = DB::table('buku')
                                ->where('id_buku','=',$request->id_buku)
                                ->update(['stok'=>$newStok]);
                if ($updateBuku) {
                    return redirect('/pengembalian')->with('berhasil_kembalikan','Berhasil mengembalikan buku');
                }
            }
        }
    }
    public function pengembalian(Request $request)
    {
        //
        
        $cek = DB::table('peminjaman')
        ->where('id_siswa','=',$request->id_siswa)
        ->first();
        $result = DB::table('peminjaman')
                ->join('buku','buku.id_buku','=','peminjaman.id_buku')
                ->join('siswa','siswa.id_siswa','=','peminjaman.id_siswa')
                ->join('kategori_buku', 'buku.id_ketegori', '=', 'kategori_buku.id_kategori')
                ->join('deadline', 'kategori_buku.id_dealine', '=', 'deadline.id_deadline')
                ->where('peminjaman.status','=','Belum di kembalikan')
                ->where('peminjaman.id_siswa','=',$request->id_siswa)
                ->get();
            foreach($result as $row){
                $tanggal1 = new DateTime($row->batas_peminjaman);
                $tanggal2 = new DateTime();
                if ($tanggal2 > $tanggal1) {
                    $perbedaan = $tanggal2->diff($tanggal1);
                    $formatTGL = $perbedaan->format("%a");
                    $denda[$row->id_peminjaman] = $formatTGL * 500;
                }else{
                    $denda[$row->id_peminjaman] = 0;
                }
            }
            if($cek === null){
                $denda = 0;
            }
        
        
        

        //dd($denda);
        return view('oprator.pengembalian',compact('result','denda'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
     * @param  \App\pengembalian  $pengembalian
     * @return \Illuminate\Http\Response
     */
    public function show(pengembalian $pengembalian)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\pengembalian  $pengembalian
     * @return \Illuminate\Http\Response
     */
    public function edit(pengembalian $pengembalian)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\pengembalian  $pengembalian
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, pengembalian $pengembalian)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\pengembalian  $pengembalian
     * @return \Illuminate\Http\Response
     */
    public function destroy(pengembalian $pengembalian)
    {
        //
    }
}

