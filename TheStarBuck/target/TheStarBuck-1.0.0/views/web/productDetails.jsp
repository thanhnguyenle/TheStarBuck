<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- Favicon -->
  <link rel="shortcut icon" href="./images/logo.png" type="image/png" />
  <!--Bootstrap 4 CSS -->
  <!--Important link from https://bootsnipp.com/snippets/XqvZr-->
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!------ Include the above in your HEAD tag ---------->
  
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800&display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
 <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"><div class="pd-wrap">
  <!-- animated -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
  <!--custom navigation-->
  <link rel="stylesheet" href="css/navigation.css" />
  <!--custom footer-->
  <link rel="stylesheet" href="css/footer.css" />
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="css/productDetails.css" />

  <title>Product Details</title>
</head>

<body>

  <!-- Navigation -->
  <nav id="header" class="nav">
    <div class="wrapper container">
      <div class="logo"><a href="">
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
        <li class="icons">
          <a href="#">
            <span class="searchBt"><img src="./images/search.svg" alt="" /></span>
          </a>
          <a href="cart.jsp">
            <span>
              <img src="./images/shoppingBag.svg" alt="" />
              <small class="count d-flex">0</small>
            </span>
          </a>
          <a href="login.jsp">
            <span>
              <img src="./images/user.svg" alt="" />
            </span>
          </a>
        </li>
      </ul>
      <label for="" class="btn open-btn"><i class="fas fa-bars"></i></label>
    </div>
  </nav>

  <!-- searchBar -->
  <section id="sectionSearch" class="ipSearchBox"></section>
  <section class="container product-details">
    <div class="row">
        <div class="col-md-6">
            <div id="slider" class="owl-carousel product-slider">
                <div class="item">
                      <img src="./images/products/34.png" />
                </div>
                <div class="item">
                      <img src="./images/products/35.png" />
                </div>
                <div class="item">
                      <img src="./images/products/36.png" />
                </div>
                <div class="item">
                      <img src="./images/products/37.png" />
                </div>
                <div class="item">
                      <img src="./images/products/38.png" />
                </div>
                <div class="item">
                      <img src="./images/products/39.png" />
                </div>
                <div class="item">
                      <img src="./images/products/40.png" />
                </div>
            </div>
            <div id="thumb" class="owl-carousel product-thumb">
                <div class="item">
                      <img src="./images/products/34.png" />
                </div>
                <div class="item">
                      <img src="./images/products/35.png" />
                </div>
                <div class="item">
                      <img src="./images/products/36.png" />
                </div>
                <div class="item">
                      <img src="./images/products/37.png" />
                </div>
                <div class="item">
                      <img src="./images/products/38.png" />
                </div>
                <div class="item">
                      <img src="./images/products/39.png" />
                </div>
                <div class="item">
                      <img src="./images/products/40.png" />
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="product-dtl">
                <div class="product-info">
                    <span>Menu/CoolDrink/</span>
                    <h1>Bambi Print Mini Backpack</h1>
                    <div class="reviews-counter">
                        <div class="rate">
                            <input type="radio" id="star5" name="rate" value="5" checked />
                            <label for="star5" title="text">5 stars</label>
                            <input type="radio" id="star4" name="rate" value="4" checked />
                            <label for="star4" title="text">4 stars</label>
                            <input type="radio" id="star3" name="rate" value="3" checked />
                            <label for="star3" title="text">3 stars</label>
                            <input type="radio" id="star2" name="rate" value="2" />
                            <label for="star2" title="text">2 stars</label>
                            <input type="radio" id="star1" name="rate" value="1" />
                            <label for="star1" title="text">1 star</label>
                          </div>
                        <span>3 Reviews</span>
                    </div>
                    <div class="product-price-discount"><span>$39.00</span><span class="line-through">$29.00</span></div>
                </div>
                <div class="row choosee">
                    <div class="col-md-8">
                        <form action="#" >
                            <select class="size">
                              <option value="Select Quantity" selected disabled>
                                Choose size
                              </option>
                              <option value="S">S</option>
                              <option value="M">M</option>
                              <option value="L">L</option>
                              <option value="XL">XL</option>
                            </select>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                              Custom
                            </button>
                  
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                              aria-hidden="true">
                              <div class="modal-dialog">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h3 class="modal-title" id="exampleModalLabel">Choose your favourite</h3>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                    <!--Add Topping-->
                                    <section class="chooseMore">
                                      <div class=" container addTopping">
                                        <form class="formCustom">
                                          <div class="selectBox">
                                            <select class="item sugar">
                                              <option value="Select Quantity" selected disabled>
                                                Choose measure of sugar (%)
                                              </option>
                                              <option value="10">10</option>
                                              <option value="20">20</option>
                                              <option value="30">30</option>
                                              <option value="40">40</option>
                                            </select>
                                            <select class="item ice">
                                              <option value="Select Quantity" selected disabled>
                                                Choose measure of ice (%)
                                              </option>
                                              <option value="10">10</option>
                                              <option value="20">20</option>
                                              <option value="30">30</option>
                                              <option value="40">40</option>
                                            </select>
                                            <select class="item toppings-">
                                              <option value="Select Quantity" selected disabled>
                                                Choose toppings (package)
                                              </option>
                                              <option value="black bubble">Black Bubble</option>
                                              <option value="white bubble">White Bubble</option>
                                              <option value="yarns bubble">Yarns Bubble</option>
                                              <option value="cheese jelly">Cheese Jelly</option>
                                            </select>
                                          </div>
                                        </form>
                                        <form class="formBill">
                                          <fieldset>
                                            <legend>Custom Board</legend>
                                            <div class="billContentBox">
                                              <div class="nameDrinkBox colSpaceBet">
                                                <h4>Name drink:</h4>
                                                <span>Star fruit</span>
                                              </div>
                                              <div class="colSpaceBet">
                                                <h4>Sugar(%):</h4>
                                                <span>10</span>
                                              </div>
                                              <div class="colSpaceBet">
                                                <h4>Ice(%):</h4>
                                                <span>10</span>
                                              </div>
                                              <div class="colSpaceBet">
                                                <h4>Toppings:</h4>
                                                <ul class="listTopping">
                                                  <li>Bubble <span>1</span></li>
                                                  <li>Cheese<span>1</span></li>
                                                </ul>
                                              </div>
                                            </div>
                                          </fieldset>
                                        </form>
                                      </div>
                                    </section>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary" id="save">Save changes</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                         </form>
                    </div>
                </div>
                <div class="product-count">
                    <form action="#" class="display-flex">
                        <div class="qtyminus">-</div>
                        <input type="text" name="quantity" value="1" class="qty">
                        <div class="qtyplus">+</div>
                    </form>
                    <a href="#" class="round-black-btn">Add to Cart</a>
                    <h3>About It</h3>
                    <p>
                      Starfruit- and kiwi-flavored juice and real kiwi fruit pieces added to coconutmilk and shaken with ice. Summer
                      re-imagined.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="product-info-tabs">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review" aria-selected="false">Reviews (0)</a>
              </li>
        </ul>
        <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                Ice, Kiwi Starfruit Refresher Base [Water, Sugar, White Grape Juice Concentrate, Natural Flavors, Citric Acid,
        Natural Green Coffee Flavor, Fruit Juice For Color (Watermelon And Juito Fruit), Rebaudiside A, Turmeric For
        Color], Coconutmilk [Water, Coconut Cream, Cane Sugar, Contains 2 Or Less Of Tricalcium Phosphate, Coconut Water
        Concentrate, Sea Salt, Natural Flavors, Xanthan Gum, Gellan Gum, Corn Dextrin, Guar Gum, Vitamin A Palmitate,
        And Vitamin D 2], Freeze Dried Kiwi
              </div>
              <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                  <div class="review-heading">REVIEWS</div>
                  <p class="mb-20">There are no reviews yet.</p>
                  <form class="review-form">
                    <div class="form-group">
                        <label>Your rating</label>
                        <div class="reviews-counter">
                            <div class="rate">
                                <input type="radio" id="star5" name="rate" value="5" />
                                <label for="star5" title="text">5 stars</label>
                                <input type="radio" id="star4" name="rate" value="4" />
                                <label for="star4" title="text">4 stars</label>
                                <input type="radio" id="star3" name="rate" value="3" />
                                <label for="star3" title="text">3 stars</label>
                                <input type="radio" id="star2" name="rate" value="2" />
                                <label for="star2" title="text">2 stars</label>
                                <input type="radio" id="star1" name="rate" value="1" />
                                <label for="star1" title="text">1 star</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Your message</label>
                        <textarea class="form-control" rows="10"></textarea>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" name="" class="form-control" placeholder="Name*">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" name="" class="form-control" placeholder="Email Id*">
                            </div>
                        </div>
                    </div>
                    <button class="round-black-btn">Submit Review</button>
                </form>
              </div>
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
  <!-- jquery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="	sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <!-- Custom Scripts -->
  <script src="./js/productDetails.js"></script>
</body>

</html>