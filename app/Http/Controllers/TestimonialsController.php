<?php

namespace App\Http\Controllers;

use App\Models\Testimonials;
use Illuminate\Http\Request;

class TestimonialsController extends Controller
{
    public function index()
    {
        $items = Testimonials::get();
        return view("admin.testimonials", compact('items'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.addTestimonials');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     'name' => 'required|max:255',
        //     'position' => 'required|max:255',
        //     'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        //     'content' => 'required',
        //     'published' => "nullable",
        // ]);
        $item = new Testimonials();
        $item->name = $request->name;
        $item->position = $request->position;

        if ($request->hasFile('image')) {
            $imageName = time().'.'.$request->image->extension();
            $request->image->move(public_path('images'), $imageName);
            $item->image = $imageName;
        }
        if($request->published == "checked"){
            $item->published = 1;
        }else{
            $item->published = 0;
        }
        $item->content = $request->content;

        $item->save();
        return redirect("/all_testimoials");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $item = Testimonials::findOrFail($id);
        return view('admin.editTestimonials', compact('item'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $acitve = 0;
        if($request->published == "checked"){
            $acitve = 1;
        }else{
            $acitve = 0;
        }
        $imageName= "";
        if ($request->hasFile('image')) {
            $imageName = time().'.'.$request->image->extension();
            $request->image->move(public_path('images'), $imageName);
        }

        Testimonials::where('id', $id)->update([
            'name'=> $request->name,
            'position' => $request->position,
            'image' => $imageName,
            'content' => $request->content,
            'published' => $acitve,
        ]);
        return redirect("/all_testimoials");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        $id = $request->id;
        Testimonials::where('id', $id)->delete();
        return redirect("/all_testimoials");
    }

}
