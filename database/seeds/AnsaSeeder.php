<?php

use Illuminate\Database\Seeder;

class AnsaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Eloquent::unguard();
        \DB::unprepared(file_get_contents('database/dumps/current_ansa.sql'));
    }
}
