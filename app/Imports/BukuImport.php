<?php

namespace App\Imports;

use App\buku;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Http\Request;

class BukuImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        $cekbuku = $baris = buku::where('ISBN','=',$row['isbn'])
                                ->where('ISBN', '!=', 0)
                                ->orWhere('judul','=',$row['judul'])
                                ->first();
        if ($cekbuku == null) {
            return new buku([
                'ISBN' => $row['isbn'],
                'judul' => $row['judul'],
                'pengarang' => $row['pengarang'],
                'penerbit' => $row['penerbit'],
                'thn_terbit' => $row['tahun_terbit'],
                'stok' => $row['stok'],
                'di_pinjam' => '0',
                'id_ketegori'=> $row['id_kategori'],
                'id_rak'=> $row['id_rak'],
                'id_kolom' => $row['kolom_rak'],
            ]);
        }else{
            $db = buku::where('judul', $row['judul'])->first();
            $dbstok = $db->stok;
            $importStok =  $row['stok'] ;
            $newstok = $dbstok + $importStok;
            buku::where('judul', $row['judul'])
            ->update([
                'stok'=> $newstok                                                                                                                                                                                               ,
            ]);
            return;
            //dd($row['stok']);
        }
        // dd($row);
        
        
    }
}
