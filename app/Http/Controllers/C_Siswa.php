<?php

namespace App\Http\Controllers;

use App\siswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class C_Siswa extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $rows = DB::table('siswa')
            ->join('kelas', 'siswa.id_kelas', '=', 'kelas.id_kelas')
            ->select('siswa.*', 'kelas.kelas')
            ->get();
        $kelas = \App\kelas::all();
        return view('siswa.siswa',compact('rows','kelas'));
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
        
        siswa::create($request->all());
        
        return redirect('/siswa')->with('Pesan','Data Berhasil Tambah data');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\siswa  $siswa
     * @return \Illuminate\Http\Response
     */
    public function show(siswa $siswa)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\siswa  $siswa
     * @return \Illuminate\Http\Response
     */
    public function edit(siswa $siswa)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\siswa  $siswa
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, siswa $siswa)
    {
        //
        siswa::where('id_siswa', $siswa->id_siswa)
            ->update([
                'nis'=> $request->nis,
                'nama_siswa'=> $request->nama_siswa,
                'jenis_kelamin'=> $request->jenis_kelamin,
                'id_kelas'=> $request->id_kelas
            ]);
        return redirect('/siswa')->with('Update','Data Berhasil di Edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\siswa  $siswa
     * @return \Illuminate\Http\Response
     */
    public function destroy(siswa $siswa)
    {
        //
        $cek = \App\peminjaman::where('id_siswa', $siswa->id_siswa)->count();
        if ($cek > 0) {
            return redirect('/siswa')->with('Hapus','!! Data tidak bisa  di Hapus karena sudah melakukan peminjaman');
        }else{
            
            siswa::destroy($siswa->id_siswa);
            return redirect('/siswa')->with('Pesan','Data Berhasil di Hapus');
        }
        
    }
}
