<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- Favicon -->
  <link rel="shortcut icon" href="https://i.ibb.co/nMxcqW4/logo.png" type="image/png" />
  <!--jquery-ui css-->
  <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
  <!-- Boxicons -->
  <link href='https://unpkg.com/boxicons@2.0.8/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <!--custom navigation-->
<%--  <link rel="stylesheet" href="css/navigation.css" />--%>
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/navigation.css")%>" />
  <!--custom footer-->
<%--  <link rel="stylesheet" href="css/footer.css" />--%>
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/footer.css")%>" />
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/product.css")%>" />
  <!--modal-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css"/>
  <title>Menu</title>
</head>

<body>

  <!-- Navigation -->
  <jsp:include page="layout/header.jsp"/>
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
            <form class="form product-form">
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
            <select name="order-by" id="order-by">
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
          <c:forEach items="${products}" var="item">
          <div class="product">
            <div class="img-container">
              <img src="${item.image}" alt="" />
              <div class="addCart">
                <a href="<%=request.getContextPath()%>/add-cart?id=${item.id}"><i class="fas fa-shopping-cart"></i></a>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span> <a href="<%=request.getContextPath()%>/detailProduct?id=${item.id}"><i class="fas fa-sliders-h"> </i></a></span>
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
              <a href="<%=request.getContextPath()%>/detailProduct?id=${item.id}">${item.name}</a>
              <div class="price">
                <span>$${item.price}</span>
                <span class="cancel">$${item.discount}</span>
              </div>
            </div>
          </div>
          </c:forEach>
        </div>
        <!-- PAGINATION -->
        <ul class="pagination" id="pagination"></ul>
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
  <jsp:include page="layout/footer.jsp"/>
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
  <script src="<%= Asset.url("/template/web/js/product.js")%>"></script>

  <!--paging lib-->
  <!--script src="<%= Asset.url("/template/lib/paging/jquery.twbsPagination.js")%>" type="text/javascript"></script-->
  <script type="text/javascript">
      $(function () {
          window.pagObj = $('#pagination').twbsPagination({
              totalPages: 35,
              visiblePages: 10,
              onPageClick: function (event, page) {
                  console.info(page + ' (from options)');
              }
          }).on('page', function (event, page) {
              console.info(page + ' (from event listening)');
          });
      });
  </script>
</body>

</html>