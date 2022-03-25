<?
function renderPage ($page, $vars = []) {
    $template = TPL_DIR . '/' . $page . '.tpl';
    //var_dump($template);
    if (!is_file($template)) {
        echo 'Template file "' . $template . '" not found';
        exit(ERROR_NOT_FOUND);
    }

    if (filesize($template) === 0) {
        echo 'Template file "' . $template . '" is empty';
        exit(ERROR_TEMPLATE_EMPTY);
    }

    $templateContent = file_get_contents($template);
    if (!empty($vars)) {
       // заполняем значениями если vars не пустая и нужно делать замену
       $templateContent = pasteValues($vars, $page, $templateContent);
    }
    return $templateContent;
}

/*
	Функция замены значений в шаблоне по массиву замен variables
	Если массив variables двумерный то замена происходит по дополнительному шаблону
	Например variables:
	[
		"newsfeed"=>[
						"news1"=>"Текст новости 1",
						"news1"=>"Текст новости 1",
						"news1"=>"Текст новости 1"		
					]
	]
	тогда поле {{newsfeed}} будет заменено не просто текстом, а по шаблону из файла
	news_newsfeed_item.tpl имя которого система постоит сама
*/
function pasteValues($variables, $page_name, $templateContent){
    //var_dump($variables);
	//перебираем массив замен
    foreach ($variables as $key => $value) {
		//Если массив двумерный, т.е. не одно значение для подстановки
		//то выполним подстановку через дополнительный шаблон
        if ($value != null) {
            // собираем ключи
            $p_key = '{{' . strtoupper($key) . '}}';
            if(is_array($value)){
                // замена массивом
                $result = "";
                //подстановка данных из таблицы, названия полей соответсвуют названиям вставки в шаблоне
                //перебор строк в таблице бд
                foreach ($value as $value_key => $item){
					//сформируем имя дополнительного шаблона
                    $itemTemplateName = TPL_DIR . "/" . $page_name ."_".$key."_item.tpl";
                    $itemTemplateContent = file_get_contents($itemTemplateName);

					//выполним замену по дополнительному шаблону
                    //перебор полей в строке
                    foreach($item as $item_key => $item_value){
                        $i_key = '{{' . strtoupper($item_key) . '}}';

                        $itemTemplateContent = str_replace($i_key, $item_value, $itemTemplateContent);
                    }

                    ///////////////////////////////////////////////////
                    //подстановка стандартных значений, вызов роутера с именем подшаблона
                    //если не все переменные в подшаблоне хранятся в бд!
                    $varsTemplate = prepareVariables($key);
                
                    foreach($varsTemplate as $key_Template => $value_Template){
                        $key_Template_Up = '{{' . strtoupper($key_Template) . '}}';

                        $itemTemplateContent = str_replace($key_Template_Up, $value_Template, $itemTemplateContent);
                    }
                    ///////////////////////////////////////////////////

					//формируем общую строку с шаблоном уже с подставленными значениями
                    $result .= $itemTemplateContent;
                }               
            }
            else
				//если подставляется просто значение, его и вернем
                $result = $value;

			//произведем основную замену элементов в шаблоне
            $templateContent = str_replace($p_key, $result, $templateContent);
        }
    }
	//вернем строку с готовым шаблоном со вставленными элементами
    return $templateContent;
}