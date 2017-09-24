<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Bootstrap E-Commerce Template- DIGI Shop mini</title>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/assets/css/bootstrap.css" />" rel="stylesheet">
    <!-- Fontawesome core CSS -->
    <link href="<c:url value="/resources/assets/css/font-awesome.min.css" />" rel="stylesheet" />
    <!--GOOGLE FONT -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel='stylesheet' type='text/css'>
    <!--Slide Show Css -->
    <link href="<c:url value="/resources/assets/ItemSlider/css/main-style.css" />" rel="stylesheet" />
    <!-- custom CSS here -->
    <link href="<c:url value="/resources/assets/css/style.css" />" rel="stylesheet" />
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.maskedinput.js" />"></script>
</head>
<body>
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><strong>DIGI</strong> Shop</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#" id='TrackOrder'>Track Order</a></li>
                    <li><a href="#" id='login'>Login</a></li>
                    <li><a href="#" id='signup'>Signup</a></li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">24x7 Support <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#" id='Call'><strong>Call: </strong>+09-456-567-890</a></li>
                            <li><a href="#" id='Mail'><strong>Mail: </strong>info@yourdomain.com</a></li>
                            <li class="divider"></li>
                            <li><a href="#" id='Address'><strong>Address: </strong>
                                <div>
                                    234, New york Street,<br />
                                    Just Location, USA
                                </div>
                            </a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" placeholder="Enter Keyword Here ..." class="form-control">
                    </div>
                    &nbsp; 
                    <button type="submit" class="btn btn-primary" id='Search'>Search</button>
                </form>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="well well-lg offer-box text-center">


                   Today's Offer : &nbsp; <span class="glyphicon glyphicon-cog"></span>&nbsp;40 % off  on purchase of $ 2,000 and above till 24 dec !                
              
               
                </div>
                <div class="main box-border">
                    <div id="mi-slider" class="mi-slider">
                        <ul>

                            <li><a href="#" id='Boots' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/1.jpg" />" alt="img01"><h4>Boots</h4>
                            </a></li>
                            <li><a href="#" id='Oxfords' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/2.jpg" />" alt="img02"><h4>Oxfords</h4>
                            </a></li>
                            <li><a href="#" id='Loafers' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/3.jpg" />" alt="img03" ><h4>Loafers</h4>
                            </a></li>
                            <li><a href="#" id='Sneakers' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/4.jpg" />" alt="img04" ><h4>Sneakers</h4>
                            </a></li>
                        </ul>
                        <ul>
                            <li><a href="#" id='Belts' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/5.jpg" />" alt="img05" ><h4>Belts</h4>
                            </a></li>
                            <li><a href="#" id='HatsCaps' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/6.jpg" />" alt="img06" ><h4>Hats &amp; Caps</h4>
                            </a></li>
                            <li><a href="#" id='Sunglasses' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/7.jpg" />" alt="img07" ><h4>Sunglasses</h4>
                            </a></li>
                            <li><a href="#" id='Scarves' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/8.jpg" />" alt="img08" ><h4>Scarves</h4>
                            </a></li>
                        </ul>
                        <ul>
                            <li><a href="#" id='Casual' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/9.jpg" />" alt="img09" id><h4>Casual</h4>
                            </a></li>
                            <li><a href="#" id='Luxury' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/10.jpg" />" alt="img10"><h4>Luxury</h4>
                            </a></li>
                            <li><a href="#" id='Sport' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/11.jpg" />" alt="img11"><h4>Sport</h4>
                            </a></li>
                        </ul>
                        <ul>
                            <li><a href="#" id='Carry-Ons' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/12.jpg" />" alt="img12"><h4>Carry-Ons</h4>
                            </a></li>
                            <li><a href="#" id='Duffel Bags' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/13.jpg" />" alt="img13"><h4>Duffel Bags</h4>
                            </a></li>
                            <li><a href="#" id='Laptop Bags' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/14.jpg" />" alt="img14"><h4>Laptop Bags</h4>
                            </a></li>
                            <li><a href="#" id='Briefcases' class="produto">
                                <img src="<c:url value="/resources/assets/ItemSlider/images/15.jpg" />" alt="img15"><h4>Briefcases</h4>
                            </a></li>
                        </ul>
                        <nav>
                            <a href="#" id='Shoes'>Shoes</a>
                            <a href="#" id='Accessories'>Accessories</a>
                            <a href="#" id='Watches'>Watches</a>
                            <a href="#" id='Bags'>Bags</a>
                        </nav>
                    </div>
                    
                </div>
                <br />
            </div>
            <!-- /.col -->
            
            <div class="col-md-3 text-center">
                <div class=" col-md-12 col-sm-6 col-xs-6" >
                    <div class="offer-text" id='Promo1'>
                        30% off here
                    </div>
                    <div class="thumbnail product-box">
                        <img src="<c:url value="/resources/assets/img/dummyimg.png" />" alt="" />
                        <div class="caption">
                            <h3><a href="#" id='Galaxy1' class="produto">Samsung Galaxy </a></h3>
                            <p><a href="#" id='p1'>Ptional dismiss button </a></p>
                        </div>
                    </div>
                </div>
                <div class=" col-md-12 col-sm-6 col-xs-6">
                    <div class="offer-text2" id='Promo2'>
                        30% off here
                    </div>
                    <div class="thumbnail product-box">
                        <img src="<c:url value="/resources/assets/img/dummyimg.png" />" alt="" />
                        <div class="caption">
                            <h3><a href="#" id='Galaxy2' class="produto">Samsung Galaxy </a></h3>
                            <p><a href="#" id='p2'>Ptional dismiss button </a></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-md-3">
                <div>
                    <a href="#" class="list-group-item active" id='Electronics'>Electronics
                    </a>
                    <ul class="list-group">

                        <li class="list-group-item" id='Mobile'>Mobile
      <span class="label label-primary pull-right">234</span>
                        </li>
                        <li class="list-group-item" id='Computers'>Computers
                      <span class="label label-success pull-right">34</span>
                        </li>
                        <li class="list-group-item" id='Tablets'>Tablets
                         <span class="label label-danger pull-right">4</span>
                        </li>
                        <li class="list-group-item" id='Appliances'>Appliances
                             <span class="label label-info pull-right">434</span>
                        </li>
                        <li class="list-group-item" id='Games'>Games & Entertainment
                             <span class="label label-success pull-right">34</span>
                        </li>
                    </ul>
                </div>
                <!-- /.div -->
                <div>
                    <a href="#" class="list-group-item active list-group-item-success">Clothing & Wears
                    </a>
                    <ul class="list-group">

                        <li class="list-group-item" id='MenClothing'>Men's Clothing
                             <span class="label label-danger pull-right">300</span>
                        </li>
                        <li class="list-group-item" id='WomenClothing'>Women's Clothing
                             <span class="label label-success pull-right">340</span>
                        </li>
                        <li class="list-group-item" id='KidWear'>Kid's Wear
                             <span class="label label-info pull-right">735</span>
                        </li>

                    </ul>
                </div>
                <!-- /.div -->
                <div>
                    <a href="#" class="list-group-item active" id='Accessaries'>Accessaries & Extras
                    </a>
                    <ul class="list-group">
                        <li class="list-group-item" id='MobileAccessaries'>Mobile Accessaries
                             <span class="label label-warning pull-right">456</span>
                        </li>
                        <li class="list-group-item" id='MenAccessaries'>Men's Accessaries
                             <span class="label label-success pull-right">156</span>
                        </li>
                        <li class="list-group-item" id='WomenAccessaries'>Women's Accessaries
                             <span class="label label-info pull-right">400</span>
                        </li>
                        <li class="list-group-item" id='KidAccessaries'>Kid's Accessaries
                             <span class="label label-primary pull-right">89</span>
                        </li>
                        <li class="list-group-item" id='HomeProducts'>Home Products
                             <span class="label label-danger pull-right">90</span>
                        </li>
                        <li class="list-group-item" id='KitchenProducts'>Kitchen Products
                             <span class="label label-warning pull-right">567</span>
                        </li>
                    </ul>
                </div>
                <!-- /.div -->
                <div>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success"><a href="#" id='NewOffer'>New Offer's Coming </a></li>
                        <li class="list-group-item list-group-item-info"><a href="#" id='NewProducts'>New Products Added</a></li>
                        <li class="list-group-item list-group-item-warning"><a href="#" id='EndingSoon'>Ending Soon Offers</a></li>
                        <li class="list-group-item list-group-item-danger"><a href="#" id='JustEnded'>Just Ended Offers</a></li>
                    </ul>
                </div>
                <!-- /.div -->
                <div class="well well-lg offer-box offer-colors">


                    <span class="glyphicon glyphicon-star-empty"></span>25 % off  , GRAB IT                 
              
                   <br />
                    <br />
                    <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
                            style="width: 70%">
                            <span class="sr-only">70% Complete (success)</span>
                            2hr 35 mins left
                        </div>
                    </div>
                    <a href="#" id='Promo3'>click here to know more </a>
                </div>
                <!-- /.div -->
            </div>
            <!-- /.col -->
            <div class="col-md-9">
                <div>
                    <ol class="breadcrumb">
                        <li><a href="#" id='Home'>Home</a></li>
                        <li class="active" id='Eletronics'>Electronics</li>
                    </ol>
                </div>
                <!-- /.div -->
                <div class="row">
                    <div class="btn-group alg-right-pad">
                        <button type="button" class="btn btn-default"><strong>1235  </strong>items</button>
                        <div class="btn-group">
                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" id='SortProducts'>
                                Sort Products &nbsp;
      <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#" id='ByPriceLow'>By Price Low</a></li>
                                <li class="divider"></li>
                                <li><a href="#" id='ByPriceHigh'>By Price High</a></li>
                                <li class="divider"></li>
                                <li><a href="#" id='ByPopularity'>By Popularity</a></li>
                                <li class="divider"></li>
                                <li><a href="#" id='ByReviews'>By Reviews</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="<c:url value="/resources/assets/img/dummyimg.png" />" alt="" />
                            <div class="caption">
                                <h3><a href="#" id='SamsungGalaxy' class="produto">Samsung Galaxy </a></h3>
                                <p>Price : <strong>$ 3,45,900</strong>  </p>
                                <p><a href="#" id='p3'>Ptional dismiss button </a></p>
                                <p>Ptional dismiss button in tional dismiss button in   </p>
                                <p><a href="#" class="btn btn-success" role="button" id='Add1'>Add To Cart</a> <a href="#" class="btn btn-primary" role="button">See Details</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="<c:url value="/resources/assets/img/dummyimg.png" />" alt="" />
                            <div class="caption">
                                <h3><a href="#" id='SamsungGalaxy2' class="produto">Samsung Galaxy </a></h3>
                                <p>Price : <strong>$ 3,45,900</strong>  </p>
                                <p><a href="#" id='p4'>Ptional dismiss button </a></p>
                                <p>Ptional dismiss button in tional dismiss button in   </p>
                                <p><a href="#" class="btn btn-success" role="button" id='Add2'>Add To Cart</a> <a href="#" class="btn btn-primary" role="button">See Details</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="<c:url value="/resources/assets/img/dummyimg.png" />" alt="" />
                            <div class="caption">
                                <h3><a href="#" id='SamsungGalaxy3' class="produto">Samsung Galaxy </a></h3>
                                <p>Price : <strong>$ 3,45,900</strong>  </p>
                                <p><a href="#" id='p5'>Ptional dismiss button </a></p>
                                <p>Ptional dismiss button in tional dismiss button in   </p>
                                <p><a href="#" class="btn btn-success" role="button" id='Add3'>Add To Cart</a> <a href="#" class="btn btn-primary" role="button">See Details</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <ul class="pagination alg-right-pad">
                        <li><a href="#" id='last'>&laquo;</a></li>
                        <li><a href="#" id='pag1'>1</a></li>
                        <li><a href="#" id='pag2'>2</a></li>
                        <li><a href="#" id='pag3'>3</a></li>
                        <li><a href="#" id='pag4'>4</a></li>
                        <li><a href="#" id='pag5'>5</a></li>
                        <li><a href="#" id='next'>&raquo;</a></li>
                    </ul>
                </div>
                <!-- /.row -->
                <div>
                    <ol class="breadcrumb">
                        <li><a href="#" id='Home'>Home</a></li>
                        <li><a href="#" id='Clothing'>Clothing</a></li>
                        <li class="active" id='MensClothing'>Men's Clothing</li>
                    </ol>
                </div>
                <!-- /.div -->
                <div class="row">
                    <div class="btn-group alg-right-pad">
                        <button type="button" class="btn btn-default"><strong>3005  </strong>items</button>
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" id='SortProducts2'>
                                Sort Products &nbsp;
      <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#" id='ByPriceLow2'>By Price Low</a></li>
                                <li class="divider"></li>
                                <li><a href="#" id='ByPriceHigh2'>By Price High</a></li>
                                <li class="divider"></li>
                                <li><a href="#" id='ByPopularity2'>By Popularity</a></li>
                                <li class="divider"></li>
                                <li><a href="#" id='ByReviews2'>By Reviews</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="<c:url value="/resources/assets/img/dummyimg.png" />" alt="" />
                            <div class="caption">
                                <h3><a href="#" id='SamsungGalaxy4' class="produto">Samsung Galaxy </a></h3>
                                <p>Price : <strong>$ 3,45,900</strong>  </p>
                                <p><a href="#" id='p6'>Ptional dismiss button </a></p>
                                <p>Ptional dismiss button in tional dismiss button in   </p>
                                <p>
                                    <a href="#" class="btn btn-success" role="button" id='Add4'>Add To Cart</a>
                                    <a href="#" class="btn btn-primary" role="button" id='SeeDetails1'>See Details</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="<c:url value="/resources/assets/img/dummyimg.png" />" alt="" />
                            <div class="caption">
                                <h3><a href="#" id='SamsungGalaxy5' class="produto">Samsung Galaxy </a></h3>
                                <p>Price : <strong>$ 3,45,900</strong>  </p>
                                <p><a href="#" id='p7'>Ptional dismiss button </a></p>
                                <p>Ptional dismiss button in tional dismiss button in   </p>
                                <p><a href="#" class="btn btn-success" role="button" id='Add5'>Add To Cart</a> <a href="#" class="btn btn-primary" role="button" id='SeeDetails2'>See Details</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="<c:url value="/resources/assets/img/dummyimg.png" />" alt="" />
                            <div class="caption">
                                <h3><a href="#" id='SamsungGalaxy6' class="produto">Samsung Galaxy </a></h3>
                                <p>Price : <strong>$ 3,45,900</strong>  </p>
                                <p><a href="#" id ='p8'>Ptional dismiss button </a></p>
                                <p>Ptional dismiss button in tional dismiss button in   </p>
                                <p><a href="#" class="btn btn-success" role="button" id='Add6'>Add To Cart</a> <a href="#" class="btn btn-primary" role="button" id='SeeDetails3'>See Details</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <ul class="pagination alg-right-pad">
                        <li><a href="#" id='last2'>&laquo;</a></li>
                        <li><a href="#" id='pagi1'>1</a></li>
                        <li><a href="#" id='pagi2'>2</a></li>
                        <li><a href="#" id='pagi3'>3</a></li>
                        <li><a href="#" id='pagi4'>4</a></li>
                        <li><a href="#" id='pagi5'>5</a></li>
                        <li><a href="#" id='next2'>&raquo;</a></li>
                    </ul>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
    <div class="col-md-12 download-app-box text-center">

        <span class="glyphicon glyphicon-download-alt"></span>Download Our Android App and Get 10% additional Off on all Products . <a href="#" class="btn btn-danger btn-lg" id='download'>DOWNLOAD  NOW</a>

    </div>

    <!--Footer -->
    <div class="col-md-12 footer-box">


        <div class="row small-box ">
            <strong>Mobiles :</strong> <a href="#">samsung</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> | 
            <a href="#">samsung</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> |<a href="#">samsung</a> |
              <a href="#">Sony</a> | <a href="#">Microx</a> |<a href="#">samsung</a> |  <a href="#">Sony</a> | 
            <a href="#">Microx</a> |<a href="#">samsung</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> |
            <a href="#">samsung</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> |<a href="#">samsung</a> |  
            <a href="#">Sony</a> | <a href="#">Microx</a> | view all items
         
        </div>
        <div class="row small-box ">
            <strong>Laptops :</strong> <a href="#">samsung</a> |  <a href="#">Sony</a> | <a href="#">Microx Laptops</a> | 
            <a href="#">samsung</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> |<a href="#">samsung</a> |
              <a href="#">Sony Laptops</a> | <a href="#">Microx</a> |<a href="#">samsung</a> |  <a href="#">Sony</a> | 
            <a href="#">Microx</a> |<a href="#">samsung</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> |
            <a href="#">samsung</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> |<a href="#">samsung</a> |  
            <a href="#">Sony</a> | <a href="#">Microx</a> | view all items
        </div>
        <div class="row small-box ">
            <strong>Tablets : </strong><a href="#">samsung</a> |  <a href="#">Sony Tablets</a> | <a href="#">Microx</a> | 
            <a href="#">samsung </a>|  <a href="#">Sony</a> | <a href="#">Microx</a> |<a href="#">samsung</a> |
              <a href="#">Sony</a> | <a href="#">Microx</a> |<a href="#">samsung Tablets</a> |  <a href="#">Sony</a> | 
            <a href="#">Microx</a> |<a href="#">samsung Tablets</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> |
            <a href="#">samsung</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> |<a href="#">samsung</a> |  
            <a href="#">Sony</a> | <a href="#">Microx Tablets</a> | view all items
            
        </div>
        <div class="row small-box pad-botom ">
            <strong>Computers :</strong> <a href="#">samsung</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> | 
            <a href="#">samsung Computers</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> |<a href="#">samsung</a> |
              <a href="#">Sony</a> | <a href="#">Microx</a> |<a href="#">samsung</a> |  <a href="#">Sony</a> | 
            <a href="#">Microx Computers</a> |<a href="#">samsung Computers</a> |  <a href="#">Sony</a> | <a href="#">Microx</a> |
            <a href="#">samsung</a> |  <a href="#">Sony</a> | <a href="#">Microx Computers</a> |<a href="#">samsung</a> |  
            <a href="#">Sony</a> | <a href="#">Microx</a> | view all items
            
        </div>
        <div class="row">
            <div class="col-md-4">
                <strong>Send a Quick Query </strong>
                <hr>
                <form>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Name">
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Email address">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <textarea name="message" id="message" required="required" class="form-control" rows="3" placeholder="Message"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Submit Request</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-md-4">
                <strong>Our Location</strong>
                <hr>
                <p>
                     234, New york Street,<br />
                                    Just Location, USA<br />
                    Call: +09-456-567-890<br>
                    Email: info@yourdomain.com<br>
                </p>

                2014 www.yourdomain.com | All Right Reserved
            </div>
            <div class="col-md-4 social-box">
                <strong>We are Social </strong>
                <hr>
                <a href="#"><i class="fa fa-facebook-square fa-3x "></i></a>
                <a href="#"><i class="fa fa-twitter-square fa-3x "></i></a>
                <a href="#"><i class="fa fa-google-plus-square fa-3x c"></i></a>
                <a href="#"><i class="fa fa-linkedin-square fa-3x "></i></a>
                <a href="#"><i class="fa fa-pinterest-square fa-3x "></i></a>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec nisl odio. Mauris vehicula at nunc id posuere. Curabitur nec nisl odio. Mauris vehicula at nunc id posuere. 
                </p>
            </div>
        </div>
        <hr>
    </div>
    <!-- /.col -->
    <div class="col-md-12 end-box ">
        &copy; 2014 | &nbsp; All Rights Reserved | &nbsp; www.yourdomain.com | &nbsp; 24x7 support | &nbsp; Email us: info@yourdomain.com
    </div>
    <!-- /.col -->
    <!--Footer end -->
    <!--Core JavaScript file  -->
    <script src="<c:url value="/resources/assets/js/jquery-1.10.2.js" />"></script>
    <!--bootstrap JavaScript file  -->
    <script src="<c:url value="/resources/assets/js/bootstrap.js" />"></script>
    <!--Slider JavaScript file  -->
    <script src="<c:url value="/resources/assets/ItemSlider/js/modernizr.custom.63321.js" />"></script>
    <script src="<c:url value="/resources/assets/ItemSlider/js/jquery.catslider.js" />"></script>
    
    
	<script src="<c:url value="/resources/js/jquery.inview.min.js" />"></script>
    <script>
        $(function () {

            $('#mi-slider').catslider();

        });
	</script>
	<script>
		function getCookie(cname) {
			var name = cname + "=";
			var decodedCookie = decodeURIComponent(document.cookie);
			var ca = decodedCookie.split(';');
			for(var i = 0; i <ca.length; i++) {
				var c = ca[i];
				while (c.charAt(0) == ' ') {
					c = c.substring(1);
				}
				if (c.indexOf(name) == 0) {
					return c.substring(name.length, c.length);
				}
			}
			return "";
		}
		
		function hover(idElemento) {
			this.user = getCookie('Username');
			this.idElemento = idElemento;
			this.tipo = "hover";
			this.horario = new Date();
			this.pagina = location.pathname != "" ? location.pathname : "/home";
		}
		
		function clique(idElemento) {
			this.user = getCookie('Username');
			this.idElemento = idElemento;
			this.tipo = "clique";
			this.horario = new Date();
			this.pagina = location.pathname != "" ? location.pathname : "/home";
		}
		
		function inview(idElemento) {
			this.user = getCookie('Username');
			this.idElemento = idElemento;
			this.tempoTotal = 0;
			this.inview = false;
			this.tipo = "inview";
			this.horario = new Date();
			this.pagina = location.pathname != "" ? location.pathname : "/home";
		}

		function tempoNavegacao() {
			this.user = getCookie('Username');
			this.tempoInicio = Date.now();
			this.tempoTotal = 0;
			this.tipo = "tempoEmPagina";
			this.horario = Date.now();
			this.pagina = location.pathname != "" ? location.pathname : "/home";
		}

		function navegacao(info) {
			this.user = getCookie('Username');
			this.info = info;
			this.tipo = "navegacao";
			this.horario = new Date();
			this.pagina = location.pathname != "" ? location.pathname : "/home";
		}
		
		function eventos() {
			this.tempoEmTela = {};
			this.hovers = [];
			this.cliques = [];
			this.tempoEmPagina = new tempoNavegacao();
		}
		
		function salvar(object, action) {
			if (jQuery.isEmptyObject(object))
				return;
			
			var xhttp = new XMLHttpRequest();
			
			xhttp.open("POST", "http://localhost:9090/tcc/" + action);
			xhttp.setRequestHeader("Content-Type", "application/json");
			xhttp.send(JSON.stringify(object));
		}
		
		$(document).ready(function(){ 
			var browser_version= parseInt(navigator.appVersion);
			var browser_type = navigator.appCodeName;
			var user = getCookie('Username');
			
			if (user == ''){
				var d = new Date();
				var date = d.getTime();
				d.setTime(d.getTime() + (60*24*60*60*1000));
				var expires = "expires="+ d.toUTCString();
				document.cookie = "Username=" + date + ";" + expires + ";path=/";
				user = date;
			}
			
			// salvar navegacao inicial 
			let infoNavegacao = new navegacao(browser_type + browser_version);
			salvar(infoNavegacao, "navegacao");
			
			
			// obj para salvar todos eventos
			let eventosASalvar = new eventos();
			
			function salvarEventos() {
				let nomeElementosVisiveis = [];
				
				for (let nomeElemento in eventosASalvar.tempoEmTela){
					let tempoEmTelaElemento = eventosASalvar.tempoEmTela[nomeElemento];
					if (eventosASalvar.tempoEmTela.hasOwnProperty(nomeElemento) && tempoEmTelaElemento.inview) {
						pararContagemInview(tempoEmTelaElemento);
						nomeElementosVisiveis.push(nomeElemento);
					}
				}
				
				salvar($.map(eventosASalvar.tempoEmTela, function(value, index) {return [value];}), "inview");
				salvar(eventosASalvar.hovers, "acao");
				salvar(eventosASalvar.cliques, "acao");
				salvar(eventosASalvar.tempoEmPagina, "tempoEmPagina");
				
				eventosASalvar = new eventos();
				
				nomeElementosVisiveis.forEach(function(nomeElemento) {
					eventosASalvar.tempoEmTela[nomeElemento] = new inview(nomeElemento);
					iniciarContagemInview(eventosASalvar.tempoEmTela[nomeElemento]);
				});
			}
			setInterval(salvarEventos, 60000);


			// tempo de nagega��o
			let tempoEmPagina = new tempoNavegacao();
			
			$( window ).on('unload', function() {
				eventosASalvar.tempoEmPagina.tempoTotal = Date.now() - eventosASalvar.tempoEmPagina.tempoInicio;
				salvarEventos();
			});
			
			// secao para salvar elementos clicados/hover
			$(".produto").click(function() { eventosASalvar.cliques.push(new clique($(this).attr('id'))) });
			
			$(".produto").hover(
				function() {
					let nomeElemento = $(this).attr('id');
					setTimeoutConst = setTimeout(function() {
						eventosASalvar.hovers.push(new hover(nomeElemento));
					}, 5000);
				},function(){
					clearTimeout(setTimeoutConst);
			   	}
			);
			

			// se��o para salvar elementos que est�o sendo vistos
			function iniciarContagemInview(elemento) {
				elemento["horarioInicioInview"] = Date.now();
				elemento["inview"] = true;
			}
			
			function pararContagemInview(elemento) {
				elemento["tempoTotal"] += Date.now() - elemento["horarioInicioInview"];
				elemento["horarioInicioInview"] = undefined;
			}
		
			$(".produto").on("inview", function(event, isInView) {
				let nomeElemento = $(this).attr("id");
				
				if (eventosASalvar["tempoEmTela"][nomeElemento] == undefined) {
					eventosASalvar["tempoEmTela"][nomeElemento] = new inview(nomeElemento);
				}
				
				let tempoEmTelaElemento = eventosASalvar["tempoEmTela"][nomeElemento];
				
				if (isInView) {
					iniciarContagemInview(eventosASalvar.tempoEmTela[nomeElemento]);
				} else {
					pararContagemInview(tempoEmTelaElemento);
					tempoEmTelaElemento["inview"] = false;
				}
			});
		
			// parar contagem quando pagina sair de foco
			$(window).blur(function() {
				for (let nomeElemento in eventosASalvar["tempoEmTela"]) {
					if (eventosASalvar["tempoEmTela"].hasOwnProperty(nomeElemento)) {
						let tempoEmTelaElemento = eventosASalvar["tempoEmTela"][nomeElemento];
						if (["inview"]) {
							pararContagemInview(tempoEmTelaElemento);
						}
					}
				}
			});
		
			// voltar contagem quando pagina sair de foco
			$(window).focus(function() {
				for (var nomeElemento in eventosASalvar["tempoEmTela"]) {
					if (eventosASalvar["tempoEmTela"].hasOwnProperty(nomeElemento)) {
						let tempoEmTelaElemento = eventosASalvar["tempoEmTela"][nomeElemento];
						if (tempoEmTelaElemento["inview"]) {
							tempoEmTelaElemento["horarioInicioInview"] = Date.now();
						}
					}
				}
			});
			
		});
	</script>
</body>
</html>
