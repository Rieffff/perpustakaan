<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class C_User extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $sesUser = auth()->user()->id;
        //$rows = \App\User::all();
        $rows = DB::table('users')->where('id','!=',$sesUser)->get();
        return view("user.user",compact("rows"));
    }
    public function detail(User $user)
    {
        //
        
        $rows = DB::table('detail_login')
                    ->join('users','users.id','=','detail_login.id')
                    ->where('detail_login.id','=',$user->id)
                    ->select('detail_login.*','users.name','users.email')
                    ->get();

        return view("user.detailuser",compact("rows"));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        //user::create($request->all());
        $cekuser = $rows = \App\User::where('email', '=' ,$request->email)->first();
        if ($cekuser === null) {
            
            user::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'role' => $request->role,
            ]);
            
            return redirect('/user')->with('Pesan','Data Berhasil Tambah data');
        }else{
            return redirect('/user')->with('Hapus','Email Sudah ada');
        }
    }public function updatePassword(Request $request)
    {
        //user::create($request->all());
        $id = Auth::user()->id;
        $rows = \App\User::where('id', '=' ,$id)->first();
        return view("user_edit",compact("rows"));
        
    }
    public function updatePasswordPro(Request $request)
    {
        //user::create($request->all());
        
        $id = Auth::user()->id;
        $cekuser = \App\User::where('id', '=', $id)
                                    ->first();
        
        if (Hash::check($request->password_old, $cekuser->password)) {
            # code...
            if ($request->password_new1 == $request->password_new2) {
                
                user::where('id', $id)
               ->update([
                   'password'=>  Hash::make($request->password_new2)
               ]);
               return redirect('/updatePassword')->with('Pesan','Berhasil');
           }else{
               return redirect('/updatePassword')->with('Hapus','Password baru yang anda masukan tidak sama');
           }
        }else{
            return redirect('/updatePassword')->with('Update','Password lama yang anda masukan salah');
        }
        
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        //
        $cekuser = $rows = \App\User::where('email', '=' ,$request->email )->
                                        where('id', '!=',$user->id)->first();
        if ($cekuser === null) {
            
            user::where('id', $user->id)
            ->update([
                'email'=> $request->email,
                'name'=> $request->name
            ]);
            
            return redirect('/user')->with('Update','Data Berhasil di Edit');
        }else{
            return redirect('/user')->with('Hapus','Email Sudah ada');
        }
       
    }public function userReset(Request $request, User $user)
    {
        //
        $cekuser = $rows = \App\User::where('email', '=' ,$request->email )->
                                        where('id', '!=',$user->id)->first();
        if ($cekuser === null) {
            
            user::where('id', $user->id)
            ->update([
                'password'=>  Hash::make('gemilang123')
            ]);
            
            return redirect('/user')->with('Update','Data Berhasil di Edit');
        }else{
            return redirect('/user')->with('Hapus','Email Sudah ada');
        }
       
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
        user::destroy($user->id);
        return redirect('/user')->with('Hapus','Data Berhasil di Hapus');
    }
}
