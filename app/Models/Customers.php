<?php

namespace App\Models;
use App\Models\userAddresss;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customers extends Model
{
    use HasFactory;
    protected $table= "customers";
    protected $primaryKey = "id";

    protected $fillable=[
        'id',
        'name',
        'gender',
        'adderss',
        'image',
        'dob',
        'password',
        'confirm',
        'created_at',
        'updated_at',
    ];

    public function userAddresss(){
        return $this->hasone(userAddresss::class,'user_id');
    }
}
