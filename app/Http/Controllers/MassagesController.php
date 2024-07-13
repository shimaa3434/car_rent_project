<?php

namespace App\Http\Controllers;

use App\Models\Massages;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
class MassagesController extends Controller
{
    public function index()
    {
        $items = Massages::get();
        return view("admin.messages", compact('items'));
    }
    public function create(){
        return view('main.contact');
    }
    public function store(Request $request){
        $item = new Massages();
        $item->fname = $request->fname;
        $item->lname = $request->lname;
        $item->email = $request->email;
        $item->content = $request->message;
        $item->is_read = "no";
        $item->save();
        // send mail after save data in database
        Mail::send('admin.showMessage', ['item' => $item], function ($m) use ($item) {
            $m->from($item->email, $item->name);
            $m->to('bemn900@gmail.com', 'Website Owner')->subject('رسالة من صفحة اتصل بنا');
        });
        return redirect("/home");
    }
    public function show(string $id)
    {
        $item = Massages::findOrFail($id);
        $item->is_read = "yes";
        $item->save();

        return view('admin.showMessage', compact('item'));
    }

    public function destroy(Request $request)
    {
        $id = $request->id;
        Massages::where('id', $id)->delete();
        return redirect("/all_messages");
    }
}
