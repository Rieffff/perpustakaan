<?php

namespace App\Http\Controllers;
use App\bukuTamu;
use App\kelas;
use App\Blog;

use App\Http\Requests\StoreBlogRequest;
use App\Http\Requests\UpdateBlogRequest;
use Illuminate\Http\Request;

class bukuTamuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    protected $BlogController;
    public function __construct(BlogController $BlogController)
    {
        $this->BlogController = $BlogController;
    }
    public function index()
    {
        //
        
        return view("buku_tamu.bukuTamu",[
            "title" => "Buku Tamu",
            "get4" => bukuTamu::all(),
            "kelas" => kelas::all(),
            "getBlog" => $this->BlogController->sidebar()

        ]);
    }
    public function isi()
    {
        //
        return view("buku_tamu.isiBukuTamu",[
            "title" => "Buku Tamu",
            "kelas" => kelas::all(),
            "getBlog" => $this->BlogController->sidebar()

        ]);
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
        // echo $request->id_kelas;
        // echo "guru";
        // echo $request->guru;
          bukuTamu::create($request->all());
          return redirect('/buku_tamu')->with('Pesan','Data Berhasil Tambah data');
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
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
