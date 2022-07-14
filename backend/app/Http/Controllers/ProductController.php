<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       return Product::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        // $request->validate([
        //     'name' => 'required|min:5',
        //     'slug'=>'required|min:5',
        //     'price'=>'required',
        // ]);
        $request->validate([
            'name' => 'required|min:3',
            'slug' => 'required',
            'price' => 'required'
        ]);
        return Product::create($request->all());
        //return ['name' => 'create', 'payload' => $request->all()];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        return Product::find($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $request->validate(
            [
                'name' => 'required|min:3',
                'slug' => 'required',
                'price' => 'required'
            ]
        );
        $product = Product::find($id);
        $product->update($request->all());
        return [
            'name'=>'update',
            'id'=>$id,
            'payload'=>$product
        ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy( $id)
    {
        //
        return Product::destroy($id);
    }
}
