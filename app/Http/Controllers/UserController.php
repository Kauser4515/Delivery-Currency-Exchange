<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $users = User::all();
        return view('users.index', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = User::all();
        return view('users.create', compact('users'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate([
            'name' => ['required', 'max:50'],
            'email' => ['required', 'max:50'],
            'password' => ['required', 'min:6', 'max:35'],
        ]);
            $user = new User();
            $user->name = $request->name;
            $user->phone = $request->phone;
            $user->email =$request->email;
            $user->password =Hash::make($request->password);

            //image upload
            if($request->hasfile('image'))
                {
                $file = $request->file('image');
                $extension = $file->getClientOriginalExtension();
                $filename =time().'.'.$extension;
                $file->move('public/img/', $filename);
                $user->image = $filename;
            }
            $user->save();
        if (!empty($user->id)) {
            $notification = array(
                'message' => 'user add successfully.',
                'alert-type' => 'success'
            );
        } else {
            $notification = array(
                'message' => 'Operation failed!',
                'alert-type' => 'error'
            );
        }//return $request->all();
        return redirect()->route('admin.user.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
         $user = User::findOrFail($id);
         return view('users.view', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        $user = User::findOrFail($id);
         return view('users.edit', compact('user'));
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
    }
}
