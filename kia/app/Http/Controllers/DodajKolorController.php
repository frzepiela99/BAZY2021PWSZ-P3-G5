<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\kolor;

class DodajKolorController extends Controller
{
    function save(Request $req)
    {
        //print_r($req->input());
        $kolor = new kolor;
        $kolor->nazwaKolor= $req->nazwaKolor;
        $kolor->cenaKolor= $req->cenaKolor;
        echo $kolor->save();
    }
}
