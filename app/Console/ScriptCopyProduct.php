<?php

namespace App\Console;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Botble\Products\Models\ProductCategory;
use Illuminate\Support\Facades\File;

class ScriptCopyProduct extends Command
{
	/**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'export-product:run';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
    	ProductCategory::where('id', '>', 0)->delete();
    	$contents = file_get_contents(base_path('products.txt'));
    	$products = json_decode($contents);
    	$this->downloadFileImages($products);
    	foreach ($products as $product) {
    		ProductCategory::create(json_decode(json_encode($product), true));
    	}
    }

    /**
     * [downloadFileImages description]
     * @param  [type] $products [description]
     * @return [type]           [description]
     */
    protected function downloadFileImages($products)
    {
    	$baseUrl = 'https://unitedmh.com';
    	foreach ($products as $product) {
    		print_r("---------------------- Cloning {$product->name} -----------");
    		print_r("\n* Crawl product data successfully \n* Start downloader product images: {$product->image} \n");
    		$this->forceFilePutContents(base_path("public{$product->image}"));
    		file_put_contents(base_path("public{$product->image}"), fopen("{$baseUrl}{$product->image}", 'r'));
    	}
    }

    /**
     * [forceFilePutContents description]
     * @param  string $fullPathWithFileName [description]
     * @return [type]                       [description]
     */
    protected function forceFilePutContents (string $fullPathWithFileName)
    {
        $exploded = explode(DIRECTORY_SEPARATOR,$fullPathWithFileName);

        array_pop($exploded);

        $directoryPathOnly = implode(DIRECTORY_SEPARATOR,$exploded);

        if (!File::exists($directoryPathOnly)) 
        {
            File::makeDirectory($directoryPathOnly,0775,true,false);
        }
    }
}