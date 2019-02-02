<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Response;
use Illuminate\Http\Request;

class UserController extends Controller
{

    public function index(Request $request) {
        $user = User::where('username', $request->username)
                    ->where('password', $request->password)
                    ->first();
                    
        return array('user' => $user);
    }

    public function store(Request $request) {

        $has_username = User::where('username', $request->username)->first();

        if (empty($has_username)) {
            $user = new User;
            $user->username = $request->username;
            $user->password = $request->password;
            $user->fullname = $request->fullname;
            $user->address = $request->address;
            $user->phone = $request->phone;
            $user->email = $request->email;

            if ($user->save()) {
                return array('is_save' => true, 'message' => 'You have successfully created an acoount.');
            } else {
                return array('is_save' => false, 'message' => 'Error while creating an account.');
            }
        } else {
            return array('is_save' => false, 'message' => 'Username is already taken.');
        }

    }

    public function update(Request $request) {

        $user = User::find($request->user_id);
        $user->username = $request->username;
        $user->password = $request->password;
        $user->fullname = $request->fullname;
        $user->address = $request->address;
        $user->phone = $request->phone;
        $user->email = $request->email;

        if ($user->save()) {
            return array('user_data' => $user, 'user_save' => true);
        } else {
            return array('user_data' => array(), 'user_save' => array());
        }

    }

    public function show($user_id) {
        $user = User::find($user_id);
        return array('user_data' => $user);
    }

}
