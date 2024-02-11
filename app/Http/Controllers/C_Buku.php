<?php

namespace App\Http\Controllers;

use App\buku;
use App\peminjaman;
use App\Exports\BukuExport;
use App\Imports\BukuImport;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\DB;

class C_Buku extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $buku = DB::table('buku')
                    ->join('kategori_buku','buku.id_ketegori','=','kategori_buku.id_kategori')
                    ->leftJoin('rak_buku','buku.id_rak','=','rak_buku.id_rak')
                    ->leftJoin('kolom_rak','buku.id_kolom','=','kolom_rak.id_kolom')
                    ->get();
        $rak_buku = DB::table('rak_buku')->get();
        $kolom_rak = DB::table('kolom_rak')->get();
        $kategori = \App\M_Kategori::all();
        return view('V_buku.buku',compact('kategori','buku','rak_buku','kolom_rak') );
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
        $cekbuku = $rows = buku::where('ISBN','=',$request->ISBN)
                                ->orWhere('judul','=',$request->judul)
                                ->first();
        if ($cekbuku == null) {
            buku::create($request->all());
            return redirect('/buku')->with('Pesan','Data Berhasil Tambah data');
        }else{
            return redirect('/buku')->with('Hapus','Data sudah ada di database Silahkan cek ISBN dan Judul');
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\buku  $buku
     * @return \Illuminate\Http\Response
     */
    public function show(buku $buku)
    {

        foreach ($buku as $book ){
            $id_kategori = $buku->id_kategori;
            echo $id_kategori;
        }
        die;
        $kategori = \App\M_Kategori::all();
        $kategori2 = \App\M_Kategori::all();

        return view('V_buku.edit',compact('kategori','buku') );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\buku  $buku
     * @return \Illuminate\Http\Response
     */
    public function edit(buku $buku)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\buku  $buku
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, buku $buku)
    {

            buku::where('id_buku', $buku->id_buku)
            ->update([
                'ISBN'=> $request->ISBN,
                'judul'=> $request->judul,
                'pengarang'=> $request->pengarang,
                'penerbit'=> $request->penerbit,
                'thn_terbit'=> $request->thn_terbit,
                'stok'=> $request->stok,
                'id_ketegori'=> $request->id_ketegori,
                'id_kolom'=> $request->id_kolom,
                'id_rak'=> $request->id_rak
            ]);

        return redirect('/buku')->with('Update','Data Berhasil di Edit');
 
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\buku  $buku
     * @return \Illuminate\Http\Response
     */
    public function destroy(buku $buku)
    {
       
        $cekbuku = $rows = \App\peminjaman::where('id_buku','=',$buku->id_buku)
                                ->first();
        if ($cekbuku == null) {
            buku::destroy($buku->id_buku);
            return redirect('/buku')->with('Hapus','Data Berhasil di Hapus');
        }else{
            return redirect('/buku')->with('Update','Mohon Maaf data buku ini memiliki record data di peminjaman buku hubungi admin untuk mengkoordinasikan penghapusan');
        }
       
    }
    public function export(Request $request) 
    {
        return Excel::download(new BukuExport, 'Buku.xlsx');
    }
   
    /**
    * @return \Illuminate\Support\Collection
    */
    public function import(Request $request) 
    {
        Excel::import(new BukuImport,request()->file('file'));
           
        return redirect('/buku')->with('Pesan','Data Berhasil Import data');
    }
}
