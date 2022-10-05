<?php
    require_once __DIR__ . "/vendor/autoload.php";
    require_once __DIR__ . "/app/controller/ProductController.php";

    use CoffeeCode\Router\Router;

    $router = new Router("http://localhost/ecommerce");
    $router->namespace("app\controller");

    $router->group(null);
    $router->get("/Produtos","ProductController:getProducts");  

    $router->group("error");
    $router->get("/{errcode}","ErrorController:error");
    $router->dispatch();

    if($router->error()){      
        echo $router->error();  
    } 
?>  