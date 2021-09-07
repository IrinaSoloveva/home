<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Checkout</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/themes/sunny/jquery-ui.css">
	<script src="js/jsCheckout.js"></script>
    <link href="packages/icons/fontawesome-free-5.0.13/web-fonts-with-css/css/fontawesome-all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <link href="style/style.css" rel="stylesheet">
    
    <script>
        $(document).ready(function() {
            $('.checkNone').hide();
            $('#showCheckBlock01').on('click', function() {
                $('#checkNone01').slideToggle();
            })
            $('#showCheckBlock02').on('click', function() {
                $('#checkNone02').slideToggle();
            })
            $('#showCheckBlock03').on('click', function() {
                $('#checkNone03').slideToggle();
            })
            $('#showCheckBlock04').on('click', function() {
                $('#checkNone04').slideToggle();
            })
            $('#showCheckBlock05').on('click', function() {
                $('#checkNone05').slideToggle();
            })
            $('#showCheckBlock06').on('click', function() {
                $('#checkNone06').slideToggle();
            })
        })

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

    <div class="checkoutSite">
        <div class="container">
            <div class="checkUnit">
                <div class="checkBlock">
                    <a href="#" onclick="return false" id="showCheckBlock01" class="textMenuUppercaseCheck checkBlock__textMenuUppercaseCheck textMenuUppercaseCheck_big">01. &nbsp Shipping Adress</a>
                </div>
                <div id="checkNone01" class="checkNone">
                    <form  class="checkNoneLeft userInformation" id="registerCheckForm">
                        <div class="checkNoneLeft-block">
                            <p class="textMenuUppercaseCheck">Check as a guest or register</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">Register with us for future convenience</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <div>
                                <input type="radio" name="registerInf" value="guest" id="guest">
                                <label class="textMenuUppercaseCheck checkNoneLeft-block__textMenuUppercaseCheck textMenuUppercaseCheck_small" for="guest">checkout as guest</label>
                            </div>
                            <div>
                                <input type="radio" name="registerInf" value="register" id="register">
                                <label class="textMenuUppercaseCheck checkNoneLeft-block__textMenuUppercaseCheck  textMenuUppercaseCheck_small" for="register">register</label>
                            </div>
                            <div id="log"></div>
                        </div>
                        <div class="checkNoneLeft-block">
                            <p class="textMenuUppercaseCheck">register and save time!</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">Register with us for future convenience</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <p class="textMenuCheck">&raquo&nbsp Fast and easy checkout</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">&raquo&nbsp Easy access to your order history and status</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <input type="submit" value="Continue" class="checkNoneLeftBtn">
                        </div>
                    </form>
                    <form class="checkNoneRight userInformation" id="registerForm">
                        <div class="checkNoneRight-block">
                            <p class="textMenuUppercaseCheck checkNoneRight-block__textMenuUppercaseCheck">Already registed?</p>
                            <span class="textMenuCheck">Please log in below</span>
                        </div>
                        <div class="checkNoneRight-block">
                            <label for="email" class="textMenuUppercaseCheck  checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">Already registed?<em>*</em></label>
                            <input id="email" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck" placeholder="email@server.com" required>
                        </div>
                        <div class="checkNoneRight-block">
                            <label for="userPassword" class="textMenuUppercaseCheck checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">PASSWORD<em>*</em></label>
                            <input id="userPassword" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck" type="password">
                        </div>
                        <div class="checkNoneRight-block">
                            <span class="textMenuCheck textMenuCheck_red">* Required Fileds</span>
                        </div>
                        <div class="checkNoneRight-block">
                            <div class="checkNoneRight-blockFlex">
                                <input type="submit" value="Log in" class="checkNoneLeftBtn checkNoneRight-blockFlex__checkNoneLeftBtn">
                                <a href="#" class="textMenu checkNoneRight-block__textMenu">Forgot Password ?</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="checkUnit">
                <div class="checkBlock">
                    <a href="#" onclick="return false" id="showCheckBlock02" class="textMenuUppercaseCheck checkBlock__textMenuUppercaseCheck textMenuUppercaseCheck_big">02. &nbsp Billing information</a>
                </div>
                <div id="checkNone02" class="checkNone">
                    <form class="userInformation" id="userContactForm">
                        <div class="checkNoneLeft">
                            <div class="checkNoneLeft-block">
                            <p class="textMenuUppercaseCheck">register and save time!</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">Register with us for future convenience</span>
                        </div>
                            <div class="checkNoneLeft-block">
                            <label for="firstName" class="textMenuUppercaseCheck  checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">First Name<em>*</em></label>
                            <input id="firstName" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck">
                        </div>
                            <div class="checkNoneLeft-block">
                            <label for="lastName" class="textMenuUppercaseCheck  checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">Last Name<em>*</em></label>
                            <input id="lastName" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck">
                        </div>
                            <div class="checkNoneLeft-block">
                            <p class="textMenuCheck">&raquo&nbsp Fast and easy checkout</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">&raquo&nbsp Easy access to your order history and status</span>
                        </div>
                        </div>
                        <div class="checkNoneRight">
                            <div class="checkNoneRight-block">
                            <label for="birthday" class="textMenuUppercaseCheck  checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">birthday</label>
                            <input id="birthday" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck">
                        </div>
                            <div class="checkNoneRight-block">
                            <label for="city" class="textMenuUppercaseCheck  checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">City</label>
                            <input id="city" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck">
                        </div>
                            <div class="checkNoneRight-block">
                            <label for="phone" class="textMenuUppercaseCheck  checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">Phone<em>*</em></label>
                            <input id="phone" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck">
                        </div>
                            <div class="checkNoneRight-block">
                            <span class="textMenuCheck textMenuCheck_red">* Required Fileds</span>
                        </div>
                            <div class="checkNoneRight-block">
                                <div class="checkNoneRight-blockFlex">
                                <input type="submit" value="Save" class="checkNoneLeftBtn checkNoneRight-blockFlex__checkNoneLeftBtn">
                                <a href="#" class="textMenu checkNoneRight-block__textMenu">Forgot Password ?</a>
                            </div>
                            </div>
                        </div>
                    </form>
            </div>
            <div class="checkUnit">
                <div class="checkBlock">
                    <a href="#" onclick="return false" id="showCheckBlock03" class="textMenuUppercaseCheck checkBlock__textMenuUppercaseCheck textMenuUppercaseCheck_big">03. &nbsp Shipping information</a>
                </div>
                <div id="checkNone03" class="checkNone">
                    <div class="checkNoneLeft">
                        <div class="checkNoneLeft-block">
                            <p class="textMenuUppercaseCheck">Check as a guest or register</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">Register with us for future convenience</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <form>
                                <div>
                                    <input type="radio" name="registerInf" value="guest" id="guest03">
                                    <label class="textMenuUppercaseCheck checkNoneLeft-block__textMenuUppercaseCheck textMenuUppercaseCheck_small" for="guest03">checkout as guest</label>
                                </div>
                                <div>
                                    <input type="radio" name="registerInf" value="register" id="register03">
                                    <label class="textMenuUppercaseCheck checkNoneLeft-block__textMenuUppercaseCheck  textMenuUppercaseCheck_small" for="register03">register</label>
                                </div>
                                <div id="log"></div>
                            </form>
                        </div>
                        <div class="checkNoneLeft-block">
                            <p class="textMenuUppercaseCheck">register and save time!</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">Register with us for future convenience</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <p class="textMenuCheck">&raquo&nbsp Fast and easy checkout</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">&raquo&nbsp Easy access to your order history and status</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <a href="#" class="checkNoneLeftBtn">Continue</a>
                        </div>
                    </div>
                    <div class="checkNoneRight">
                        <div class="checkNoneRight-block">
                            <p class="textMenuUppercaseCheck checkNoneRight-block__textMenuUppercaseCheck">Already registed?</p>
                            <span class="textMenuCheck">Please log in below</span>
                        </div>
                        <div class="checkNoneRight-block">
                            <label for="email" class="textMenuUppercaseCheck  checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">Already registed?<em>*</em></label>
                            <input id="email" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck" placeholder="email@server.com" required pattern="\S+@[a-z]+.[a-z]+">
                        </div>
                        <div class="checkNoneRight-block">
                            <label for="userPassword" class="textMenuUppercaseCheck checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">PASSWORD<em>*</em></label>
                            <input id="userPassword" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck" type="password">
                        </div>
                        <div class="checkNoneRight-block">
                            <span class="textMenuCheck textMenuCheck_red">* Required Fileds</span>
                        </div>
                        <div class="checkNoneRight-block">
                            <div class="checkNoneRight-blockFlex">
                                <a href="#" class="checkNoneLeftBtn checkNoneRight-blockFlex__checkNoneLeftBtn">Log in</a>
                                <a href="#" class="textMenu checkNoneRight-block__textMenu">Forgot Password ?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="checkUnit">
                <div class="checkBlock">
                    <a href="#" onclick="return false" id="showCheckBlock04" class="textMenuUppercaseCheck checkBlock__textMenuUppercaseCheck textMenuUppercaseCheck_big">04. &nbsp Shipping method</a>
                </div>
                <div id="checkNone04" class="checkNone">
                    <div class="checkNoneLeft">
                        <div class="checkNoneLeft-block">
                            <p class="textMenuUppercaseCheck">Check as a guest or register</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">Register with us for future convenience</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <form>
                                <div>
                                    <input type="radio" name="registerInf" value="guest" id="guest04">
                                    <label class="textMenuUppercaseCheck checkNoneLeft-block__textMenuUppercaseCheck textMenuUppercaseCheck_small" for="guest04">checkout as guest</label>
                                </div>
                                <div>
                                    <input type="radio" name="registerInf" value="register" id="register04">
                                    <label class="textMenuUppercaseCheck checkNoneLeft-block__textMenuUppercaseCheck  textMenuUppercaseCheck_small" for="register04">register</label>
                                </div>
                                <div id="log"></div>
                            </form>
                        </div>
                        <div class="checkNoneLeft-block">
                            <p class="textMenuUppercaseCheck">register and save time!</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">Register with us for future convenience</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <p class="textMenuCheck">&raquo&nbsp Fast and easy checkout</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">&raquo&nbsp Easy access to your order history and status</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <a href="#" class="checkNoneLeftBtn">Continue</a>
                        </div>
                    </div>
                    <div class="checkNoneRight">
                        <div class="checkNoneRight-block">
                            <p class="textMenuUppercaseCheck checkNoneRight-block__textMenuUppercaseCheck">Already registed?</p>
                            <span class="textMenuCheck">Please log in below</span>
                        </div>
                        <div class="checkNoneRight-block">
                            <label for="email" class="textMenuUppercaseCheck  checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">Already registed?<em>*</em></label>
                            <input id="email" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck" placeholder="email@server.com" required pattern="\S+@[a-z]+.[a-z]+">
                        </div>
                        <div class="checkNoneRight-block">
                            <label for="userPassword" class="textMenuUppercaseCheck checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">PASSWORD<em>*</em></label>
                            <input id="userPassword" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck" type="password">
                        </div>
                        <div class="checkNoneRight-block">
                            <span class="textMenuCheck textMenuCheck_red">* Required Fileds</span>
                        </div>
                        <div class="checkNoneRight-block">
                            <div class="checkNoneRight-blockFlex">
                                <a href="#" class="checkNoneLeftBtn checkNoneRight-blockFlex__checkNoneLeftBtn">Log in</a>
                                <a href="#" class="textMenu checkNoneRight-block__textMenu">Forgot Password ?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="checkUnit">
                <div class="checkBlock">
                    <a href="#" onclick="return false" id="showCheckBlock05" class="textMenuUppercaseCheck checkBlock__textMenuUppercaseCheck textMenuUppercaseCheck_big">05. &nbsp payment method</a>
                </div>
                <div id="checkNone05" class="checkNone">
                    <div class="checkNoneLeft">
                        <div class="checkNoneLeft-block">
                            <p class="textMenuUppercaseCheck">Check as a guest or register</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">Register with us for future convenience</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <form>
                                <div>
                                    <input type="radio" name="registerInf" value="guest" id="guest05">
                                    <label class="textMenuUppercaseCheck checkNoneLeft-block__textMenuUppercaseCheck textMenuUppercaseCheck_small" for="guest05">checkout as guest</label>
                                </div>
                                <div>
                                    <input type="radio" name="registerInf" value="register" id="register05">
                                    <label class="textMenuUppercaseCheck checkNoneLeft-block__textMenuUppercaseCheck  textMenuUppercaseCheck_small" for="register05">register</label>
                                </div>
                                <div id="log"></div>
                            </form>
                        </div>
                        <div class="checkNoneLeft-block">
                            <p class="textMenuUppercaseCheck">register and save time!</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">Register with us for future convenience</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <p class="textMenuCheck">&raquo&nbsp Fast and easy checkout</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">&raquo&nbsp Easy access to your order history and status</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <a href="#" class="checkNoneLeftBtn">Continue</a>
                        </div>
                    </div>
                    <div class="checkNoneRight">
                        <div class="checkNoneRight-block">
                            <p class="textMenuUppercaseCheck checkNoneRight-block__textMenuUppercaseCheck">Already registed?</p>
                            <span class="textMenuCheck">Please log in below</span>
                        </div>
                        <div class="checkNoneRight-block">
                            <label for="email" class="textMenuUppercaseCheck  checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">Already registed?<em>*</em></label>
                            <input id="email" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck" placeholder="email@server.com" required pattern="\S+@[a-z]+.[a-z]+">
                        </div>
                        <div class="checkNoneRight-block">
                            <label for="userPassword" class="textMenuUppercaseCheck checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">PASSWORD<em>*</em></label>
                            <input id="userPassword" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck" type="password">
                        </div>
                        <div class="checkNoneRight-block">
                            <span class="textMenuCheck textMenuCheck_red">* Required Fileds</span>
                        </div>
                        <div class="checkNoneRight-block">
                            <div class="checkNoneRight-blockFlex">
                                <a href="#" class="checkNoneLeftBtn checkNoneRight-blockFlex__checkNoneLeftBtn">Log in</a>
                                <a href="#" class="textMenu checkNoneRight-block__textMenu">Forgot Password ?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="checkUnit">
                <div class="checkBlock">
                    <a href="#" onclick="return false" id="showCheckBlock06" class="textMenuUppercaseCheck checkBlock__textMenuUppercaseCheck textMenuUppercaseCheck_big">06. &nbsp order review</a>
                </div>
                <div id="checkNone06" class="checkNone">
                    <div class="checkNoneLeft">
                        <div class="checkNoneLeft-block">
                            <p class="textMenuUppercaseCheck">Check as a guest or register</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">Register with us for future convenience</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <form>
                                <div>
                                    <input type="radio" name="registerInf" value="guest" id="guest06">
                                    <label class="textMenuUppercaseCheck checkNoneLeft-block__textMenuUppercaseCheck textMenuUppercaseCheck_small" for="guest06">checkout as guest</label>
                                </div>
                                <div>
                                    <input type="radio" name="registerInf" value="register" id="register06">
                                    <label class="textMenuUppercaseCheck checkNoneLeft-block__textMenuUppercaseCheck  textMenuUppercaseCheck_small" for="register06">register</label>
                                </div>
                                <div id="log"></div>
                            </form>
                        </div>
                        <div class="checkNoneLeft-block">
                            <p class="textMenuUppercaseCheck">register and save time!</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">Register with us for future convenience</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <p class="textMenuCheck">&raquo&nbsp Fast and easy checkout</p>
                            <span class="textMenuCheck checkNoneLeft-block__textMenuCheck">&raquo&nbsp Easy access to your order history and status</span>
                        </div>
                        <div class="checkNoneLeft-block">
                            <a href="#" class="checkNoneLeftBtn">Continue</a>
                        </div>
                    </div>
                    <div class="checkNoneRight">
                        <div class="checkNoneRight-block">
                            <p class="textMenuUppercaseCheck checkNoneRight-block__textMenuUppercaseCheck">Already registed?</p>
                            <span class="textMenuCheck">Please log in below</span>
                        </div>
                        <div class="checkNoneRight-block">
                            <label for="email" class="textMenuUppercaseCheck  checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">Already registed?<em>*</em></label>
                            <input id="email" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck" placeholder="email@server.com" required pattern="\S+@[a-z]+.[a-z]+">
                        </div>
                        <div class="checkNoneRight-block">
                            <label for="userPassword" class="textMenuUppercaseCheck checkNoneRight-block__textMenuUppercaseCheck textMenuUppercaseCheck_small">PASSWORD<em>*</em></label>
                            <input id="userPassword" class="inpCheckNoneRight inpCheckNoneRight__textMenuCheck" type="password">
                        </div>
                        <div class="checkNoneRight-block">
                            <span class="textMenuCheck textMenuCheck_red">* Required Fileds</span>
                        </div>
                        <div class="checkNoneRight-block">
                            <div class="checkNoneRight-blockFlex">
                                <a href="#" class="checkNoneLeftBtn checkNoneRight-blockFlex__checkNoneLeftBtn">Log in</a>
                                <a href="#" class="textMenu checkNoneRight-block__textMenu">Forgot Password ?</a>
                            </div>
                        </div>
                    </div>
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
