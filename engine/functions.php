<?
function renderPage ($page, $vars = []) {
    $template = TPL_DIR . '/' . $page . '.tpl';

    if (!is_file($template)) {
        echo 'Template file "' . $template . '" not found';
        exit(ERROR_NOT_FOUND);
    }

    if (filesize($template) === 0) {
        echo 'Template file "' . $template . '" is empty';
        exit(ERROR_TEMPLATE_EMPTY);
    }

    $result = file_get_contents($template);
    
    if (!empty($vars)) {
        foreach ($vars as $key => $value) {
            if ($value != null) {
                $key = '{{' . strtoupper($key) . '}}';
                $result = str_replace($key, $value, $result);
            }         
        }
    }
    return $result;
}


function _log($s, $suffix='')
	{
		
		if (is_array($s) || is_object($s)) $s = print_r($s, 1);
		$s="### ".date("d.m.Y H:i:s")."\r\n".$s."\r\n\r\n\r\n";

		if (mb_strlen($suffix))
			$suffix = "_".$suffix;
			
		      _writeToFile($_SERVER['DOCUMENT_ROOT']."/_log/logs".$suffix.".log",$s,"a+");

		return $s;
	}

function _writeToFile($fileName, $content, $mode="w")
	{
		$dir=mb_substr($fileName,0,strrpos($fileName,"/"));
		if (!is_dir($dir))
		{
			_makeDir($dir);
		}

		if($mode != "r")
		{
			$fh=fopen($fileName, $mode);
			if (fwrite($fh, $content))
			{
				fclose($fh);
				@chmod($fileName, 0644);
				return true;
			}
		}

		return false;
	}

function _makeDir($dir, $is_root = true, $root = '')
        {
            $dir = rtrim($dir, "/");
            if (is_dir($dir)) return true;
            if (mb_strlen($dir) <= mb_strlen($_SERVER['DOCUMENT_ROOT'])) 
return true;
            if (str_replace($_SERVER['DOCUMENT_ROOT'], "", $dir) == $dir) 
return true;

            if ($is_root)
            {
                $dir = str_replace($_SERVER['DOCUMENT_ROOT'], '', $dir);
                $root = $_SERVER['DOCUMENT_ROOT'];
            }
            $dir_parts = explode("/", $dir);

            foreach ($dir_parts as $step => $value)
            {
                if ($value != '')
                {
                    $root = $root . "/" . $value;
					
                    if (!is_dir($root))
                    {
                        mkdir($root, 0755);
                        chmod($root, 0755);
                    }
                }
            }
            return $root;
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

function build_href ($href = "#", $content) {
    $html = "<a href='{$href}'>{$content}</a>";
    return $html;
}

function build_menu_mega_flex ($title, $arr) {
    $content = "";
    foreach ($arr as $key => $value) {
        $content .= build_tag("li", "", "", build_href($value, $key));
    }
    $html = build_tag("h3", "", "", $title) . build_tag("ul", "", "", $content);
    return build_tag("div", "", "mega-flex menu__mega-flex mega-flex_bright", $html);
}

function build_menu ($arr, $html = "") {
    foreach ($arr as $key => $value) {
        
        if (is_array($value)) {
           
            $content = build_tag("div", "", "triangle", "");

            foreach ($value as $key_ins => $value_ins) {
                $content .= build_menu_mega_flex($key_ins, $value_ins);
            }
            $content = build_tag("div", "", "mega menu__mega", $content);
            $html .= build_tag("li", "", "", build_href("#", $key) . $content);
        } else {
            $html .= build_tag("li", "", "", build_href($value, $key));
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