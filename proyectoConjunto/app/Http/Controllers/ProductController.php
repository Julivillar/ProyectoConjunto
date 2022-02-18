<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\Models\Image;
use App\Http\Requests\PostRequest;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Http\Requests\ProductRequest;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)//
    {
        $category = $request->get('category');
        $user = Auth::user();

        return view('products.index', compact('user', 'category'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('products.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {

        $product = new Product();
        $product->name = $request->get('name');
        //$product->category_id = $request->get('category');// no se cual
        $product->description = $request->get('description');
        $product->category()->associate(Category::findOrFail($request->get('category')));
        $product->price = $request->get('price');
        $product->tax = $request->get('taxes');
        $product->discount = $request->get('discount');
        $product->stock = $request->get('stock');
        $product->save();

        return view('products.guardado', compact('product'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        $categories = Category::get();
        $user = Auth::user();
        return view('products.show', compact('product', 'user', 'categories'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $categories = Category::all();
        return view('products.edit', compact('categories', 'product'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, Product $product)
    {
        $formInput = $request->all();
        $images = array();

        $product->name = $request->get('name');
        $product->description = $request->get('description');
        $product->category()->associate(Category::findOrFail($request->get('category')));
        $product->price = $request->get('price');
        $product->tax = $request->get('taxes');
        $product->discount = $request->get('discount');
        $product->stock = $request->get('stock');
        if ($request->has('visibility')) {
            $product->visibility = 1;
        } else {
            $product->visibility = 0;
        }

        $product->save();

        if ($files = $request->file('images')) {
            foreach ($files as $file) {
                $name = $file->hashName();
                $file->move('images', $name);
                $images[] = $name;
                Image::create(array_merge(
                    $formInput,
                    [
                        'product_id' => $product->id,
                        'url' => ($name),
                        'path' => ($name),
                        'default' => 0,
                    ],
                ));
            }
        }

        return view('products.modificado', compact('product'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $product->delete();
        return redirect()->route('products.index');
    }

    public function showPrivacy()
    {
        return view('products.privacy');
    }

    public function showTerms()
    {
        return view('products.terms');
    }

    public function offers(Product $product)
    {
        return view('products.ofertas');
    }
    public function carrito(){
        return view('products.carrito');
    }

}
