<?php

namespace App\Http\Controllers;

use App\buku;
use App\M_Kategori;
use Illuminate\Http\Request;
use App\Exports\KategoriExport;
use App\Imports\KategoriImport;
use Maatwebsite\Excel\Facades\Excel;

class C_Kategori extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $rows = \App\M_Kategori::all();
        return view('kategori.kategori',compact('rows'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        
            M_Kategori::create($request->all());
        
            return redirect('/kategori')->with('Pesan','Data Berhasil Tambah data');
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\M_Kategori  $m_Kategori
     * @return \Illuminate\Http\Response
     */
    public function show(M_Kategori $m_Kategori)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\M_Kategori  $m_Kategori
     * @return \Illuminate\Http\Response
     */
    public function edit(M_Kategori $m_Kategori)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\M_Kategori  $m_Kategori
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, M_Kategori $m_Kategori)
    {
        //
        M_Kategori::where('id_kategori', $m_Kategori->id_kategori)
            ->update([
                'kategori'=> $request->kategori,
                'id_dealine'=> $request->id_dealine
            ]);

        return redirect('/kategori')->with('Update','Data Berhasil di Edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\M_Kategori  $m_Kategori
     * @return \Illuminate\Http\Response
     */
    public function destroy(M_Kategori $m_Kategori)
    {
        //
        //return $m_Kategori;
        $cekbuku  = $row = \App\buku::where('id_ketegori','=',$m_Kategori->id_kategori)
                                ->first();
        if ($cekbuku == null) {
            // var_dump($cekbuku);
            // var_dump($m_Kategori->id_kategori);
            M_Kategori::destroy($m_Kategori->id_kategori);
            return redirect('/kategori')->with('Hapus','Data Berhasil di Hapus');
        }else{
            return redirect('/kategori')->with('Update','Maaf tidak Bisa di hapus Data terhubung dengan Data Buku ');
        }
        // dd($m_Kategori);
        
    }
    public function export(Request $request) 
    {
        return Excel::download(new KategoriExport, 'kategori.xlsx');
    }
   
    /**
    * @return \Illuminate\Support\Collection
    */
    public function import(Request $request) 
    {
        Excel::import(new KategoriImport,request()->file('file'));
           
        return redirect('/kategori')->with('Pesan','Data Berhasil Import data');
    }
    
}
