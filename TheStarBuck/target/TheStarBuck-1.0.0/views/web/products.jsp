<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- Favicon -->
  <link rel="shortcut icon" href="./images/logo.png" type="image/png" />
  <!--jquery-ui css-->
  <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
  <!-- Boxicons -->
  <link href='https://unpkg.com/boxicons@2.0.8/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <!--custom navigation-->
  <link rel="stylesheet" href="css/navigation.css" />
  <!--custom footer-->
  <link rel="stylesheet" href="css/footer.css" />
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="css/product.css" />
  <!--modal-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <title>Menu</title>
</head>

<body>

  <!-- Navigation -->
  <nav id="header" class="nav">
    <div class="wrapper container">
      <div class="logo"><a href="index.jsp">
          <img src="./images/logo.png" alt="">
        </a>
      </div>
      <ul class="nav-list">
        <div class="top">
          <label for="" class="btn close-btn"><i class="fas fa-times"></i></label>
        </div>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="products.jsp">Menu</a></li>
        <li><a href="poster.jsp">Blog</a></li>


        <li>
          <a href="" class="desktop-item">Page <span><i class="fas fa-chevron-down"></i></span></a>
          <input type="checkbox" id="showdrop2" />
          <label for="showdrop2" class="mobile-item">Page <span><i class="fas fa-chevron-down"></i></span></label>
          <ul class="drop-menu2">
            <li><a href="aboutUs.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact</a></li>
          </ul>
        </li>

        <!-- icons -->
        <!-- <li class="icons"> -->
          <li class="icons">
            <a href="#">
              <span class="searchBt"><img src="./images/search.svg" alt="" /></span>
            </a>
          </li>
          <li class="icons">
            <a href="cart.jsp">
              <span>
                <img src="./images/shoppingBag.svg" alt="" />
                <small class="count d-flex">5</small>
              </span>
            </a>
          </li>
          <li class="icons login">
            <a href="login.html" class="desktop-item" style="float: left;">
              <span>
                <img src="./images/user.svg" alt="" />
              </span>
            </a>
            <input type="checkbox" id="showdrop1" />
            <label for="showdrop1" class="mobile-item"><span><i class="fas fa-chevron-down"></i></span></label>
            <ul class="drop-menu1">
              <li><a href="profileAccount.jsp" id="manual-ajax">Profile</a></li>
              <li><a href="changePass.jsp">Change password</a></li>
              <li><a href="index.jsp">Logout</a></li>
            </ul>
            <!-- <a href="login.html"">
              <span>
                <img src="./images/user.svg" alt="" />
              </span>
             
              <ul class="drop-menu2">
                <li><a href="#">Profile</a></li>
                <li><a href="changePass.jsp">Change password</a></li>
                <li><a href="#">Logout</a></li>
              </ul>
            </a> -->
          </li>
          
        <!-- </li> -->
      </ul>
      <label for="" class="btn open-btn"><i class="fas fa-bars"></i></label>
    </div>
  </nav>
  <!-- Navigation -->
  <!-- serchBar -->
  <section class="ipSearchBox"></section>
  <!-- PRODUCTS -->

  <section class="section products">
    <div class="products-layout container bootdey">
      <div class="col-1-of-5">
        <section class="panel">
          <div class="panel-body">
            <input type="text" placeholder="Keyword Search" class="form-control" />
          </div>
        </section>
        <section class="panel">
          <header class="panel-heading">
            Category
          </header>
          <div class="panel-body">
            <ul class="nav prod-cat">
              <li >
                <a href="#"><i class="fa fa-angle-right"></i> Espresso</a>
                <ul class="nav" style="display:none;">
                  <li><a href="#">- Ristretto</a></li>
                  <li><a href="#">- Normal</a></li>
                  <li><a href="#">- Lungo</a></li>
                </ul>
              </li>
              <li>
                <a href="#"><i class="fa fa-angle-right"></i> Latte</a>
                <ul class="nav" style="display:none;">
                  <li><a href="#">- Caffe Latte</a></li>
                  <li><a href="#">- Cinnamon Dolce Latte</a></li>
                  <li><a href="#">- Reserve Latte</a></li>
                  <li><a href="#">- Bianco Latte</a></li>
                  <li><a href="#">- Blonde Vanilla Latte</a></li>
                  <li><a href="#">- Caramel Macchiato</a></li>
                  <li><a href="#">- Caffe Mocha</a></li>
                </ul>
              </li>
              <li>
                <a href="#"><i class="fa fa-angle-right"></i> Cappuccino</a>
                <ul class="nav" style="display:none;">
                  <li><a href="#">- Caffe Latte</a></li>
                  <li><a href="#">- Cinnamon Dolce Latte</a></li>
                </ul>
              </li>
              <li>
                <a href="#"><i class="fa fa-angle-right"></i> Americano</a>
              </li>
              <li>
                <a href="#"><i class="fa fa-angle-right"></i> Milk Tea</a>
                <ul class="nav" style="display:none;">
                  <li><a href="#">- Green milk tea</a></li>
                  <li><a href="#">- Bubble milk tea</a></li>
                  <li><a href="#">- Blueberry milk tea</a></li>
                  <li><a href="#">- Mint milk tea</a></li>
                  <li><a href="#">- Mango milk tea</a></li>
                  <li><a href="#">- Peach milk tea</a></li>
                  <li><a href="#">- Thai green tea</a></li>
                  <li><a href="#">- Jasmine milk tea</a></li>
                </ul>
              </li>
              <li>
                <a href="#"><i class="fa fa-angle-right"></i> Beverage</a>
                <ul class="nav" style="display:none;">
                <li><a href="#">- Soda</a></li>
                <li><a href="#">- Non-soda</a></li>
              </ul>
              </li>
              <li>
                <a href="#"><i class="fa fa-angle-right"></i> Cake</a>
                <ul class="nav" style="display:none;">
                <li><a href="#">- Pancake</a></li>
                <li><a href="#">- Dorayaki</a></li>
                <li><a href="#">- Cupcake</a></li>
                <li><a href="#">- Donut</a></li>
                <li><a href="#">- Cheesecake</a></li>
              </li>
            </ul>
              <li>
                <a href="#"><i class="fa fa-angle-right"></i> Candy</a>
                <ul class="nav" style="display:none;">
                <li><a href="#">- Minty candy</a></li>
                <li><a href="#">- Fruit drops</a></li>
                <li><a href="#">- Sherbet</a></li>
                <li><a href="#">- Lolipop</a></li>
                <li><a href="#">- Beans</a></li>
              </li>
           
            </ul>
          </div>
        </section>
        <section class="panel">
          <header class="panel-heading">
            Price Range
          </header>
          <div class="panel-body sliders">
            <div class="slideblock">
              <div class=block1>
                <label for="from">From: $</label>
                <input type="text" id="from" name="from" style="border:0; color:#b9cd6d; font-weight:bold;">
              </div>
              <div class=block2>
                <label for="to">To: $</label>
                <input type="text" id="to" name="to" style="border:0; color:#b9cd6d; font-weight:bold;">
              </div>
            </div>
            <div id="slider-3"></div>
            <button type="submit" name="range" id="range" class="filterbtn">Range</button>
          </div>
        </section>
        <section class="panel">
          <header class="panel-heading">
            Filter
          </header>
          <div class="panel-body">
            <form role="form product-form">
              <div class="form-group">
                <label>Brand</label>
                <select class="form-control hasCustomSelect" id="selectBrand"
                  style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                  <option>StarBuck</option>
                  <option>Lays</option>
                  <option>Fritos</option>
                  <option>Lipton</option>
                </select>
                <span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner"
                    style="width: 209px; display: inline-block;">Wallmart</span></span>
              </div>
              <div class="form-group">
                <label>Color</label>
                <select class="form-control hasCustomSelect" id="selectColor"
                  style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                  <option>White</option>
                  <option>Black</option>
                  <option>Red</option>
                  <option>Green</option>
                </select>
                <span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner"
                    style="width: 209px; display: inline-block;">White</span></span>
              </div>
              <div class="form-group">
                <label>Type</label>
                <select class="form-control hasCustomSelect" id="selectType"
                  style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                  <option>Small</option>
                  <option>Medium</option>
                  <option>Large</option>
                  <option>Extra Large</option>
                </select>
                <span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner"
                    style="width: 209px; display: inline-block;">Small</span></span>
              </div>
              <button class="filterbtn" type="submit">Filter</button>
            </form>
          </div>
        </section>
      </div>
      <div class="col-3-of-4">
        <form action="">
          <div class="item">
            <label for="sort-by">Sort By</label>
            <select name="sort-by" id="sort-by">
              <option value="title" selected="selected">Name</option>
              <option value="number">Price</option>
              <option value="search_api_relevance">Relevance</option>
              <option value="created">Newness</option>
            </select>
          </div>
          <div class="item">
            <label for="order-by">Order</label>
            <select name="order-by" id="sort-by">
              <option value="ASC" selected="selected">ASC</option>
              <option value="DESC">DESC</option>
            </select>
          </div>
          <a href="">Apply</a>
        </form>

        <div class="categoryTitle">
          <h2>Món đặt biệt</h2>
        </div>
        <div class="product-layout">
          <!-- hien thi nhieu nhat 9 san pham -->
          <div class="product">
            <div class="img-container">
              <img src="./images/products/25.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span><i class="fas fa-sliders-h"></i></span>
              </ul>
            </div>
            <div class="bottom">
              <div class="price-rating">
                <div class="rating">
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                </div>
              </div>
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>
            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/26.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span><i class="fas fa-sliders-h"></i></span>
              </ul>
            </div>
            <div class="bottom">
              <div class="price-rating">
                <div class="rating">
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                </div>
              </div>
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>
            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/27.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span><i class="fas fa-sliders-h"></i></span>
              </ul>
            </div>
            <div class="bottom">
              <div class="price-rating">
                <div class="rating">
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                </div>
              </div>
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>
            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/28.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span><i class="fas fa-sliders-h"></i></span>
              </ul>
            </div>
            <div class="bottom">
              <div class="price-rating">
                <div class="rating">
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                </div>
              </div>
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>
            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/29.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span><i class="fas fa-sliders-h"></i></span>
              </ul>
            </div>
            <div class="bottom">
              <div class="price-rating">
                <div class="rating">
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                </div>
              </div>
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>
            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/30.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span><i class="fas fa-sliders-h"></i></span>
              </ul>
            </div>
            <div class="bottom">
              <div class="price-rating">
                <div class="rating">
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                </div>
              </div>
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>
            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/31.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span><i class="fas fa-sliders-h"></i></span>
              </ul>
            </div>
            <div class="bottom">
              <div class="price-rating">
                <div class="rating">
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                </div>
              </div>
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>
            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/32.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span><i class="fas fa-sliders-h"></i></span>
              </ul>
            </div>
            <div class="bottom">
              <div class="price-rating">
                <div class="rating">
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                </div>
              </div>
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>
            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/33.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span><i class="fas fa-sliders-h"></i></span>
              </ul>
            </div>
            <div class="bottom">
              <div class="price-rating">
                <div class="rating">
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                </div>
              </div>
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>
            </div>
          </div>

        </div>

        <!-- PAGINATION -->
        <ul class="pagination">
          <span>1</span>
          <span>2</span>
          <span class="icon">››</span>
          <span class="last">Last »</span>
        </ul>
      </div>
    </div>
  </section>
  <!-- messenger -->
  <div class="messenger">
    <a href=""><img src="images/mees.png" alt="" width="70px"></a>
  </div>
  <div class="up">
    <a href="#" class="iconUp"><i class="fa fa-arrow-circle-up"></i></a>
  </div>

  <!-- Footer -->
  <footer id="footer" class="section footer">
    <div class="container">
      <div class="footer-container">

        <div class="footer-center">
          <h3>INFORMATION</h3>
          <a href="#">About Us</a>
          <a href="#">Contact Us</a>
          <a href="#">Site Map</a>
        </div>

        <div class="footer-center">
          <h3>Social Media</h3>
          <div class="social_media">
            <span>
              <i class="fab fa-facebook"></i>
            </span>
            <a href="#">Facebook</a>


          </div>
          <div class="social_media">
            <span>
              <i class="fab fa-twitter"></i>
            </span>
            <a href="#">Twitter</a>

          </div>
          <div class="social_media">
            <span>
              <i class="fab fa-instagram"></i>
            </span>
            <a href="#">Instagram</a>

          </div>


        </div>
        <div class="footer-center">
          <h3>CONTACT US</h3>
          <div>
            <span>
              <i class="fas fa-map-marker-alt"></i>
            </span>
            42 Dream House, Dreammy street, 7131 Dreamville, USA
          </div>
          <div>
            <span>
              <i class="far fa-envelope"></i>
            </span>
            company@gmail.com
          </div>
          <div>
            <span>
              <i class="fas fa-phone"></i>
            </span>
            456-456-4512
          </div>
          <div class="payment-methods">
            <img src="./images/payment.png" alt="">
          </div>
        </div>
      </div>
    </div>
    </div>
  </footer>
  <!-- End Footer -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 <!-- jquery -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <!-- jQuery Modal -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <!-- Custom Scripts -->
  <script src="./js/product.js"></script>
</body>

</html>