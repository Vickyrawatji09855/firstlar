<?php

namespace App\Http\Controllers;
use App\Models\Customers;
use Illuminate\Http\Request;
use App\Models\Dummy;

class dummyapi extends Controller
{
    public function dummy(){
        return ['arun'=>'preety','kamal'=>0];
    }

    public function list(){
        return Customers::all();
    }

    public function add(Request $req){
        $dummy= new Dummy();
        $dummy->name=$req->name;
        $dummy->member_id=$req->member_id;
        $result=$dummy->save();

        if($result){
            return ["Result" =>  "Data have been saved "];
        }
        else{
            return ["Result" =>  "Data is not saved "];
        }
    }

    public function update(Request $req){
        $dummy=Dummy::find($req->id);
        $dummy->name=$req->name;
        $dummy->member_id=$req->member_id;
        $result=$dummy->save();
        if($result){
            return ["Result" =>  "Data have been Updated "];
        }
        else{
            return ["Result" =>  "Data is not updated "];
        }
    }

    public function search($name){
        return Dummy::where("name",$name)->get();
    }

    public function delete($id){
        $dummy=Dummy::find($id);
        $result=$dummy->delete();
        if($result){
            return ["Result" =>  "Data have been deleted "];
        }
        else{
            return ["Result" =>  "Data is not deleted "];
        }
    }


}
