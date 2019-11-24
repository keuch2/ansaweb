<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function List()
    {
        return ['products' => 'all'];
    }

    public function ListByProductCategory($productCategoryId)
    {
        return ['productCategoryId'=> $productCategoryId];
    }
}
