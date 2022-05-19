<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;

class FrontendController extends Controller
{
    public function index()
    {
        return view('frontend.index');
    }
    public function about()
    {
        return view('frontend.about');
    }   
    public function contact()
    {
        return view('frontend.contact');
    }
    public function products()
    {
        $products = Product::all();
        return view('frontend.products',compact('products'));
    }
    public function productdetails($id)
    {
        print_r('called');exit();
        $product_data = Product::where('id', $id)->first();
        return view('frontend.products',compact('products'));
            }
   
}
