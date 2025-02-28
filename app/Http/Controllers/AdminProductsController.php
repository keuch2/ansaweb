<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminProductsController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "product_name";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "products";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Codigo","name"=>"product_code"];
			$this->col[] = ["label"=>"Nombre del producto","name"=>"product_name"];
			$this->col[] = ["label"=>"Categoria","name"=>"product_category_id","join"=>"product_categories,category_name"];
			$this->col[] = ["label"=>"Marca","name"=>"brand_id","join"=>"brands,brand_name"];
			$this->col[] = ["label"=>"Precio base","name"=>"price"];
			$this->col[] = ["label"=>"Porcentaje de descuento","name"=>"discount_rate"];
			$this->col[] = ["label"=>"Precio final","name"=>"final_price"];
			$this->col[] = ["label"=>"Estado","name"=>"state"];
			$this->col[] = ["label"=>"Destacado","name"=>"featured"];
			$this->col[] = ["label"=>"Imagen","name"=>"photo","image"=>true];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Codigo','name'=>'product_code','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Nombre del producto','name'=>'product_name','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Categoria','name'=>'product_category_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'product_categories,category_name','help'=>'Categoria del producto'];
			$this->form[] = ['label'=>'Marca','name'=>'brand_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'brands,brand_name','help'=>'Marca del producto'];

            // Vehicle Types
            $this->form[] = ['label'=> 'Tipos de vehiculos', 'type'=>'select2', 'name'=> 'tiposvehiculos', 'datatable'=>'vehicle_types,vehicle_type', 'relationship_table'=>'product_vehicle_types'];

			$this->form[] = ['label'=>'Descripcion','name'=>'description','type'=>'wysiwyg','validation'=>'string|min:5|max:5000','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Precio base','name'=>'price','type'=>'number','validation'=>'required|numeric','width'=>'col-sm-10','help'=>'Precio base del producto (en Dolares USD)'];
			$this->form[] = ['label'=>'Porcentaje de descuento','name'=>'discount_rate','type'=>'number','validation'=>'numeric','width'=>'col-sm-10','help'=>'Porcentaje del descuento 0.x','placeholder'=>'Porcentaje del descuento 0.x'];
			$this->form[] = ['label'=>'Precio final','name'=>'final_price','type'=>'money','validation'=>'min:0|numeric','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Estado','name'=>'state','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'ACTIVO;INACTIVO','help'=>'Estado del producto, ACTIVO o INACTIVO'];
			$this->form[] = ['label'=>'Destacado','name'=>'featured','type'=>'checkbox','width'=>'col-sm-10','dataenum'=>'1|SI','help'=>'Si el producto sera destacado'];
			$this->form[] = ['label'=>'Imagen','name'=>'photo','type'=>'upload','validation'=>'image|max:3000','width'=>'col-sm-10','help'=>'Tipo de imágenes soportados: JPG, JPEG, PNG, GIF, BMP', 'upload_encrypt'=>'true'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Codigo','name'=>'product_code','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Nombre del producto','name'=>'product_name','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Categoria','name'=>'product_category_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'product_categories,category_name','help'=>'Categoria del producto'];
			//$this->form[] = ['label'=>'Marca','name'=>'brand_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'brands,brand_name','help'=>'Marca del producto'];
			//$this->form[] = ['label'=>'Descripcion','name'=>'description','type'=>'textarea','validation'=>'string|min:5|max:5000','width'=>'col-sm-10', 'type'=>'wysiwyg'];
			//$this->form[] = ['label'=>'Precio base','name'=>'price','type'=>'number','validation'=>'required|numeric','width'=>'col-sm-10','help'=>'Precio base del producto (en Dolares USD)'];
			//$this->form[] = ['label'=>'Porcentaje de descuento','name'=>'discount_rate','type'=>'number','validation'=>'numeric', 'step'=>'any','width'=>'col-sm-10','help'=>'Porcentaje del descuento 0.x','placeholder'=>'Porcentaje del descuento 0.x'];
			//$this->form[] = ['label'=>'Precio final','name'=>'final_price','type'=>'money','validation'=>'min:0|numeric','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Estado','name'=>'state','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'ACTIVO;INACTIVO','help'=>'Estado del producto, ACTIVO o INACTIVO'];
			//$this->form[] = ['label'=>'Destacado','name'=>'featured','type'=>'checkbox','width'=>'col-sm-10','dataenum'=>'1|SI','help'=>'Si el producto sera destacado'];
			//$this->form[] = ['label'=>'Imagen','name'=>'photo','type'=>'upload','validation'=>'image|max:3000','width'=>'col-sm-10','help'=>'Tipo de imágenes soportados: JPG, JPEG, PNG, GIF, BMP', 'upload_encrypt'=>'true'];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();



            // View Product photos
            $this->sub_module[] = ['label' => 'Imagenes', 'path' => 'product_photos', 'parent_columns' => 'product_name,description', 'foreign_key' => 'product_id', 'button_color' => 'success', 'button_icon' => 'fa fa-photo', 'parent_columns_alias' => 'Producto,Descripcion'];

            // Action Button In Grid Data (New Product Photo)
            $this->addaction[] = ['label' => 'Agregar imagen', 'url' => CRUDBooster::mainpath('../product_photos/add/?product_id=[id]'), 'icon' => 'fa fa-plus', 'color' => 'info'];
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here
            if(!$postdata['featured']){
                $postdata['featured']=0;
            }else{
                $postdata['featured']=1;
            }
            $postdata['final_price'] = (float)$postdata['price'] - ((float)$postdata['price']*$postdata['discount_rate']/100);
	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here
            if(!$postdata['featured']){
                $postdata['featured']=0;
            }else{
                $postdata['featured']=1;
            }
            $postdata['final_price'] = (float)$postdata['price'] - ((float)$postdata['price']*$postdata['discount_rate']/100);

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :) 


	}