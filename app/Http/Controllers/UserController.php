<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $items = User::get();
        return view("admin.users", compact('items'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.addUser');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->all();
        if($request->active == "checked"){
            $data['active'] = 1;
        }else{
            $data['active'] = 0;
        }
        User::create($data);
        return redirect("/dashboard");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $item = User::findOrFail($id);
        return view('admin.edituser', compact("item"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        User::where('id', $id)->update([
            'name'=> $request->name,
            'username'=> $request->username,
            'email'=> $request->email,
            'active'=> $request->active,
            'password'=> $request->password,
        ]);
        return redirect("/dashboard");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
