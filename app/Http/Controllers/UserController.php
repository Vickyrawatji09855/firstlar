<?php

namespace App\Http\Controllers;
use Validator;
// use Barryvdh\DomPDF\Facade\Pdf;
use PDF;
use Mail;

use Illuminate\Support\Facades\DB;
use App\Mail\DemoMail;
use Illuminate\Support\Facades\Storage;
use App\Models\Customers;
use App\Models\Courses;
// use Barryvdh\DomPDF\PDF;
use App\Models\UserCourses;
use App\Models\userAddresss;
use Hamcrest\Arrays\IsArray;
use Illuminate\Support\Facades\File;
use Illuminate\Http\Request;
use Symfony\Contracts\Service\Attribute\Required;
use function PHPUnit\Framework\isNull;

class UserController extends Controller
{
    public function show(){
        $url=url('/');

        $Courses= Courses::get();
        $data=compact('url','Courses');
        return view('welcome')->with($data);
    }

    public function insert(Request $req){
        print_r($req->all());
        $req->validate(
            [
                'name'=> 'Required',
                'gender' => 'Required',
                'address'=> 'Required',
                'dob' => 'Required',
                'pass' => 'required_with:password_confirmation|same:password_confirmation|min:8',
                'password_confirmation' => 'Required|min:8',
                'city' => 'Required',
                'state'  => 'Required',
                'country'  => 'Required',
            ]
            );

            $imgName=$req->file('image')->getClientOriginalName();
            $req->image->move(public_path('images'),$imgName);

            $Customers = new Customers;
            $Customers->name= $req['name'];
            $Customers->gender= $req['gender'];
            $Customers->adderss= $req['address'];
            $Customers->image= $imgName;
            $Customers->dob= $req['dob'];
            $Customers->password= md5($req['pass']);
            $Customers->confirm= md5($req['password_confirmation']);
            $Customers->created_at=$req['create'];
            $Customers->updated_at=$req['update'];

            $Customers->save();
            $lastinsertedId = $Customers->id;

            $address=new userAddresss;
            $address->user_id=$lastinsertedId;
            $address->City=$req['city'];
            $address->state=$req['state'];
            $address->country=$req['country'];
            $address->save();


            $checkbox=$req['vehicle'];
            // dd($checkbox);
            foreach($checkbox as $check=>$val){
                $courses=new UserCourses;
                $courses->course_id=$val;
                $courses->user_id=$lastinsertedId;
                $courses->save();
            }

            $courses->save();
            return redirect('/view')->with('message','row is inserted Successfully!!');
    }


    public function view(){
        // $useraddress=userAddresss::with('customers')->get();
        // $customer= Customers::with('userAddresss')->get();
        $Customers= Customers::with('userAddresss')->get();
        // dd($Customers->toArray());
        return view("customer-view", compact('Customers'));
    }

    public function delete($id){
        // echo '<h1>delete</h1>';\
        $customer = Customers::find($id);
        if(!is_null($customer)){
            $customer->delete();
        }
        return redirect('/view')->with('message','one row is deleted Successfully!!');
    }

    public function edit($id){
        $customer = Customers::find($id);

        if(is_null($customer)){
            return redirect('/view');
        }
        else{
            $courseid=UserCourses::where('user_id','=',$id)->get()->pluck('course_id')->toArray();

            $Courses= Courses::get();
            $url=url('/customer/update')."/".$id;
            $data=compact('customer','url','Courses','courseid');
            return view('update')->with($data);
        }
    }

    public function update($id, Request $req){

        $req->validate(
            [
                'name'=> 'Required',
                'gender' => 'Required',
                'address'=> 'Required',
                'dob' => 'Required',
                'pass' => 'required_with:password_confirmation|same:password_confirmation',
                'password_confirmation' => 'Required',
                'city' => 'Required',
                'state'  => 'Required',
                'country'  => 'Required',
            ]
            );
            // $imgName=$req->file('image')->getClientOriginalName();
            $Customers=Customers::with('userAddresss')->find($id);
            $Customers->name= $req['name'];
            $Customers->gender= $req['gender'];
            $Customers->adderss= $req['address'];
            $Customers->dob= $req['dob'];
            $Customers->password= $req['pass'];
            $Customers->confirm= $req['password_confirmation'];
            $Customers->created_at=$req['create'];
            $Customers->updated_at=$req['update'];
            if($req->hasFile('image'))
            {
                $destination = 'images/';
                if(File::exists($destination))
                {
                    File::delete($destination);
                }
                $file = $req->file('image');
                $extension = $file->getClientOriginalExtension();
                $filename = time(). '.' . $extension;
                $file->move('images', $filename);
                $Customers->image = $filename;
            }
            $Customers->save();

            $lastinsertedId = $Customers->id;
            // dd($lastinsertedId);
            $address=userAddresss::where('user_id','=', $lastinsertedId)->first();
            // dd($address);
            // $address->user_id=$lastinsertedId;
            $address->City=$req['city'];
            // dd($address->City);
            $address->state=$req['state'];
            $address->country=$req['country'];

            $address->save();

            $data=$req['vehicle'];
           UserCourses::where('user_id','=',$lastinsertedId)->delete();

            foreach($data as $check=>$val){
                $courses=new UserCourses;
                $courses->course_id=$val;
                $courses->user_id=$lastinsertedId;
                $courses->save();
            }
            return redirect('/view')->with('message','Selected row is Updated Successfully!!');;
    }

    public function pdf(){

        $Customers=Customers::all();
        $data["email"] = "vickyrawatji855@gmail.com";
        $data["title"] = "websolutionstuff.com";
        $data["body"] = "This is test mail with attachment";

        // $data['pdf'] = $pdf->output();
        // $pdf = PDF::loadView('mypdf',compact('Customers'));
        //  $pdf = PDF::loadView('mypdf',array('Customers' => $Customers));
        // $viewhtml = View::make('mypdf', [$Customers])->render();
        $pdf = PDF::loadView('mypdf', compact('Customers'));

        Mail::send('mypdf', $data,  function($message)use($data,$pdf) {
            $message->to($data["email"])
                    ->subject($data["title"])
                    ->attachData($pdf->output(),"first_pdf.pdf");
        });
        // dd("sent success");
    }

             //  return $pdf->download('first_pdf.pdf');
    //    return redirect('/view')->with('message','Email is sent Successfully!!');;
}

