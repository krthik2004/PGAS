<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['submit']))
{
  
  $rooms=$_POST['rooms'];
  $norooms=$_GET['norooms'];
$pid=$_GET['pid'];
$userid=$_SESSION['pgasuid'];
$chkin=$_POST['chkin'];
$msg=$_POST['message'];
$booknumber=mt_rand(100000000, 999999999);
/*$q=mysqli_query($con,"update table ");*/
/*$q=mysqli_query($con,"update tblpg set norooms=norooms-'$rooms' where ID='$pid'");*/
$quer=mysqli_query($con,"insert into tblbookpg(Userid,Pgid,CheckinDate,UserMsg,BookingNumber,rooms) values('$userid','$pid','$chkin','$msg','$booknumber','$rooms')");
if($quer)
{
echo "<script>alert('Booking detail has been sent to owner.);</script>";
echo "<script>window.location.href='my-bookings.php'</script>"; 
} else {
echo "<script>alert('Something Went Wrong. Please try again.');</script>";   
}
}

?>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
    
    <title>PG Accomodation details Details</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
    <!--
			CSS
			============================================= -->
    <link rel="stylesheet" href="css/linearicons.css">=
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/ion.rangeSlider.css" />
    <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/main.css">
</head>

<body>

    <!-- Start Header Area -->
    <?php include_once('includes/header.php');?>
    <!-- End Header Area -->

    <!-- start banner Area -->
    <section class="banner-area relative" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex text-center align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <p class="text-white link-nav"><a href="index.php">Home </a>
                        <span class="lnr lnr-arrow-right"></span>
                        <a href="particularpg-details.php">
                            PG Details
                        </a>
                        
                        </p>
                    <h1 class="text-white">
                       PG Details
                    </h1>
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->

    <!--  Blog Area -->
    <section class="blog_area single-post-area p_120">
        <div class="container">
            <div class="row mt-80">
                 <?php
 $cid=$_GET['pid'];
$ret=mysqli_query($con,"select * from tblpg where ID='$cid'");
  

$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
                <div class="col-lg-12 posts-list">
                    <div class="single-post row">
                        <div class="col-lg-12">
                            <div class="feature-img" align="center">
<img src="owner/roomimages/<?php echo $row['Image'];?>" height='350' width="1000" style="border:#000 solid 2px;">
</div>
<h2 align="center" style="margin-top:2%"><?php echo $row['PGTitle'];?></h2>      
                        </div>
                        
                        
                        <div class="col-lg-6 col-md-9 blog_details">
                
  <table border="1" class="table table-bordered mg-b-0">
  <tr align="center">
  <td style="color: red; font-size: 20px" colspan="2">Details</td>
</tr>              
               <tr>
    <th>State</th>
    <td><?php  echo $row['StateName'];?></td>
  </tr>   
   <tr>
    <th>City</th>
    <td><?php  echo $row['CityName'];?></td>
  </tr>
  <tr>
    <th>Rent Per Month</th>
    <td><?php  echo $row['RPmonth'];?></td>
  </tr>  
   <tr>
    <th>Number of Rooms</th>
    <td><?php  echo $row['norooms'];?></td>
  </tr>                 
<tr>
    <th>Address</th>
    <td><?php  echo $row['Address'];?></td>
  </tr>
 </table><br>

  <table border="1" class="table table-bordered mg-b-0">
<tr align="center">
<td style="color: red; font-size: 20px" colspan="2">Meals which offer by PG</td>
</tr> 
  <tr>
   <th>
  Breakfast<br>
   Lunch<br>
   Dinner
    </th>
     <td>
    <?php  echo $row['MealsBreakfast'];?><br>
    <?php  echo $row['MealDinner'];?><br>
    <?php  echo $row['MealLunch'];?>
    </td>
    
  </tr>        
                   
   </table> 
</div>

     <div class="col-lg-6 col-md-9 blog_details">
  
    <table border="1" class="table table-bordered mg-b-0">     
<tr align="center">
  <td style="color: red; font-size: 20px" colspan="2">Facilities</td>
</tr>
      <tr>
    <th>Electricity</th>
    <td><?php  echo $row['Electricity'];?></td>
  </tr> 
  <tr>
    <th>Parking</th>
    <td><?php  echo $row['Parking'];?></td>
  </tr> 
  <tr>
    <th>Refregerator</th>
    <td><?php  echo $row['Refregerator'];?></td>
  </tr> 
  <tr>
    <th>Full Furnished</th>
    <td><?php  echo $row['Furnished'];?></td>
  </tr> 
  <tr>
    <th>AC</th>
    <td><?php  echo $row['AC'];?></td>
  </tr> 
  <tr>
    <th>Balcony</th>
    <td><?php  echo $row['Balcony'];?></td>
  </tr> 
  <tr>
    <th>Table/Study Lamp</th>
    <td><?php  echo $row['StudyTable'];?></td>
  </tr> 
  <tr>
    <th>Laundry</th>
    <td><?php  echo $row['Laundry'];?></td>
  </tr>
  <tr>
    <th>Security</th>
    <td><?php  echo $row['Security'];?></td>
  </tr>
  </table>
                
                  
    </div>
   </div><br>
<?php if($_SESSION['pgasuid']==""){?>
<a href="signin.php" class="btn primary-btn">  Book Now</a>
<?php } else {?>
<form method="post">


        </div><br>
                    
                        <div class="col-md-12 text-center">
<button type="button" class="primary-btn" data-toggle="modal" data-target="#myModal">Book Now<span class="lnr lnr-arrow-right" ></span></button>
                        </div>
                        </form> 
                 
                 <?php } ?>   
            
      </div>
    </div>
    <br>
    </section>
    <!--  Blog Area -->
<!-- Button to Open the Modal -->


<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
    <script>
                  function checkavailable(value) {
                    var availablerooms = <?php echo json_encode($row['norooms']); ?>;
                    if(value > availablerooms){
                      alert('no')
                      window.history.back();
                    }
    }
                </script>
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">BOOKING</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
   <form class="row contact_form" action="" method="post" id="">
            <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?></p>
            <div class="col-md-12">


<div class="form-group">
<br>

  <div class="form-group">
  <p>Number of rooms available :<?php echo $row['norooms'];?></p>
  <?php
    if($row['norooms']<="0")
      {
        echo "<script>alert('No rooms available');</script>";
echo "<script>window.location.href='index.php'</script>"; }?>
    
								<input type="number" class="form-control" id="rooms" name="rooms" placeholder="Number of rooms required" required="true" min="1" onchange="checkavailable(this.value)"  >
                
							</div>
              <p style="font-size: 18px;color: black">Check In Date: <input type="date" class="form-control" id="chkin" name="chkin" required="true"></p>
              </div>

        

              <div class="form-group">
                <textarea class="form-control" name="message" id="message" rows="1" placeholder="Enter Message" required="true"></textarea>
              </div>
            </div>
            
            <div class="col-md-12 text-center">
              <button type="submit" value="submit" class="btn primary-btn" name="submit">Submit</button>
            </div>
          </form>
  </div>
    </div>
  </div>
</div>
    <!-- start footer Area -->
    <div style="margin-top:1%">
   <?php include_once('includes/footer.php');?>
   </div>
    <!-- End footer Area -->

    <script src="js/vendor/jquery-2.2.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/ion.rangeSlider.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>
<?php } ?>