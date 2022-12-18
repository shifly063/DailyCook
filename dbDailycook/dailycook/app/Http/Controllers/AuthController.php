<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\FoodReceipe;

class AuthController extends Controller
{
    //
    public function register(Request $req)
    {
        //valdiate
        $rules = [
            'name' => 'required|string',
            'email' => 'required|string|unique:users',
            'password' => 'required|string|min:6'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }
        //create new user in users table
        $user = User::create([
            'name' => $req->name,
            'email' => $req->email,
            'password' => Hash::make($req->password)
        ]);
        $token = $user->createToken('Personal Access Token')->plainTextToken;
        $response = ['user' => $user, 'token' => $token];
        return response()->json($response, 200);
    }

    public function login(Request $req)
    {
        // validate inputs
        $rules = [
            'email' => 'required',
            'password' => 'required|string'
        ];
        $req->validate($rules);
        // find user email in users table
        $user = User::where('email', $req->email)->first();
        // if user email found and password is correct
        if ($user && Hash::check($req->password, $user->password)) {
            $token = $user->createToken('Personal Access Token')->plainTextToken;
            $response = ['user' => $user, 'token' => $token];
            return response()->json($response, 200);
            redirect('/' . $user->id) ;
        }
        
        $response = ['message' => 'Incorrect email or password'];
        return response()->json($response, 400);
    }

    public function showuser(){
        $rec = User::all();
        return response()->json(['message' => 'Success', 'data' => $rec]);
    }

    public function index(){
        $rec = FoodReceipe::all();
        return view('file.index', compact(['rec']));
    }

    public function create(){
        return view('file.create');
    }

    public function insert(Request $request){
        FoodReceipe::create($request->all());
        return redirect('/receipe');
    }

    public function edit($id){
        $receipe = FoodReceipe::find($id);
        return view('file.edit', compact(['receipe']));
    }

    public function update(Request $request, $id){
        $receipe = FoodReceipe::find($id);
        $receipe->update($request->all());
        return redirect('/receipe');
    }

    public function dropIn(Request $request, $id){
        $receipe = FoodReceipe::find($id);
        $receipe->delete();
        return redirect('/receipe');
    }

    public function search(Request $req)
    {
        // validate inputs
        $rules = [
            'find' => 'required'
        ];
        $req->validate($rules);
        // find user email in users table
        $food = FoodReceipe::where('find', $req->judul);
        // if user email found and password is correct
        if ($food) {
            $receipe = FoodReceipe::find($food);
            return response()->json(['message' => 'Success', 'data' => 'yaaa']);
        }
        $response = ['message' => 'Incorrect email or password'];
    }

    public function showsearch($id){
        $receipe = FoodReceipe::find($id);
        return response()->json(['message' => 'Success', 'data' => $receipe]);
    }

    public function showprofil($id){
        $user = User::find($id);
        return response()->json(['message' => 'Success', 'data' => $user]);
    }
}