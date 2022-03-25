<?
/*
	Так называемый роутер, навигатор, главное место в движке,
	где определяется какая страница вызвана и выполняются
	необходимые действия для нее, а именно
	присваиваются, получаются, вычисляются значения
	для подстановки в шаблон, формируется переменная vars
	На входе имя запрашиваемой страницы

*/
function prepareVariables($page_name){
    //var_dump($page_name);
    $vars = [];
	//в зависимости от того, какую страницу вызываем
	//такой блок кода для нее и выполняем
    switch ($page_name){
        case "index":
            $vars["year"] = date("Y");
            $vars["products_All"] = products_All($page_name);
            $vars["menu"] = build_menu();
            $vars["dir_img_page"] = IMAGE_DIR . "/" . $page_name . "/";
            break;     
        case "singlePage":
            $vars["id"] = (int)$_GET['id'];           
            $vars["year"] = date("Y");
            $vars["products_All"] = products_All($page_name);
            $vars["menu"] = build_menu();
            $vars["dir_img_page"] = IMAGE_DIR . "/" . $page_name . "/";
            break; 
        case "feedback": 
            crudFeedback($vars);
            break;  
        case "products_All":
            $vars["dir_img_class"] = "products_All" . "/";
            $vars["href_img"] = "singlePage";
            $vars["name_product"] = "Mango  People  T-shirt";
            $vars["price_product"] = "$52.00";
            $vars["href_icon"] = "#";
            $vars["src_icon"] = ICON_DIR . "/" . "basket_productUnit.png";
            break;    
        case "news":
			//если вызвана страница новостей заполним для нее поля
			//лента новостей будет не просто строка текста,
			//а массивом новостей, БЕЗ ТЕГОВ, просто текст
			//pasteValues сам заменит этот текст на шаблон
            $vars["newsfeed"] = getNews();
            $vars["test"] = "Привет!";
            break;
        case "newspage":
			//если вызвана страница для полной новости
			//то получим текст полной новости content
			//через выполнение запроса к базе по номеру новости
			//который получаем через GET
            $content = getNewsContent((int)$_GET['id_news']);
            $vars["news_title"] = $content["news_title"];
            $vars["news_content"] = $content["news_content"];
            break;      
		case "delete":
			//дополнительная функция удаления новости
			//запрос вида site/delete/?id_news=2 т.е. удалите ка вторую новость
			//Получаем номер новости через GET
			$idx = (int)$_GET["id_news"];
			//вызываем функцию удаления новости
			delNews($idx);
			//возвращаемся на страницу с новостями, никаких значений возвращать уже не нужно
			header("location: /news/");
            break;
    }
	//возвращаем готовый массив значения vars для шаблона 

    return $vars;
}

function crudFeedback (&$vars) {
    $vars["action"] = "save";  
    $vars["edit_name"] = " ";      
    $vars["edit_message"] = " "; 
    $vars["response"] = " "; 

    if ($_GET['id']) $vars["id_product"] = (int)$_GET['id'];
 
    if (isset($_GET['action'])) {
        $action = $_GET['action'];
        $id_feedback = (int)$_GET['id_feedback'];
        $feedback = getFeedback($id_feedback)[0];
        if ($feedback != null) {
            switch ($action) {
                case "edit":          
                    $vars['edit_name'] = $feedback['feedback_user'];
                    $vars['edit_message'] = $feedback['feedback_body'];
                    $vars['id_product'] = $feedback['product_id'];
                    $vars["action"] = "update";
                    break;
                case "delete":
                    $vars['id_product'] = $feedback['product_id'];
                    if (deleteFeedback($id_feedback)) 
                        header("Location: /feedback/?status=delete&id=" . $vars["id_product"]);                
                    else 
                        header("Location: /feedback/?status=error&id=" . $vars["id_product"]);
                    break;
            }
        } else header("Location: /feedback/?status=error");       
    }
    
    $status = $_GET['status'];   
    if ($status != null) $vars["response"] = writeStatus($status);  
    
    if ($_REQUEST['send'] == 'save') {
        if (addFeedback($vars["id_product"])) 
            header("Location: /feedback/?status=save&id=" . $vars["id_product"]);
        else
            header("Location: /feedback/?status=error&id=" . $vars["id_product"]);
    } else if ($_REQUEST['send'] == 'update') {
        if (updateFeedback($id_feedback, $vars["id_product"])) 
            header("Location: /feedback/?status=edit&id=" . $vars["id_product"]);
        else
            header("Location: /feedback/?status=error&id=" . $vars["id_product"]);
    }

    if ($vars["id_product"] != null) $vars["feedbackfeed"] = getAllFeedback($vars["id_product"]); 
}

function writeStatus($status) {
    $result = "";
    switch ($status) {
        case "save":
            $result = "Запись добавлена";
            break;
        case "edit":
            $result = "Запись изменена";
            break;
        case "delete":
            $result = "Запись удалена";
            break;
        case "error":
            $result = "Произошла ошибка";
            break;
    }
    return $result;
}

function deleteFeedback($id_feedback) {
    $sql = "DELETE FROM `feedback` WHERE `id_feedback`={$id_feedback}";
    return executeQuery($sql);
}

function updateFeedback($id_feedback, $id_product) {
    $db_link = getConnection();
    $feedback_user = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['name'])));
    $feedback_body = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['review'])));
    $sql = "UPDATE `feedback` SET `feedback_user`='{$feedback_user}',`feedback_body`='{$feedback_body}',`product_id`={$id_product} WHERE `id_feedback`={$id_feedback}";
    return executeQuery($sql);
}

function addFeedback($id_product) {
    $db_link = getConnection();
    $feedback_user = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['name'])));
    $feedback_body = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['review'])));
    $sql = "INSERT INTO `feedback`(`feedback_user`, `feedback_body`, `product_id`) VALUES ('{$feedback_user}', '{$feedback_body}', {$id_product})";
    return executeQuery($sql);
}

function getFeedback ($feedback_id) {
    $sql = "SELECT * FROM feedback WHERE id_feedback = $feedback_id";
    return getAssocResult($sql);
}

function getAllFeedback ($product_id) {
    $sql = "SELECT * FROM feedback WHERE product_id = $product_id";
    return getAssocResult($sql);
}

function home3_3 ($arr) {
    $str = "";
    foreach ($arr as $key => $value) {
        $str .= $key . ': <br>';

        if (is_array($value)) {
            $str .= implode(', ', $value) . '. <br>';
        }
    }
    return $str;
}

function home3_8 ($arr) {
    $str = "";
    foreach ($arr as $key => $value) {
        $key = $key . ': <br>';

        if (is_array($value)) {
            foreach ($value as $val) {

                if (mb_substr($val, 0, 1) == 'К') {
                    $str .= $key . $val . ', ';
                    $key = "";
                }
            }
            $str = substr_replace($str, '. <br>', -2);
        }
    }
    return $str;
}

function home3 ($arr, $strUp = "") {
    $str = "";
    foreach ($arr as $key => $value) {
        $key = $key . ': <br>';
        if (is_array($value)) {
            if (empty($strUp)) {
                $str .= $key . implode(', ', $value) . '. <br>';
            } else {
                foreach ($value as $val) {
                    if (mb_substr($val, 0, 1) == 'К') {
                        $str .= $key . $val . ', ';
                        $key = "";
                    }                 
                }
                $str = substr_replace($str, '. <br>', -2);
            }          
        }
    }
    return $str;           
}

function build_tag ($name, $id = "", $class = "", $content) {
    $html = "<{$name} id= '{$id}' class='{$class}'>{$content}</{$name}>";
    return $html;
}

function build_href ($href, $class = "", $content) {
    $html = "<a href='{$href}' class='{$class}'>{$content}</a>";
    return $html;
}

function build_img ($src) {
    $img = "<img src='{$src}'>";
    return $img;
}

function build_menu_mega_flex ($title, $arr) {
    $content = "";
    foreach ($arr as $key => $value) {
        $content .= build_tag("li", "", "", build_href($value, "", $key));
    }
    $html = build_tag("h3", "", "", $title) . build_tag("ul", "", "", $content);
    return build_tag("div", "", "mega-flex menu__mega-flex mega-flex_bright", $html);
}

function build_menu () {
    $arr = [
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
    foreach ($arr as $key => $value) {
        
        if (is_array($value)) {
           
            $content = build_tag("div", "", "triangle", "");

            foreach ($value as $key_ins => $value_ins) {
                $content .= build_menu_mega_flex($key_ins, $value_ins);
            }
            $content = build_tag("div", "", "mega menu__mega", $content);
            $html .= build_tag("li", "", "", build_href("#", "", $key) . $content);
        } else {
            $html .= build_tag("li", "", "", build_href($value, "", $key));
        }
    }

    return $html;
}
/*
<nav>
        <div class="container nav">
            <ul class="menu tac">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Man</a>
                    <div class="mega menu__mega">
                        <div class="triangle"></div>
                        <div class="mega-flex menu__mega-flex mega-flex_bright">
                            <h3>Women</h3>
                            <ul>
                                <li><a href="#">Dresses</a></li>
                                <li><a href="#">Tops</a></li>
                                <li><a href="#">Sweaters/Knits</a></li>
                                <li><a href="#">Jackets/Coats</a></li>
                            </ul>
                        </div>
                        <div class="mega-flex menu__mega-flex mega-flex_bright">
                            <h3>Women</h3>
                            <ul>
                                <li><a href="#">Dresses</a></li>
                                <li><a href="#">Tops</a></li>
                                <li><a href="#">Tops</a></li>
                                <li><a href="#">Tops</a></li>
                                <li><a href="#">Tops</a></li>
                                <li><a href="#">Sweaters/Knits</a></li>
                                <li><a href="#">Jackets/Coats</a></li>
                            </ul>
                        </div>
                        <div class="mega-flex menu__mega-flex mega-flex_bright">
                            <h3>Women</h3>
                            <ul>
                                <li><a href="#">Dresses</a></li>
                                <li><a href="#">Tops</a></li>
                                <li><a href="#">Sweaters/Knits</a></li>
                                <li><a href="#">Jackets/Coats</a></li>
                                <li><a href="#">Blazers</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li><a href="product.html">Women</a></li>
                <li><a href="product.html">Kids</a></li>
                <li><a href="product.html">Accoseriese</a></li>
                <li><a href="product.html">Featured</a></li>
                <li><a href="product.html">Hot Deals</a></li>
            </ul>
        </div>
    </nav>
*/

function products_All ($page_name) {
    //добавить условие с $page_name
    $sql = "SELECT * FROM images";

    $products_All = getAssocResult($sql);
/*

    $files = array_splice(scandir($dir), 2);
    if (is_array($files)) {
        foreach ($files as $name) {
            if (!empty($name)) {
                $vars = [
                    "src_img" => $dir . "/" . $name,
                    "href_img" => "#",
                    "name_product" => "Mango  People  T-shirt",
                    "price_product" => "$52.00",
                    "href_icon" => "#",
                    "src_icon" => ICON_DIR . "/" . "basket_productUnit.png"
                ];
                $content .= renderPage("productUnit", $vars);
            }
           
        }
    }
    */
    return $products_All;
}

