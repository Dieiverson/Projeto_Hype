<?php
namespace App\Controller;

use App\Model\Product;

require_once __DIR__ . "./../model/Product.php";

class ProductController {    

    public function getProducts()
    {     
        echo json_encode(["result" => Product::getProducts()]);
    }
}