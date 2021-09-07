"use strict";

/**
 * Объект DTO с настройками игры по умолчанию, которые можно будет поменять при инициализации библиотеки.
 * @property {string} settings.previewSelector Селектор обертки для селекта.
 * @property {string} settings.containerSelector Селектор обертки для пунктов меню селекта.
 * @property {string} settings.viewSelectionSelector Селектор обертки для заголовка селекта.
 * @property {string} settings.containerColorSelector Селектор обертки для образцов цвета меню.
 * @property {string} settings.displayItemSelector Селектор выбранного пункта меню.
 */
const settings = {
	previewSelector: 'mySelectContainer',
 	containerSelector: 'mySelect',
 	viewSelectionSelector: '.mySelectTitle',
 	containerColorSelector: '.mySelectColor',
 	displayItemSelector: 'displayItemMySelect',
};

/**
 * Объект конфига игры, содержащий методы получения настроек.
 * @property {settings} settings Настройки игры.
 */
const config = {
 	settings,

	/**
   	* Инициализация настроек игры.
   	* @param {Object} userSettings Объект с пользовательскими настройками.
   	*/
	init(userSettings) {
    	// Записываем переданные настройки в те, которые будут использоваться.
    	Object.assign(this.settings, userSettings);
	},

	/**
	* @returns {string} Отдает cелектор обертки для селекта.
	*/
	getPreviewSelector() {
		return this.settings.previewSelector;
  	},

	/**
	* @returns {string} Отдает cелектор обертки для пунктов меню селекта.
	*/
	getContainerSelector() {
		return this.settings.containerSelector;
	},

	/**
	* @returns {string} Отдает cелектор обертки для заголовка селекта.
	*/
	getViewSelectionSelector() {
    	return this.settings.viewSelectionSelector;
  	},

	/**
   	* @returns {string} Отдает cелектор обертки для цветового меню селекта.
   	*/
  	getContainerColorSelector() {
  		return this.settings.containerColorSelector;
  	},

  	/**
   	* @returns {string} Отдает cелектор обертки для пункта меню селекта, который будет отображен.
   	*/
  	getDisplayItemSelector() {
		return this.settings.displayItemSelector;
  	},
};


/**
 * Объект селекта.
 * @property {settings} config Настройки игры.
 */
const elements = {
	config,

	init(element) {
		for (let elem of element) {

			this.returnColorsMySelectMenu(elem);

			this.returnDisplayItemSelector(elem);
		}
	},

	returnColorsMySelectMenu(element) {

  		const containers = element.querySelectorAll('a');

  		for (let a of containers) {
  			const elementChildren = a.querySelector(this.config.getContainerColorSelector());
  			if (elementChildren) {
  				elementChildren.style.background = a.textContent;
  			}
  		}
  	},

  	returnDisplayItemSelector(element) {

  		const elementToDisplayItem = element.querySelector(`.${this.config.getDisplayItemSelector()}`);

  		const titel = this.getViewSelectionContainer(element);

  		if (elementToDisplayItem) {
  			this.fillElementToDisplayItem(elementToDisplayItem, titel);	
  		} else {
  			const firstElemOfContainer = element.querySelector('a');

  			this.fillElementToDisplayItem(firstElemOfContainer, titel);
  		}

  	},

  	fillElementToDisplayItem(element, titel) {

  		const cloneElement = element.cloneNode(true);

  		const classElement = titel.classList;

  		for (let i = 0; i < classElement.length; i++) {
  			cloneElement.classList.toggle(classElement[i]);
  		}

  		const parentDiv = titel.parentNode;

  		parentDiv.replaceChild(cloneElement, titel);
  	},

  	removeClassElementToDisplayItem(element) {
  		const containers = element.querySelectorAll(`.${this.config.getDisplayItemSelector()}`);

  		for (let elem of containers) {
  			elem.classList.remove(this.config.getDisplayItemSelector());
  		}
  	},

  	addClassElementToDisplayItem(element) {
  		element.classList.add(this.config.getDisplayItemSelector());
  	},

  	containerSearch (element, className) {
  		while (element) {
    		if (element.classList.contains(className)) {
      			return element;
    		} else {
      			element = element.parentElement;
    		}
  		}

  		return null;
  	},

  	getViewSelectionContainer (element) {
  		const titelContainer = this.containerSearch(element, this.config.getPreviewSelector());

  		return titelContainer.querySelector(this.config.getViewSelectionSelector());
  	},

};

const select = {
	config,
	elements,

	/**
   	* Инициализация элемента.
   	* @param {object} userSettings Настройки элемента, которые можно изменить.
   	*/
  	init(userSettings) {
    	// Инициализируем настройки элемента.
    	this.config.init(userSettings);

    	//
    	const mySelectContainer = document.querySelectorAll(`.${this.config.getContainerSelector()}`);

    	//
    	this.elements.init(mySelectContainer);

    	for (let element of mySelectContainer) {
    		element.addEventListener('click', event => this.containerClickHandler(event));
    	}
   	},

   	containerClickHandler(event) {
    	// Если целевой тег не был картинкой, то ничего не делаем, просто завершаем функцию.
    	if (event.target.tagName !== 'A') {
     		return;
    	} else {
    		this.runViewItemSelection(event.target);
    	}
  	},


  	runViewItemSelection(element) {

  		const mySelectContainer = this.elements.containerSearch(element, this.config.getContainerSelector());

  		this.elements.removeClassElementToDisplayItem(mySelectContainer);

  		this.elements.addClassElementToDisplayItem(element);

  		this.elements.returnDisplayItemSelector(mySelectContainer);
  	},

 

};

// Инициализируем нашу галерею при загрузке страницы.
window.onload = () => select.init();
  