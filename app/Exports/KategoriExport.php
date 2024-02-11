<?php

namespace App\Exports;

use App\M_Kategori;
use Maatwebsite\Excel\Concerns\FromCollection;

class KategoriExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return M_Kategori::all();
    }
}
