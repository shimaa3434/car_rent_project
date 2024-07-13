<?php

namespace App\Http\Controllers;
use App\Models\Car;
use App\Models\Category;
use App\Models\Testimonials;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $cars = Car::orderBy('created_at', 'asc')->take(6)->get();
        $testimonials = Testimonials::orderBy('created_at', 'desc')->take(3)->get();
        return view('main.index', compact('cars', 'testimonials'));

    }
    public function testimonials_page(){
        $items = Testimonials::get();
        return view('main.testimonials', compact('items'));
    }
    public function listing_page(Request $request){
        $perPage = $request->input('per_page', 4);
        $page = $request->input('page', 1);
        $total = Car::count();
        $offset = ($page - 1) * $perPage;
        $items = Car::offset($offset)->limit($perPage)->get();
        $cars = new LengthAwarePaginator(
            $items,
            $total,
            $perPage,
            $page,
            ['path' => $request->url(), 'query' => $request->query()]
        );
        $testimonials = Testimonials::orderBy('created_at', 'desc')->take(3)->get();
        return view('main.listing', compact('cars', 'testimonials'));
    }
    public function show($id)
    {
        $car = Car::findOrFail($id);
        $categories = Category::withCount('cars')->get();
        return view('main.single', compact('car', 'categories'));
    }
}
