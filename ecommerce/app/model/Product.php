<?php
namespace App\Model;

class Product {
    public $pid;
    public $name;
    public $description;
    public $price;
    public $images = array();
    
    static private $verbs = ["Armário", "Navio", "Mala", "Base", "Hidroavião", "Revista", "Carretel", "Minissaia", "Tamborim",
    "Andador", "Geladeira", "Estátua", "Rolo", "Crachá", "Peneira", "Bafômetro", "Desentupidor",
    "Guarda-chuva", "Espanador", "Escudo", "Raquete", "Vaso sanitário", "Lancheira", "Cofre",
    "Helióstato", "Medalha", "Foguete", "Lata", "Sintetizador", "Grampo", "Bucha", "Catraca",
    "Alfinete", "Caneca", "Fita", "Moeda", "Gel", "Maquete", "Interfone", "Gaveta", "Helicóptero",
    "Vela de cera", "Quimono", "Bambolê", "Necessaire", "Machado", "Tecido", "Vareta de freio",
    "Obra de arte", "Canga"];

    static private $adjectives = ["prepotente", "valioso", "legítimo", "desleixado", "Natural", "inteligente", "disciplinado",
    "louvável", "amargurado", "honesto", "odioso", "vergonhoso", "horroroso", "magnífico", "gordo",
    "romântico", "sublime", "mesquinho", "injusto", "medroso", "otário", "quente", "intenso", "Sábio",
    "zeloso", "desapegado", "faceiro", "companheiro", "empenhado", "espantoso", "traidor",
    "perfeccionista", "Qualificado", "feio", "tolerante", "orgulhoso", "ignorante", "lutador", "desejado",
    "exigente", "nostálgico", "próspero", "compreensivo", "excelente", "estourado", "malvado",
    "windsurfista", "verdadeiro", "melhor", "terno"];
    

    static function getProducts($qtt = 30)
    {

        $products = [];
        
        for ($i=1; $i <= $qtt; $i++) { 
            $product = new Product();
            $product->pid = $i;
            $id_verb = rand(0,sizeof(self::$verbs)-1);
            $id_adjective = rand(0,sizeof(self::$adjectives)-1);
            $product->name = self::$verbs[$id_verb] . " " . self::$adjectives[$id_adjective];
            $product->description = "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.";
            $product->price = 10 + strlen($product->name) * ((500 - strlen($product->description)) * (4 -  strlen($product->name)));
            $product->images = ["https://picsum.photos/seed/hype$i/500/300","https://picsum.photos/seed/hypee$i/400/300"];
            array_push($products,$product);
        }     
       return $products;
    }
}

?>