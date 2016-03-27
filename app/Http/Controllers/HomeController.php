<?php

namespace App\Http\Controllers;

use DB;
use App\Http\Requests;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $counts = DB::table('users')->count();
        $users = DB::table('users')
        ->leftjoin('social_accounts','users.id','=', 'social_accounts.user_id')
        // ->where('social_accounts.provider','<>', 'NULL')
        ->paginate(3);

        return view('home', ['users' => $users],['counts'=>$counts]);
    }

    public function view()
    {
        $counts = DB::table('users')->count();
        $users = DB::table('users')
        ->leftjoin('social_accounts','users.id','=', 'social_accounts.user_id')
        // ->where('social_accounts.provider','<>', 'NULL')
        ->paginate(3);

        return view('welcome', ['users' => $users],['counts'=>$counts]);
    }
}
