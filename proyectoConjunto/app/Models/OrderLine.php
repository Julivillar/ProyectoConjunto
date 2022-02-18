<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderLine extends Model
{
    use HasFactory;
    protected $fillable = ["id", "line_number", "order_id", "product_id", "amount", "price", "discount", "created_at", "updated_at"];
    public function order(){
        return $this->belongsTo(Order::class);
    }
    public function products(){
        return $this->hasMany(Product::class);
    }
}
