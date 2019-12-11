<?php

namespace App\Http\Controllers;

use App\Helpers\AnsaHelper;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $data = AnsaHelper::getHeaderData();
        $products = Product::where('state', 'ACTIVO')->orderBy('id', 'DESC')->paginate(\Config::get('content.itemsPerPage'));
        $data['products'] = $products;
        return view('products.list')->with($data);
    }

    public function ListByBrand($brandId)
    {
        $data = AnsaHelper::getHeaderData();
        $products =Product::where('state', 'ACTIVO')->where('brand_id', $brandId)->orderBy('id', 'DESC')->paginate(\Config::get('content.itemsPerPage'));
        $data['products'] = $products;
        return view('products.list')->with($data);
    }

    public function ListByProductCategory($productCategoryId)
    {
        $data = AnsaHelper::getHeaderData();
        $products =Product::where('state', 'ACTIVO')->where('product_category_id', $productCategoryId)->orderBy('id', 'DESC')->paginate(\Config::get('content.itemsPerPage'));
        $data['products'] = $products;

        return view('products.list')->with($data);
    }

    public function Product($productId)
    {
        $data = AnsaHelper::getHeaderData();
        $product = Product::findOrFail($productId);
        $data['product'] = $product;

        // get aditional photos
        $data['photos'] = $product->tirePhotos;

        // similar products (last 5 with the same brand_id  or product_category_id -> haha fucked!)
        $productId = $product->id;
        $brandId = $product->brand_id;
        $productCategoryId = $product->product_category_id;

        $similarProducts = Product::where('id', '<>', $productId)->where('brand_id', '=', $brandId)
            ->orWhere(function($query) use ($productId, $productCategoryId){
                $query->where('id', '<>', $productId)->where('product_category_id', '=', $productCategoryId);
//            })
//            ->orWhere(function($query2) use ($productId, $profileId){
//                $query2->where('id', '<>', $productId)->where('profile_id', '=', $profileId);
            })->orderBy('id', 'DESC')->take(\Config::get('content.maxSimilarProducts'))->get();

        // get other products (tires) -> turn this off =D

        $data['similarProducts'] = $similarProducts;
        return view('products.view')->with($data);
    }
}
