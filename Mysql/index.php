
<!DOCTYPE html>
<html lang="en">
<head>
  <title>ICT2103</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<?php

include 'header.php';

?>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-8 text-left"> 
      <h1>Welcome</h1>
      <p>This application intention is meant to consolidate all information with regards to graduates and how they’re doing in relation to finding a job. Users are allowed to filter the results by school and course. Datasets from the government is used to maintain the accuracy of the data. Therefore, the intended users are mainly employment analysts who are eager to find out what kind of employment rate for graduates from different universities.</p>
      <hr>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>ICT2103</p>
</footer>

</body>
</html>
