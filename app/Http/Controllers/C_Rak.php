<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\rak_buku;

class C_Rak extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $rows = \App\rak_buku::all();
        return view('rak.rak',compact('rows'));
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
        $cekrak = $rows = rak_buku::where('rak','=',$request->rak)
                                ->first();
        if ($cekrak == null) {
            rak_buku::create($request->all());
            return redirect('/rak')->with('Pesan','Data Berhasil Tambah data');
        }else{
            return redirect('/rak')->with('Hapus','Data sudah ada di database Silahkan cek Nama Rak Buku');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,rak_buku $rak)
    {
        //
        \App\rak_buku::where('id_rak', $rak->id_rak)
            ->update([
                'rak'=> $request->rak,
            ]);
        // dd($request->id_rak);
        return redirect('/rak')->with('Update','Data Berhasil di Edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(rak_buku $rak)
    {
        $cekrak = $rows = \App\buku::where('id_rak','=',$rak->id_rak)
                                ->first();
        if ($cekrak == null) {
            rak_buku::destroy($rak->id_rak);
            return redirect('/rak')->with('Hapus','Data Berhasil di Hapus');
        }else{
            return redirect('/rak')->with('Update','Mohon Maaf data rak ini memiliki record data di peminjaman buku hubungi admin untuk mengkoordinasikan penghapusan');
        }
    }
}
