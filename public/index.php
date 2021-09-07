<?
require_once('../config/config.php');

$page = $_GET["page"];
if (empty($page)) $page = "index";

$arr = [
    "Московская область" => ['Москва', 'Зеленоград', 'Клин'],
    "Ленинградская область" => ['Санкт-Петербург', 'Всеволожск', 'Павловск', 'Кронштадт'],
    "Брянская обрасть" => ['Навля', 'Фокино', 'Дубровка'],
    "Орловская область" => ['Орел', 'Сокол']
];

$menu = [
    "Home" => "#",
    "Man" => [
        "Home" => [
            "Dress" => "#",
            "Dress" => "#",
            "Dress" => "#",
            "Dress" => "#"
        ],
        "Women" => [
            "Dress" => "#",
            "Dress" => "#",
            "Dress" => "#",
            "Dress" => "#"
        ],
        "Kids" => [
            "Dress" => "#",
            "Tops" => "#",
            "Dress" => "#",
            "Dress" => "#"
        ]
    ],
    "Women" => "#",
    "Kids" => [
        "Home" => [
            "Dress" => "#",
            "Tops" => "#",
            "Dress" => "#",
            "Dress" => "#"
        ],
        "Women" => [
            "Tops" => "#",
            "Dress" => "#",
            "Dress" => "#",
            "Dress" => "#"
        ]
    ],
    "Accoseriese" => "#",
    "Featured" => "#",
    "Hot Deals" => "#"
];

$vars = [
    "title" => $page,
    "home" => home3($arr, 'К'),
    "year"=> date("Y"),
    "menu" => build_menu($menu)
];



echo renderPage($page, $vars);
