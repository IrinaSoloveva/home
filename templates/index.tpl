<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="packages/icons/fontawesome-free-5.0.13/web-fonts-with-css/css/fontawesome-all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <link href="style/style.css" rel="stylesheet">
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
                {{MENU}}
            </ul>
        </div>
    </nav>

    <div class="theBrand tac">
        <section class="container brand">
            <div class="text-brand">
                <h2>THE BRAND</h2>
                <h3>OF LUXERIOUS <span>FASHION</span></h3>
            </div>
        </section>
    </div>

    <div class="container">
        <div class="category">
            <div class="categoryLeft">
                <div class="categoryPos">
                    <img src="img/category/1.jpg">
                    <div class="categoryTitel">
                        <p>HOT DEAL</p>
                        <span>FOR MEN</span>
                    </div>
                </div>
                <div class="categoryPos">
                    <img src="img/category/2.jpg">
                    <div class="categoryTitel">
                        <p>LUXIROUS & trendy</p>
                        <span>ACCESORIES</span>
                    </div>
                </div>
            </div>
            <div class="categoryRight">
                <div class="categoryPos">
                    <img src="img/category/3.jpg">
                    <div class="categoryTitel">
                        <p>30% offer</p>
                        <span>women</span>
                    </div>
                </div>
                <div class="categoryPos">
                    <img src="img/category/4.jpg">
                    <div class="categoryTitel">
                        <p>new arrivals</p>
                        <span>FOR kids</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container fetured-items tac">
        <section>
            <p>Fetured Items</p>
            <span>Shop for items based on what we featured in this week</span>
        </section>
    </div>

    <div class="productsAll">
        <div class="container">
            <div class="productUnit">
                <a href="singlePage.html" class="product">
                    <img src="img/product/Layer%202.jpg">
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

            <div class="productUnit">
                <a href="singlePage.html" class="product">
                    <img src="img/product/Layer%203.jpg">
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

            <div class="productUnit">
                <a href="singlePage.html" class="product">
                    <img src="img/product/Layer%205.jpg">
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

            <div class="productUnit">
                <a href="singlePage.html" class="product">
                    <img src="img/product/Layer%206.jpg">
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

            <div class="productUnit">
                <a href="singlePage.html" class="product">
                    <img src="img/product/Layer%207.jpg">
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

            <div class="productUnit">
                <a href="singlePage.html" class="product">
                    <img src="img/product/Layer%208.jpg">
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

            <div class="productUnit">
                <a href="singlePage.html" class="product">
                    <img src="img/product/Layer%209.jpg">
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

            <div class="productUnit">
                <a href="singlePage.html" class="product">
                    <img src="img/product/Layer%202.jpg">
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
    </div>

    <div class="container browse-all">
        <a href="#" class="browse-all-product">       
            <span>Browse All Product</span>
            <img src="img/BrowseAllProduct.png">
        </a>
    </div>

    <div class="container featureIndex">
        <div class="feature">
            <div class="featureBanner">
                <img src="img/feature/feature.jpg">
                <div class="featureBannerTxt">
                    <h1>30% <span>OFFER</span></h1>
                    <h2>FOR WOMEN</h2>
                </div>
            </div>
            <div class="featureInf featureIndex__featureInf">
                <div class="featureInfBlok featureIndex__featureInfBlok">
                    <img src="img/feature/FreeDelivery.png">
                    <section>
                        <h1>Free Delivery</h1>
                        <article>
                            <p>Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</p>
                        </article>
                    </section>
                </div>
                <div class="featureInfBlok featureIndex__featureInfBlok">
                    <img src="img/feature/Sales.png">
                    <section>
                        <h1>Sales & discounts</h1>
                        <article>
                            <p>Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</p>
                        </article>
                    </section>
                </div>
                <div class="featureInfBlok featureIndex__featureInfBlok">
                    <img src="img/feature/Quality.png">
                    <section>
                        <h1>Quality assurance</h1>
                        <article>
                            <p>Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</p>
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
                            <p id="text">???Vestibulum quis porttitor dui! Quisque viverra nunc mi, a pulvinar purus condimentum a. Aliquam condimentum mattis neque sed pretium???</p>
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
            <p>&copy; {{YEAR}} Brand All Rights Reserved.</p>
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
