<?php

namespace App\Imports;

use App\M_Kategori;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class KategoriImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new M_Kategori([
            'id_ketegori'     => $row['id_kategori'],
            'kategori'    => $row['kategori'], 
            'id_deadline'     => $row['id_deadline'],
        ]);
        // dd($row);
    }
}
