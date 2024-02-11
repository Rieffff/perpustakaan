<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use DateTime;
use PDF;

class data extends Controller
{
    //
    public function index(){
        $result = DB::table('siswa')
                    ->join('kelas','siswa.id_kelas','=','kelas.id_kelas')
                    ->get();
                    
        return view('oprator.data2',compact('result'));
    }
    public function index2($siswa){
        $result = DB::table('pengembalian')
                    ->join('peminjaman','pengembalian.id_peminjaman','=','peminjaman.id_peminjaman')
                    ->join('siswa','peminjaman.id_siswa','=','siswa.id_siswa')
                    ->join('buku','peminjaman.id_buku','=','buku.id_buku')
                    ->where('siswa.id_siswa','=',$siswa)
                    ->get();

        $id_siswa = $siswa;
        return view('oprator.data',compact('result','id_siswa'));
        //dd($siswa);
    }
    public function cetak(Request $request){
        $result = DB::table('pengembalian')
        ->join('peminjaman','pengembalian.id_peminjaman','=','peminjaman.id_peminjaman')
        ->join('siswa','peminjaman.id_siswa','=','siswa.id_siswa')
        ->join('buku','peminjaman.id_buku','=','buku.id_buku')
        ->whereBetween('peminjaman.date',[$request->date1, $request->date2])
        ->get();
        // $pdf = PDF::loadView('oprator.report');
        // return $pdf->download('report.pdf');
        //$pdf->loadhtml($this->get_html($result));
        $date = new dateTime();
        $tgl = $date->format('d-m-Y');
        $name = 'laporan-'.$tgl;
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadView('oprator.report',compact('result'))->setPaper('legal','landscape');
        return $pdf->stream($name);
        
    }
    public function cetak2(Request $request){
        $result = DB::table('pengembalian')
        ->join('peminjaman','pengembalian.id_peminjaman','=','peminjaman.id_peminjaman')
        ->join('siswa','peminjaman.id_siswa','=','siswa.id_siswa')
        ->join('buku','peminjaman.id_buku','=','buku.id_buku')
        ->where('siswa.id_siswa','=',$request->id_siswa)
        ->whereBetween('peminjaman.date',[$request->date1, $request->date2])
        ->get();
        // $pdf = PDF::loadView('oprator.report');
        // return $pdf->download('report.pdf');
        //$pdf->loadhtml($this->get_html($result));
        $date = new dateTime();
        $tgl = $date->format('d-m-Y');
        $name = 'laporan-'.$tgl;
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadView('oprator.report',compact('result'))->setPaper('legal','landscape');
        return $pdf->stream($name);
        
    }
}
