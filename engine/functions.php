<?php
function renderPage($page, $vars = [])
{
    $template = TPL_DIR . '/' . $page . '.tpl';
    $result = file_get_contents($template);
    if (empty($vars)) {
        $result = file_get_contents($template);
    } else {
        foreach ($vars as $key => $value) {
            $key = '{{' . strtoupper($key) . '}}';
            $result = str_replace($key, $value, $result);
        }
    }
    return $result;
}

function home3_3($arr)
{
    $str = "";
    foreach ($arr as $key => $value) {
        $str .= $key . ': <br>';

        if (is_array($value)) {
            $str .= implode(', ', $value) . '. <br>';
        }
    }
    return $str;
}

function home3_8($arr)
{
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

/**
 * home3
 *
 * @param  mixed  $arr 
 * @param  string $strUp 
 * @return void
 */
function home3($arr, $strUp = "")
{
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

/**
 * Build_tag
 *
 * @param string $name 
 * @param string $content 
 * @param string $id 
 * @param string $class 
 * 
 * @return void
 */
function buildTag($name, $content, $id = "", $class = "")
{
    $html = "<{$name} id= '{$id}' class='{$class}'>{$content}</{$name}>";
    return $html;
}

function build_href($href = "#", $content)
{
    $html = "<a href='{$href}'>{$content}</a>";
    return $html;
}

function build_menu_mega_flex($title, $arr)
{
    $content = "";
    foreach ($arr as $key => $value) {
        $content .= buildTag("li", "", "", build_href($value, $key));
    }
    $html = buildTag("h3", "", "", $title) . buildTag("ul", "", "", $content);
    return buildTag("div", "", "mega-flex menu__mega-flex mega-flex_bright", $html);
}

function build_menu($arr, $html = "")
{
    foreach ($arr as $key => $value) {

        if (is_array($value)) {

            $content = buildTag("div", "", "triangle", "");

            foreach ($value as $key_ins => $value_ins) {
                $content .= build_menu_mega_flex($key_ins, $value_ins);
            }
            $content = buildTag("div", "", "mega menu__mega", $content);
            $html .= buildTag("li", "", "", build_href("#", $key) . $content);
        } else {
            $html .= buildTag("li", "", "", build_href($value, $key));
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
