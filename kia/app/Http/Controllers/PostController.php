<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function create()
    {
        return view('post.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|min:3|max:255|unique:posts',
            'body' => 'required',
        ]);

        // Wpis jest w porządku, możemy go zapisać do bazy danych
    }
}
