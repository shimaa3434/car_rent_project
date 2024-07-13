<?php

namespace App\Http\Controllers;

use App\Models\Car;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class CarController extends Controller
{
    public function index()
    {
        $items = Car::get();
        return view("admin.cars", compact('items'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $items = Category::get();
        return view('admin.addCar', compact('items'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {


        $item = new Car();
        $item->title = $request->title;
        $item->content = $request->content;
        $item->luggage = $request->luggage;
        $item->door = $request->door;
        $item->passengers = $request->passengers;
        $item->price = $request->price;
        if($request->active == "checked"){
            $item->active = "yes";
        }else{
            $item->active = "no";
        }
        if ($request->hasFile('image')) {
            $imageName = time().'.'.$request->image->extension();
            $request->image->move(public_path('images'), $imageName);
            $item->image = $imageName;
        }
        $item->category_id = $request->category;
        $item->user_id = Auth::user()->id;

        $item->save();
        return redirect("/all_cars");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $car = Car::findOrFail($id);
        return view('car.show', compact('car'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $item = Car::findOrFail($id);
        $categorys = Category::get();
        return view('admin.editCar', compact('item', "categorys"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {


        $item = Car::findOrFail($id);
        $item->title = $request->title;
        $item->content = $request->content;
        $item->luggage = $request->luggage;
        $item->door = $request->door;
        $item->passengers = $request->passengers;
        $item->price = $request->price;
        if($request->active == "checked"){
            $item->active = "yes";
        }else{
            $item->active = "no";
        }
        if ($request->hasFile('image')) {
            $imageName = time().'.'.$request->image->extension();
            $request->image->move(public_path('images'), $imageName);
            $item->image = $imageName;
        }
        $item->category_id = $request->category;
        $item->user_id = Auth::user()->id;

        $item->save();
        return redirect("/all_cars");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        $id = $request->id;
        Car::where('id', $id)->delete();
        return redirect("/all_cars");
    }

}
