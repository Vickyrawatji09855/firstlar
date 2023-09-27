<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Customers;

class userAddresss extends Model
{
    use HasFactory;
    protected $table= "user_addressses";
    protected $primaryKey = "id";

    protected $fillable=[
        'id',
        'user_id',
        'City',
        'state',
        'country',
        'created_at',
        'updated_at',
    ];

    public function userAddresss(){
        return $this->belongsTo(Customers::class);
    }
}
