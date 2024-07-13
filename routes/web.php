<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\TestimonialsController;
use App\Http\Controllers\CarController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MassagesController;
use App\Http\Controllers\UserController;
use App\Models\Role;
use Illuminate\Support\Facades\Auth;

use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('admin/users');
// });

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/about', function(){
    return view('main.about');
})->name('about_page');

Route::get('/blog', function(){
    return view('main.blog');
})->name('blog_page');

Route::get('/listing', [HomeController::class, 'listing_page'])->name('listing_page');

Route::get('/listing/{id}', [HomeController::class, 'show'])->name('show');

Route::get('/testimonials', [HomeController::class, 'testimonials_page'])->name('testimonials_page');

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

Route::get('/dashboard',[UserController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

// Auth::routes();
Auth::routes(['verify'=>true]);


Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// category Route
Route::get('/all_category', [CategoryController::class, 'index'])->name("all_category");
Route::get('/category/add', [CategoryController::class, 'create'])->name('create');
Route::post('/category/store',[CategoryController::class, 'store'])->name('store');
Route::get('/category/edit/{id}', [CategoryController::class, 'edit'])->name('edit');
Route::put('/category/update/{id}',[CategoryController::class, 'update'])->name('update');
Route::get('/category/destroy/{id}', [CategoryController::class, "destroy"])->name("destroy");

// testimonials Route

Route::get('/all_testimoials', [TestimonialsController::class, 'index'])->name("all_testimoials");
Route::get('/testimoials/add', [TestimonialsController::class, 'create'])->name('create');
Route::post('/testimoials/store',[TestimonialsController::class, 'store'])->name('testimonials.store');
Route::get('/testimoials/edit/{id}', [TestimonialsController::class, 'edit'])->name('testimonials.edit');
Route::put('/testimoials/update/{id}',[TestimonialsController::class, 'update'])->name('testimonials.update');
Route::get('/testimoials/destroy/{id}', [TestimonialsController::class, "destroy"])->name("testimonials.destroy");


// car Route
Route::get('/all_cars', [CarController::class, 'index'])->name("all_car");
Route::get('/car/add', [CarController::class, 'create'])->name('create');
Route::post('/car/store',[CarController::class, 'store'])->name('car.store');
Route::get('/car/{id}', [CarController::class, 'show'])->name('car.show');
Route::get('/car/edit/{id}', [CarController::class, 'edit'])->name('car.edit');
Route::put('/car/update/{id}',[CarController::class, 'update'])->name('car.update');
Route::get('/car/destroy/{id}', [CarController::class, "destroy"])->name("car.destroy");


// user Route
// Route::get('/all_user', [UserController::class, 'index'])->name("all_user");
Route::get('/user/add', [UserController::class, 'create'])->name('create');
Route::post('/user/store',[UserController::class, 'store'])->name('user.store');
Route::get('/user/{id}', [UserController::class, 'show'])->name('user.show');
Route::get('/user/edit/{id}', [UserController::class, 'edit'])->name('user.edit');
Route::put('/user/update/{id}',[UserController::class, 'update'])->name('user.update');
// Route::get('/user/destroy/{id}', [UserController::class, "destroy"])->name("user.destroy");



// messages Route

Route::get('/all_messages', [MassagesController::class, 'index'])->name("all_user");
Route::get('/contact', [MassagesController::class, 'create'])->name('create');
Route::post('/messages/store',[MassagesController::class, 'store'])->name('messages.store');
Route::get('/messages/{id}', [MassagesController::class, 'show'])->name('messages.show');
Route::get('/messages/destroy/{id}', [MassagesController::class, "destroy"])->name("messages.destroy");

