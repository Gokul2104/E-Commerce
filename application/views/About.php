<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Shri Ganapathy Stores</title>
    <link rel="shortcut icon" href="<?php echo base_url()?>assets/img/logo.ico" />

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/style.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
</head>
<body>

<?php
include "include/head.php";
?>

<div class="slider-area">
    <div class="zigzag-bottom1"></div>
		<div id="slide-list" class="carousel carousel-fade slide" data-ride="carousel">

        <div class="slide-bulletz">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ol class="carousel-indicators slide-indicators">
                            <li data-target="#slide-list" data-slide-to="0" class="active"></li>
                            
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="single-slide">
                    <div class="slide-bg slide-ten"></div>
                    <div class="slide-text-wrapper">
                     <div class="slide-text">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-6">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>   
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div> <!-- End slider area -->

<div class="promo-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        
            <h2>
					ESDT 1974<br/>
Shri ganapathy stores Supermarket offer Customers the best service and sell only the freshest, safest products.<br/>
Moreover, we always provide products with low price and best quality to the customer.<br/>
Initially we started as a small provision store where we used man power to provide customers the products they needed.<br/>
Later in 2005 due to emerging society needs where people wish to choose the products they needed by looking into all the products and pick the ones they needed, <br/>
we modified our shop as super market. <br/>
We provide discounts on products and provide free delivery to customers. We also provide paytm, sodexo, credit card/debit card payment modes. <br/>
The relationship which we build with our customers plays a major role to survive more than 40yrs in this field.<br/>
The main motto is customer satisfaction.<br/>
We strongly believe that our growth mainly depends on customer satisfaction.<br/>
These are the main features of our shop which makes the customer to come back and shop with us..<br/>
			</h2>
        
    </div>
</div> <!-- End promo area -->


<div class="maincontent-area">
    
    <div class="container">
        
                
                   <h2 class="section-title">Map</h2>
                    
						<div id="map"></div>
						
    <script>
// Initialize and add the map
function initMap() {
  // The location of Shri Ganapathy Stores
  var ganapathy = {lat: 13.043127, lng: 80.222122};
  // The map, centered at Shri Ganapathy Stores
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 20, center: ganapathy});
  // The marker, positioned at Shri Ganapathy Stores
  var marker = new google.maps.Marker({position: ganapathy, map: map});
}
    </script>
	<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDgVXC_GwGgRMVZ0cw2uoJDldta8ZS_KeQ&callback=initMap">
    </script>
                        
                    
          
    </div>
</div> <!-- End main content area -->


<?php
include "include/footer.php";
?>

<!-- Latest jQuery form server -->
<script src="https://code.jquery.com/jquery.min.js"></script>

<!-- Bootstrap JS form CDN -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- jQuery sticky menu -->
<script src="<?php echo base_url() ?>assets/js/owl.carousel.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/jquery.sticky.js"></script>

<!-- jQuery easing -->
<script src="<?php echo base_url() ?>assets/js/jquery.easing.1.3.min.js"></script>

<!-- Main Script -->
<script src="<?php echo base_url() ?>assets/js/main.js"></script>
</body>
</html>