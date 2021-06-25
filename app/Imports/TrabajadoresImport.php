<?php

namespace App\Imports;

use App\Importador;
use Maatwebsite\Excel\Concerns\ToModel;

class TrabajadoresImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        // return new Importador([ 
        //      'numero'     => $row[0],
        //     'persona'    => $row[1],  
        //     'direccion'    => $row[2],  
        //     'celular'    => $row[3],  
        //     //
        // ]);
         return SalesOrder::all();
    }
}
