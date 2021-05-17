<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\wersja;

class DodajWersjeController extends Controller
{
    function save(Request $req)
    {
        //print_r($req->input());
        $wersja = new wersja;
        $wersja->nazwaKolor= $req->nazwaWersja;
        echo $wersja->save();
    }
}

