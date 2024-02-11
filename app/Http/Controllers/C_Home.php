<?php

namespace App\Http\Controllers;
use App\User;
use App\Detail_login;

use App\buku;
use App\rak_buku;
use App\kolom_rak;
use App\M_Kategori;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use DateTime;

class C_Home extends Controller
{
    public function login(){
        if (isset(Auth::user()->role)) {
            return redirect("/index");
        }else{
            return view('login');
        }
        
 
    }
    public function proseslogin(Request $request){

       
        if (Auth::attempt(["email" => $request->email, "password" => $request->password])) {
            $dateTime = new dateTime();
            $format = $dateTime->format('Y-m-d H-i-s');
            $sesUser = auth()->user()->id;

            DB::table('detail_login')->insert([
                'keterangan' => $format,
                'created_at' => $format,
                'id' => $sesUser
                ]);
            return redirect("/index");    
        }
        return redirect("/")->with("Pesan","Maaf username atau password salah");
     
        
 
    }
    public function index(){
        $title = "home";
        $get1 = DB::table('buku')->get();
        $countBuku = $get1->count();
        $get2 = DB::table('siswa')->get();
        $countSiswa = $get2->count();
        $get3 = DB::table('peminjaman')
                ->join('pengembalian', 'peminjaman.id_peminjaman','=','pengembalian.id_peminjaman')
                ->get();
        $countT = $get3->count();
        $date1  = new DateTime();
        $formatDate = $date1->format('Y-m-d');
        $bulan = 1;
        $bulan = new DateTime();
        $Tgl = $bulan->format('Y-m');
        $newtgl = $Tgl.'-1';
        $dateTgl = strtotime($newtgl);
        $FdateTgl = date('Y-m-d', $dateTgl);
        $get4 = DB::table('peminjaman')
                ->join('pengembalian', 'peminjaman.id_peminjaman','=','pengembalian.id_peminjaman')
                ->whereBetween('peminjaman.date',[$FdateTgl, $date1])
                ->sum('denda');
        
        return view('index',compact('countBuku','countSiswa','countT','get4','title'));
 
    }
    public function operator(){
        

        return view('oprator.oprator');
 
    }
    public function pageHome(){
        $title = "Home";
        $get1 = DB::table('buku')->get();
        $countBuku = $get1->count();
        $get2 = DB::table('siswa')->get();
        $countSiswa = $get2->count();
        $get3 = DB::table('peminjaman')
                ->join('pengembalian', 'peminjaman.id_peminjaman','=','pengembalian.id_peminjaman')
                ->get();
        $countT = $get3->count();
        $get4 = DB::table('buku')
                ->join('kategori_buku', 'buku.id_ketegori','=','kategori_buku.id_kategori')
                ->leftJoin('rak_buku','buku.id_rak','=','rak_buku.id_rak')
                ->leftJoin('kolom_rak','buku.id_kolom','=','kolom_rak.id_kolom')
                ->get();
        return view('home.home',compact('countBuku','countSiswa','countT','get4','title'));

        //return view('layout.main3');
 
    }public function cariRiwayat(Request $request){
        if (empty($request->nis)) {
            # code...
            return redirect('/');
        }
        $title = "Home";
        $get1 = DB::table('buku')->get();
        $countBuku = $get1->count();
        $get2 = DB::table('siswa')->get();
        $countSiswa = $get2->count();
        $get3 = DB::table('peminjaman')
                ->join('pengembalian', 'peminjaman.id_peminjaman','=','pengembalian.id_peminjaman')
                ->get();
        $countT = $get3->count();

        $like = '%'.$request->nis.'%';
        $get4 = DB::table('peminjaman')
        ->leftJoin('pengembalian', 'peminjaman.id_peminjaman','=','pengembalian.id_peminjaman')
        ->join('buku','peminjaman.id_buku','=','buku.id_buku')
        ->join('siswa','peminjaman.id_siswa','=','siswa.id_siswa')
        ->where('siswa.nis','like', $like)
        ->orWhere('siswa.nama_siswa','like', $like)
        ->get();


        return view('home.home2',compact('countBuku','countSiswa','countT','get4','title'));

        //return view('layout.main3');
 
    }
    // public function keluar(Request $request){

    //     //dd($request);
    //     $request->session()->flush();
    //     Auth::logout();
    //     return redirect("/")->with("Logut","berhasil Logut");
    // }
    
    public function out(){
        //dd($request);
        //$request->session()->flush();
        $sesUser = auth()->user()->id;
        $select = DB::table('detail_login')
                    ->where('id','=',$sesUser)
                    ->orderBy('id_detail_login','DESC')
                    ->first();

        $id_login = $select->id_detail_login;
        detail_login::where('id_detail_login', $id_login)
            ->update([
                
                'keterangan'=> NOW()
            ]);
        Auth::logout();
        return redirect("/sign")->with("Logut","berhasil Logut");
    }
    public function blog(){
        $title = "Blog";
        // $get4 = DB::table('blog')->get();

        $get4 = DB::table('blog')->paginate(1);
        
        return view('blog.rowblog',compact('get4','title'));
 
    }

}

