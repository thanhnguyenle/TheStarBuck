<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <jsp:include page="layout/css.jsp"/>
  <!--jquery-ui css-->
  <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/product.css")%>" />
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
            <button type="button" name="range" id="range" class="filterbtn">Range</button>
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
          <input type="button" id="apply" name="apply" value="Apply" >
        </form>

        <div class="categoryTitle">
          <h2>List Products</h2>
        </div>
        <div class="product-layout">
          <!-- hien thi nhieu nhat 9 san pham -->

        </div>
        <!-- PAGINATION -->
        <ul class="pagination" id="pagination"></ul>
        <input type="hidden" value="" id="page" name="page">
        <input type="hidden" value="" id="maxPageItem" name="maxPageItem">

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

  <!-- jquery -->
  <jsp:include page="layout/script.jsp"/>
 <!-- jquery UI -->
<%--  jQuery UI là một thư viện miễn phí, xây dựng dựa trên jQuery, giúp bạn tạo các thành phần giao diện trong trang như datepicker, accordion, autocomplete, tab, menu, select…--%>
  <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <!-- Custom Scripts -->
  <script src="<%= Asset.url("/template/web/js/product.js")%>"></script>

  <!--paging lib-->
  <script src="<%= Asset.url("/template/lib/paging/jquery.twbsPagination.js")%>" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function() {
    var totalPages = ${totalPage};
    var currentPage = 1;
    var limit = 9;
      $(function () {
          window.pagObj = $('#pagination').twbsPagination({
              totalPages: totalPages,
              visiblePages: 5,
              startPage: currentPage,
              onPageClick: function (event, page) {
                if(currentPage!=page){
                  currentPage = page;
                  ajaxRun();
                }
              }
          });
      });

      function ajaxRun() {
        $.ajax({
          type: "Post",
          url: "/TheStarBuck/products?page-index=" + currentPage + "&per-page=" + limit,
          ContentType: 'json',
          headers: {Accept: "application/json;charset=utf-8"},
          success: function (json) {
            let data = "";
            let obj = JSON.parse(json);
            for (let i = 0; i < obj.length; i++) {
              let val = obj[i];
              data += "<div class=\"product\">"
                      + "<div class=\"img-container\">"
                      + "<img src=\"" + val.image + "\" />"
                      + "<div class=\"addCart\">"
                      + "<a href=\"<%=request.getContextPath()%>/add-cart?id=" + val.id + "\"><i class=\"fas fa-shopping-cart\"></i></a>"
                      + "</div>"
                      + "<div class=\"sale-text\">"
                      + "<span class=\"section-sale\">20% Off</span>"
                      + "</div>"
                      + "<ul class=\"side-icons\">"
                      + "<span><i class=\"fas fa-search\"></i></span>"
                      + "<span><i class=\"far fa-heart\"></i></span>"
                      + "<span><a href=\"<%=request.getContextPath()%>/detailProduct?id=" + val.id + "\"><i class=\"fas fa-sliders-h\"></i></a></span>"
                      + "</ul>"
                      + "</div>"
                      + "<div class=\"bottom\">"
                      + "<div class=\"price-rating\">"
                      + "<div class=\"rating\">"
                      + "<span class=\"fa fa-stack\"><i class=\"fa fa-star-o\"></i><i class=\"fa fa-star\"></i></span>"
                      + "<span class=\"fa fa-stack\"><i class=\"fa fa-star-o\"></i><i class=\"fa fa-star\"></i></span>"
                      + "<span class=\"fa fa-stack\"><i class=\"fa fa-star-o\"></i><i class=\"fa fa-star\"></i></span>"
                      + "<span class=\"fa fa-stack\"><i class=\"fa fa-star-o\"></i><i class=\"fa fa-star\"></i></span>"
                      + "<span class=\"fa fa-stack\"><i class=\"fa fa-star-o\"></i><i class=\"fa fa-star\"></i></span>"
                      + "</div>"
                      + "</div>"
                      + "<a href=\"<%=request.getContextPath()%>/detailProduct?id=" + val.id + "\">" + val.name + "</a>"
                      + "<div class=\"price\">"
                      + "<span>$" + val.price + "</span>"
                      + "<span class=\"cancel\">$" + val.discount + "</span>"
                      + "</div>"
                      + "</div>"
                      + "</div>";
            }
            $("div.products-layout div.product-layout").html(data);
          }
        });
      }
      ajaxRun();
    });
  </script>
</body>

</html>