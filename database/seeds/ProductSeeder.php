<?php

use Illuminate\Database\Seeder;
use App\Models\Product;
use App\Models\Brand;
use App\Models\ProductCategory;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $articles = \DB::table('imported_products')->get();
        foreach($articles as $article)
        {
            $brand_id = null;
            if(strlen(trim($article->marca))>0)
            {
                $brand = Brand::firstOrCreate([
                    'brand_name'=>$article->marca
                ]);
                $brand_id = $brand->id;
            }

            $product_category_id = null;
            if(strlen(trim($article->categoria))>0)
            {
                $product_category = ProductCategory::firstOrCreate([
                    'category_name' =>$article->categoria,
                    'photo'         =>''
                ]);
                $product_category_id = $product_category->id;
            }





            $product = Product::firstOrCreate([
                'product_code'         => $article->codigo,
                'product_name'         => $article->nombre,
                'product_category_id'  => $product_category_id,
                'brand_id'             => $brand_id,
                'description'          => $article->descripcion,
                'state'                => 'ACTIVO',
                'featured'             => 1,
                'photo'                => '',
                'price'             => 0,
                'discount_rate'     => 0,
                'final_price'       => 0,

            ]);
        }
    }

    function getValue($value)
    {
        $value = is_numeric($value) ? (float) $value : 0;
        return $value;
    }
}
