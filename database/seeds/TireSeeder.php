<?php

use Illuminate\Database\Seeder;
use App\Models\Tire;
use App\Models\Brand;
use App\Models\Width;
use App\Models\Radius;
use App\Models\Profile;

class TireSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $articles = \DB::table('imported_tires')->get();
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

            $profile_id = null;
            if(strlen(trim($article->perfil))>0)
            {
                $profile = Profile::firstOrCreate([
                    'profile_name'  =>$article->perfil,
                    'profile_value' =>$this->getValue($article->perfil)
                ]);
                $profile_id = $profile->id;
            }

            $width_id = null;
            if(strlen(trim($article->largura))>0)
            {
                $width = Width::firstOrCreate([
                    'width_name'    =>$article->largura,
                    'width_value'   =>$this->getValue($article->largura)
                ]);
                $width_id = $width->id;
            }

            $radius_id = null;
            if(strlen(trim($article->aro))>0)
            {
                $radius = Radius::firstOrCreate([
                    'radius_name'   =>$article->aro,
                    'radius_value'   => $this->getValue($article->aro)
                ]);
                $radius_id = $radius->id;
            }


            $tire = Tire::firstOrCreate([
                'tire_code'         => $article->codigo,
                'tire_name'         => $article->nombre,
                'tire_type'         => 'RADIAL',
                'brand_id'          => $brand_id,
                'radius_id'         => $radius_id,
                'width_id'          => $width_id,
                'profile_id'        => $profile_id,
                'description'       => $article->description,
                'price'             => 0,
                'discount_rate'     => 0,
                'final_price'       => 0,
                'state' => 'ACTIVO',
                'featured' => false,
            ]);
        }
    }

    function getValue($value)
    {
        $value = is_numeric($value) ? (float) $value : 0;
        return $value;
    }
}
