<?
require_once('../config/config.php');

//получаем URL запроса к сайту и разбиваем его в массив url_array
$url_array = explode("/", $_SERVER['REQUEST_URI']);
//var_dump($url_array);
//анализируем первое слово после запроса, например в site/news/?id_news=1
//$url_array[1]="news"
//Полученное значение идет в page_name, если зашли в корень сайта
//то page_name="index"
if ($url_array[1] == "")
	$page_name = "index";
else
	$page_name = $url_array[1];


//подготовку переменных вынесли в отдельную функцию
//в нее передаем имя страницы, переменные для которой нужно подготовить
$variables = prepareVariables($page_name);

//строим страницу и выводим ее на экран
//входные данные имя страницы и ассоциотивный массив переменных
//Например "title"=>"Шапка сайта"
echo renderPage($page_name, $variables);

/*
$arr = [
    "Московская область" => ['Москва', 'Зеленоград', 'Клин'],
    "Ленинградская область" => ['Санкт-Петербург', 'Всеволожск', 'Павловск', 'Кронштадт'],
    "Брянская обрасть" => ['Навля', 'Фокино', 'Дубровка'],
    "Орловская область" => ['Орел', 'Сокол']
];

$vars = [
    "title" => $page,
    "home" => home3($arr, 'К'),
    "year"=> date("Y"),
    "menu" => build_menu($menu),
    "products_All" => home4(IMAGE_DIR . "/" . $page . "/productsAll")
];

*/


