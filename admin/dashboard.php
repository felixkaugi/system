<?php require_once('includes/session.php');
       require_once('includes/conn.php');
       require_once('check.php');    
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title> DASHBOARD</title>

         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/awesome/font-awesome.css">
        <link rel="stylesheet" href="assets/css/animate.css">
    </head>
    <body>



        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar" class="sammacmedia">
                <div class="sidebar-header">
                    <h3>Digital Judicial System</h3>
                    <strong>Digital Judicial System</strong>
                </div>

                <ul class="list-unstyled components">
                    <li class="active">
                        <a href="dashboard.php">
                            <i class="fa fa-th"></i>
                           Dashboard
                        </a>
                    </li>
                              <?php
                    if($_SESSION['permission']==1 or $_SESSION['permission']==2 ){
                        
                    
                    ?>
                    <li>
                        <a href="add_litigants.php">
                            <i class="fa fa-plus"></i>
                            Add Litigant
                        </a>
                      
                    </li>
                    <?php }?>
                    <?php 
                         if ($_SESSION['permission']==1 or $_SESSION['permission']==2) {
                    ?>
                    <li>
                        <a href="all_litigants.php">
                            <i class="fa fa-table"></i>
                           All Litigants
                        </a>
                    </li>
                <?php } ?>
                    <li>
                        <a href="invest.php">
                            <i class="fa fa-link"></i>
                            Report Case
                            <a href="#">
                                <i class="fa fa-file"></i>
                                Add case file
                            </a>
                        </a>
                    </li>
                              <?php
                    if($_SESSION['permission']==1 or $_SESSION['permission']==2 ){
                        
                    
                    ?>
                    <li>
                        <a href="view_cases.php">
                            <i class="fa fa-table"></i>
                            View Cases
                        </a>
                    </li>
                    <?php }?>
                             <?php
                    if($_SESSION['permission']==1){
                    ?>
                    <li>
                        <a href="add_users.php">
                            <i class="fa fa-user"></i>
                            Add Users
                        </a>
                    </li>
                        <!-- add witness part-->
                     
                        <?php 
                         if ($_SESSION['permission']==1 or $_SESSION['permission']==2) {
                    ?>
                        <li>
                        <a href="add_users.php">
                            <i class="fa fa-user"></i>
                            Add Witness
                        </a>
                    </li>
                <?php } ?>
                <!--add witness ends here-->
                    <li>
                        <a href="view_users.php">
                            <i class="fa fa-table"></i>
                            View Users
                        </a>
                    </li>
                    <?php } ?>
                    <li>
                        <a href="../chating/home.php">
                            <i class="fa fa-phone"></i>
                            chat
                        </a>
                    </li>
                    <!--chatting ends here -->
                    <li>
                        <a href="hearing.html">
                            <i class="fa fa-session"></i>
                            court sessions
                        </a>
                    </li>
                    <li>
                        <a href="../mails/file_upload.php">
                            <i class="fa fa-file"></i>
                            upload files
                        </a>
                    </li>
                    <li>
                        <a href="settings.php">
                            <i class="fa fa-cog"></i>
                            Settings
                        </a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">
             
                <div clas="col-md-12">
                    <img src="assets/image/logo.png" class="img-thumbnail">
                    </div>
         
                
                <nav class="navbar navbar-default sammacmedia">
                    <div class="container-fluid">

                        <div class="navbar-header" id="sams">
                            <button type="button" id="sidebarCollapse" id="makota" class="btn btn-sam animated tada navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                <span>Menu</span>
                            </button>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right  makotasamuel">
                                <li><a href="#"><?php require_once('includes/name.php');?></a></li>
                                <li ><a href="logout.php"><i class="fa fa-power-off"> Logout</i></a></li>
           
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="line"></div>
                <div class="row">
                <div class="col-lg-6 col-md-6 ">
                    <div class="panel panel sammac sammacmedia">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-4">
                                    <i class="fa fa-user fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $users;?></div>
                                    <div>Total Number Of Users</div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="panel panel strover sammacmedia">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-4">
                                    <i class="fa fa-link fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $cases;?></div>
                                    <div>Total Number Of Cases</div>
                                </div>
                            </div>
                        </div>
                     
                    </div>
                </div>

                    
                    
            </div>
                <div class="line"></div>
                <footer>
            <p class="text-center">
            Digital Judicial System&copy;<?php echo date(' F D jS Y ');?>Copyright. All Rights Reserved, Powered By kaugi    
            </p>
            </footer>
            </div>
            
        </div>





        <!-- jQuery CDN -->
         <script src="assets/js/jquery-1.10.2.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="assets/js/bootstrap.min.js"></script>

         <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                 });
             });
             $('sams').on('click', function(){
                 $('makota').addClass('animated tada');
             });
         </script>
    </body>
</html>
