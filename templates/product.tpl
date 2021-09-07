<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Single Page</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="packages/icons/fontawesome-free-5.0.13/web-fonts-with-css/css/fontawesome-all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <link href="style/style.css" rel="stylesheet">
    <script>
        $(function() {
            $("#slider-range").slider({
                range: true,
                min: 0,
                max: 1000,
                values: [75, 300],
                slide: function(event, ui) {
                    $("#amountFor").val("$" + ui.values[0]);
                    $("#amountTo").val("$" + ui.values[1]);
                }
            });
            $("#amountFor").val("$" + $("#slider-range").slider("values", 0));
            $("#amountTo").val("$" + $("#slider-range").slider("values", 1));
        });

    </script>
</head>

<body>


    <header>
        <div class="container tac header-flex">
            <div class="headerLeft tac">
                <a href="index.html" class="logo">bren<span>d</span></a>
                <summary class="dropdownLeft">Browse
                    <div class="mega dropdownLeft__mega">
                        <div class="triangle"></div>
                        <div class="mega-flex dropdownLeft__mega-flex mega-flex_bright">
                            <h3>Women</h3>
                            <ul>
                                <li><a href="#">Dresses</a></li>
                                <li><a href="#">Tops</a></li>
                                <li><a href="#">Sweaters/Knits</a></li>
                                <li><a href="#">Jackets/Coats</a></li>
                            </ul>
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
                    </div>
                </summary>
                <input type="search" placeholder="Search for Item...">
                <button class="searchBtn" type="submit"><i class="fas fa-search"></i></button>
            </div>
            <div class="headerRight tac">
                <ul class="basket">
                    <li><a href="shoppingCart.html" class="basketBtn"><i class="fas fa-shopping-cart"></i></a>
                        <div class="mega">
                            <div class="triangle"></div>
                            <div class="mega-flex-basketBtn">
                                <img src="img/shoppingCart/productTable3.jpg">
                                <div class="productTableLeft-text mega-flex-basketBtn__productTableLeft-text">
                                    <a href="singlePage.html">mango people t-shirt</a>
                                    <p>Color:&nbsp;Red</p>
                                    <p>Size:&nbsp;XII</p>
                                </div>
                                <div class="productTableRight-flex mega-flex-basketBtn__productTableRight-flex">
                                    <input id="quantity" type="number">
                                </div>
                                <div class="productTableRight-flex mega-flex-basketBtn__productTableRight-flex">
                                    <span>$300</span>
                                </div>
                                <div class="productTableRight-flex mega-flex-basketBtn__productTableRight-flex">
                                    <button>+</button>
                                </div>
                            </div>
                            <div class="mega-flex-basketBtn">
                                <img src="img/shoppingCart/productTable3.jpg">
                                <div class="productTableLeft-text mega-flex-basketBtn__productTableLeft-text">
                                    <a href="singlePage.html">mango people t-shirt</a>
                                    <p>Color:&nbsp;Red</p>
                                    <p>Size:&nbsp;XII</p>
                                </div>
                                <div class="productTableRight-flex mega-flex-basketBtn__productTableRight-flex">
                                    <input id="quantity" type="number">
                                </div>
                                <div class="productTableRight-flex mega-flex-basketBtn__productTableRight-flex">
                                    <span>$300</span>
                                </div>
                                <div class="productTableRight-flex mega-flex-basketBtn__productTableRight-flex">
                                    <button>+</button>
                                </div>
                            </div>
                            <div class="mega-flex-basketBtn basketBtnPrice">
                                <div class="adress-coupon-butCheckInside-textBUY mega-flex-basketBtn__adress-coupon-butCheckInside-textBUY">
                                    <div class="adress-coupon-butCheckInside-textFlex subPrice">
                                        <p>Sub total</p>
                                        <p>$900</p>
                                    </div>
                                    <div class="adress-coupon-butCheckInside-textFlex grandPrice">
                                        <p>GRAND TOTAL<span>$900</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul class="btnAccount">
                    <li><a href="checkout.html">My Account</a>
                        <div class="mega btnAccount__mega">
                            <div class="triangle"></div>
                            <div class="mega-flex btnAccount__mega-flex mega-flex_bright">
                                <h3>Women</h3>
                                <ul>
                                    <li><a href="#">Dresses</a></li>
                                    <li><a href="#">Tops</a></li>
                                    <li><a href="#">Sweaters/Knits</a></li>
                                    <li><a href="#">Jackets/Coats</a></li>
                                </ul>
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
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </header>
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

    <div class="breadcrumbs">
        <div class="container breadcrumbsInside tac">
            <section>
                <a href="#">New Arrivals</a>
            </section>
            <ul class="breadcrumbs-Li">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Men</a></li>
                <li><a href="#">New Arrivals</a></li>
            </ul>
        </div>
    </div>

    <div class="productSite">
        <div class="container productSiteInside">
            <div class="productSiteLeft">
                <details>
                    <summary>category</summary>
                    <ul class="categoryMenu">
                        <li><a class="textMenu categoryMenu__textMenu" href="">Accessories</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Bags</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Denim</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Hoodies & Sweatshirts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Jackets & Coats</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Pants</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Polos</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Shirts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Shoes</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Shorts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Sweaters & Knits</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">T-Shirts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Tanks</a></li>
                    </ul>
                </details>

                <details>
                    <summary>BRAND</summary>
                    <ul class="categoryMenu">
                        <li><a class="textMenu categoryMenu__textMenu" href="">Accessories</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Bags</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Denim</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Hoodies & Sweatshirts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Jackets & Coats</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Pants</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Polos</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Shirts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Shoes</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Shorts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Sweaters & Knits</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">T-Shirts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Tanks</a></li>
                    </ul>
                </details>
                <details>
                    <summary>dESIGNER</summary>
                    <ul class="categoryMenu">
                        <li><a class="textMenu categoryMenu__textMenu" href="">Accessories</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Bags</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Denim</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Hoodies & Sweatshirts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Jackets & Coats</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Pants</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Polos</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Shirts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Shoes</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Shorts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Sweaters & Knits</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">T-Shirts</a></li>
                        <li><a class="textMenu categoryMenu__textMenu" href="">Tanks</a></li>
                    </ul>
                </details>

            </div>

            <div class="productSiteRight">

                <div class="productSiteRightMenu">
                    <div class="productSiteRightMenuThird">
                        <section>
                            <h3 class="textMenuUppercase">Trending now</h3>
                            <div class="productSiteRightMenuTrending">
                                <a href="#" class="textMenu productSiteRightMenuTrending__textMenu">Bohemian</a>
                                <a href="#" class="textMenu productSiteRightMenuTrending__textMenu">Floral</a>
                                <a href="#" class="textMenu productSiteRightMenuTrending__textMenu">Lace</a>
                                <a href="#" class="textMenu productSiteRightMenuTrending__textMenu">Floral</a>
                                <a href="#" class="textMenu productSiteRightMenuTrending__textMenu">Lace</a>
                                <a href="#" class="textMenu productSiteRightMenuTrending__textMenu">Bohemian</a>
                            </div>
                        </section>
                    </div>
                    <div class="productSiteRightMenuThird">
                        <section>
                            <h3 class="textMenuUppercase">Trending now</h3>
                            <div class="productSiteRightMenuSize">
                                <label for="xxs" class="textMenuUppercase productSiteRightMenuSize__textMenuUppercase">
                                    <input id="xxs" type="checkbox">
                                    <span class="pseudocheckbox">xxs</span>
                                </label>
                                <label for="xs" class="textMenuUppercase productSiteRightMenuSize__textMenuUppercase">
                                    <input id="xs" type="checkbox">
                                    <span class="pseudocheckbox">xs</span>
                                </label>
                                <label for="s" class="textMenuUppercase productSiteRightMenuSize__textMenuUppercase">
                                    <input id="s" type="checkbox">
                                    <span class="pseudocheckbox">s</span>
                                </label>
                                <label for="m" class="textMenuUppercase productSiteRightMenuSize__textMenuUppercase">
                                    <input id="m" type="checkbox">
                                    <span class="pseudocheckbox">m</span>
                                </label>
                                <label for="l" class="textMenuUppercase productSiteRightMenuSize__textMenuUppercase">
                                    <input id="l" type="checkbox">
                                    <span class="pseudocheckbox">l</span>
                                </label>
                                <label for="xl" class="textMenuUppercase productSiteRightMenuSize__textMenuUppercase">
                                    <input id="xl" type="checkbox">
                                    <span class="pseudocheckbox">xl</span>
                                </label>
                                <label for="xxl" class="textMenuUppercase productSiteRightMenuSize__textMenuUppercase">
                                    <input id="xxl" type="checkbox">
                                    <span class="pseudocheckbox">xxl</span>
                                </label>
                            </div>
                        </section>
                    </div>
                    <div class="productSiteRightMenuThird">
                        <section>
                            <h3 class="textMenuUppercase">pRICE</h3>
                            <div class="productSiteRightMenuRange">
                                <div id="slider-range"></div>
                                <div class="MenuRangeAmount">
                                    <input type="text" id="amountFor" readonly>
                                    <input type="text" id="amountTo" readonly>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>

                <div class="productSiteRighSortBy">
                    <div class="productSiteRighSortByBlock">
                        <h3 class="textMenu productSiteRighSortByBlock__textMenu">Sort By</h3>
                        <select class="textMenu productSiteRighSortByBlock__textMenu" name="sortBy">
	                        <option>Name</option>
	                        <option>Size</option>
	                        <option>Price</option>
	                        <option>Color</option>
                        </select>
                    </div>
                    <div class="productSiteRighSortByBlock">
                        <h3 class="textMenu productSiteRighSortByBlock__textMenu">Show</h3>
                        <select class="textMenu productSiteRighSortByBlock__textMenu" name="sortBy">
	                        <option>09</option>
	                        <option>08</option>
	                        <option>07</option>
	                        <option>05</option>
                        </select>
                    </div>
                </div>

                <div class="productSiteRight-bottom">
                    <div class="block productSiteRight-bottom__block">
                        <a href="singlePage.html" class="product">
                    <img class="productFoto" src="img/product/Layer%202.jpg">
                    <div class="productInf">
                        <p class="productName tac">Mango  People  T-shirt</p>
                        <span class="productPrice">$52.00</span>
                    </div>
                </a>
                        <div class="add-to-cart">
                            <a href="#" class="add-to-cart-btn tac">
                        <img src="img/product/copyBasket.png">
                        <span>Add to Cart</span>
                    </a>
                        </div>
                    </div>

                    <div class="block productSiteRight-bottom__block">
                        <a href="singlePage.html" class="product">
                    <img class="productFoto" src="img/product/Layer%203.jpg">
                    <div class="productInf">
                        <p class="productName tac">Mango  People  T-shirt</p>
                        <span class="productPrice">$52.00</span>
                    </div>
                </a>
                        <div class="add-to-cart">
                            <a href="#" class="add-to-cart-btn tac">
                        <img src="img/product/copyBasket.png">
                        <span>Add to Cart</span>
                    </a>
                        </div>
                    </div>

                    <div class="block productSiteRight-bottom__block">
                        <a href="singlePage.html" class="product">
                    <img class="productFoto" src="img/product/Layer%205.jpg">
                    <div class="productInf">
                        <p class="productName tac">Mango  People  T-shirt</p>
                        <span class="productPrice">$52.00</span>
                    </div>
                </a>
                        <div class="add-to-cart">
                            <a href="#" class="add-to-cart-btn tac">
                        <img src="img/product/copyBasket.png">
                        <span>Add to Cart</span>
                    </a>
                        </div>
                    </div>

                    <div class="block productSiteRight-bottom__block">
                        <a href="singlePage.html" class="product">
                    <img class="productFoto" src="img/product/Layer%206.jpg">
                    <div class="productInf">
                        <p class="productName tac">Mango  People  T-shirt</p>
                        <span class="productPrice">$52.00</span>
                    </div>
                </a>
                        <div class="add-to-cart">
                            <a href="#" class="add-to-cart-btn tac">
                        <img src="img/product/copyBasket.png">
                        <span>Add to Cart</span>
                    </a>
                        </div>
                    </div>

                    <div class="block productSiteRight-bottom__block">
                        <a href="singlePage.html" class="product">
                    <img class="productFoto" src="img/product/Layer%207.jpg">
                    <div class="productInf">
                        <p class="productName tac">Mango  People  T-shirt</p>
                        <span class="productPrice">$52.00</span>
                    </div>
                </a>
                        <div class="add-to-cart">
                            <a href="#" class="add-to-cart-btn tac">
                        <img src="img/product/copyBasket.png">
                        <span>Add to Cart</span>
                    </a>
                        </div>
                    </div>

                    <div class="block productSiteRight-bottom__block">
                        <a href="singlePage.html" class="product">
                    <img class="productFoto" src="img/product/Layer%208.jpg">
                    <div class="productInf">
                        <p class="productName tac">Mango  People  T-shirt</p>
                        <span class="productPrice">$52.00</span>
                    </div>
                </a>
                        <div class="add-to-cart">
                            <a href="#" class="add-to-cart-btn tac">
                        <img src="img/product/copyBasket.png">
                        <span>Add to Cart</span>
                    </a>
                        </div>
                    </div>

                    <div class="block productSiteRight-bottom__block">
                        <a href="singlePage.html" class="product">
                    <img class="productFoto" src="img/product/Layer%209.jpg">
                    <div class="productInf">
                        <p class="productName tac">Mango  People  T-shirt</p>
                        <span class="productPrice">$52.00</span>
                    </div>
                </a>
                        <div class="add-to-cart">
                            <a href="#" class="add-to-cart-btn tac">
                        <img src="img/product/copyBasket.png">
                        <span>Add to Cart</span>
                    </a>
                        </div>
                    </div>

                    <div class="block productSiteRight-bottom__block">
                        <a href="singlePage.html" class="product">
                    <img class="productFoto" src="img/product/Layer%202.jpg">
                    <div class="productInf">
                        <p class="productName tac">Mango  People  T-shirt</p>
                        <span class="productPrice">$52.00</span>
                    </div>
                </a>
                        <div class="add-to-cart">
                            <a href="#" class="add-to-cart-btn tac">
                        <img src="img/product/copyBasket.png">
                        <span>Add to Cart</span>
                    </a>
                        </div>
                    </div>

                    <div class="block productSiteRight-bottom__block">
                        <a href="singlePage.html" class="product">
                    <img class="productFoto" src="img/product/Layer%202.jpg">
                    <div class="productInf">
                        <p class="productName tac">Mango  People  T-shirt</p>
                        <span class="productPrice">$52.00</span>
                    </div>
                </a>
                        <div class="add-to-cart">
                            <a href="#" class="add-to-cart-btn tac">
                        <img src="img/product/copyBasket.png">
                        <span>Add to Cart</span>
                    </a>
                        </div>
                    </div>
                </div>

                <div class="productSiteRightViewAll">

                </div>
            </div>
        </div>
    </div>

    <div class="feature">
        <div class="container featureProduct">
            <div class="featureInf featureProduct__featureInf">
                <div class="featureInfBlok featureProduct__featureInfBlok">
                    <img src="img/feature/FreeDelivery.png">
                    <section>
                        <h1>Free Delivery</h1>
                        <article>
                            <p>Worldwide delivery on&nbsp;all. Authorit tively morph next-&nbsp;generation innov tion with extensive models.</p>
                        </article>
                    </section>
                </div>
                <div class="featureInfBlok featureProduct__featureInfBlok">
                    <img src="img/feature/Sales.png">
                    <section>
                        <h1>Sales & discounts</h1>
                        <article>
                            <p>Worldwide delivery on&nbsp;all. Authorit tively morph next-&nbsp;generation innov tion with extensive models.</p>
                        </article>
                    </section>
                </div>
                <div class="featureInfBlok featureProduct__featureInfBlok">
                    <img src="img/feature/Quality.png">
                    <section>
                        <h1>Quality assurance</h1>
                        <article>
                            <p>Worldwide delivery on&nbsp;all. Authorit tively morph next-&nbsp;generation innov tion with extensive models.</p>
                        </article>
                    </section>
                </div>
            </div>
        </div>
    </div>


    <div class="subscribe">
        <div class="container subscribeInside">
            <div class="subscribeHalfLeft">
                <aside>
                    <div class="subscribeComment">
                        <img src="img/Subscribe/userFoto.png">
                        <div class="subscribeCommentText">
                            <p id="text">“Vestibulum quis porttitor dui! Quisque viverra nunc mi, a pulvinar purus condimentum a. Aliquam condimentum mattis neque sed pretium”</p>
                            <p id="name">Bin Burhan</p>
                            <p id="country">Dhaka, Bd</p>
                        </div>
                    </div>
                </aside>
            </div>
            <div class="subscribeHalfRight">
                <div class="subscribeHalfRight-text">
                    <h1>Subscribe</h1>
                    <h2>FOR OUR NEWLETTER AND PROMOTION</h2>
                </div>
                <div class="subscribeHalfRight-form">
                    <input type="email" placeholder="Enter Your Email">
                    <button type="submit">Subscribe</button>
                </div>
            </div>
        </div>
    </div>

    <footer class="footerInf">
        <div class="container footerInfIncide">
            <div class="footerInfIncide-brand">
                <a href="#" class="logo">bren<span>d</span></a>
                <p>Objectively transition extensive data rather than cross functional solutions. Monotonectally syndicate multidisciplinary materials before go forward benefits. Intrinsicly syndicate an expanded array of processes and cross-unit partnerships.</p>
                <p>Efficiently plagiarize 24/365 action items and focusedinfomediaries. Distinctively seize superior initiatives for wireless technologies. Dynamically optimize.</p>
            </div>
            <div class="footerInfIncide-blok">
                <h1>COMPANY</h1>
                <div class="footerIncide-blok-flex">
                    <a href="index.html">Home</a>
                    <a href="#">Shop</a>
                    <a href="#">About</a>
                    <a href="#">How It Works</a>
                    <a href="#">Contact</a>
                </div>
            </div>
            <div class="footerInfIncide-blok">
                <h1>INFORMATION</h1>
                <div class="footerIncide-blok-flex">
                    <a href="#">Tearms & Condition</a>
                    <a href="#">Privacy Policy</a>
                    <a href="#">How to Buy</a>
                    <a href="#">How to Sell</a>
                    <a href="#">Promotion</a>
                </div>
            </div>
            <div class="footerInfIncide-blok">
                <h1>SHOP CATEGORY</h1>
                <div class="footerIncide-blok-flex">
                    <a href="#">Men</a>
                    <a href="#">Women</a>
                    <a href="#">Child</a>
                    <a href="#">Apparel</a>
                    <a href="#">Brows All</a>
                </div>
            </div>
        </div>
    </footer>

    <footer class="footerSocial">
        <div class="container footerSocialIncide">
            <p>&copy; 2017 Brand All Rights Reserved.</p>
            <div class="socialIcons">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
                <a href="#"><i class="fab fa-pinterest-p"></i></a>
                <a href="#"><i class="fab fa-google-plus-square"></i></a>
            </div>
        </div>
    </footer>

</body>

</html>
