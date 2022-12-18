<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;
use App\Models\FoodReceipe;
use Illuminate\Http\Request;
use App\Models\User;
class ReceipeController extends Controller
{
    public function index(){
        $receipe = FoodReceipe::all();
        return response()->json(['message' => 'Success', 'data' => $receipe]);
    }

    public function show($id){
        $user = User::find($id);
        return response()->json(['message' => 'Success', 'data' => $user]);
    }

    public function insert(Request $request){
        $receipe = FoodReceipe::create($request->all());
        return response()->json(['message' => 'Success', 'data' => $receipe]);
    }

    public function update(Request $request, $id){
        $user = FoodReceipe::find($id);
        $user->update($request->all());
        return response()->json(['message' => 'Success', 'data' => $user]);
    }

    public function dropIn(Request $request, $id){
        $receipe = FoodReceipe::find($id);
        $receipe->delete();
        return response()->json(['message' => 'Success', 'data' => null]);
    }

    public function search(Request $req)
    {
        // validate inputs
        $rules = [
            'judul' => 'required'
        ];
        $req->validate($rules);
        // find user email in users table
        $recipe = FoodReceipe::where('judul', $req->judul)->first();
        // if user email found and password is correct
        if ($req && ($recipe !=null)) {
            redirect('/' . $recipe->id) ;
            return response()->json(['message' => 'Success', 'data' => $recipe, 200]); 
        }
        return response()->json(['message' => 'Not Found']);
    }

    public function singlefile(){
        $data = FoodReceipe::find(1);
        return $data->judul;
    }

    public function indexuser($id){
        $user = User::find($id);
        return view('file.index', compact(['user']));
    }
}
