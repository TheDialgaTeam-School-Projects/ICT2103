
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
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
if($_SERVER["REQUEST_METHOD"] == "POST") { 
        
      $sql = "INSERT into graduate_employment (school,course,year,employ_rate,monthly_base_pay) VALUES ('".$_POST['school']."','".$_POST['course']."',".$_POST['year'].",".$_POST['employ_rate'].",".$_POST['mbp'].")";
      if (mysqli_query($db, $sql)) {
        header('Location: grad_employment.php');
        echo "<script type='text/javascript'>alert('Record Inserted Successfully.');</script>";
        exit;
    }
    else {
        echo "<script type='text/javascript'>alert('Error Inserting Record.');</script>";
        echo("Error description: " . mysqli_error($db));
    }
}
   



?>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-8 text-left"> 
    <form method="POST">
     <table class="table">
         <caption>Modify</caption>
        <thead>
            <tr>
                
                <th scope="col">School</th>
                <th scope="col">Course</th>
                <th scope="col">Year</th>
                <th scope="col">Employment Rate</th>
                <th scope="col">Monthly Base Pay</th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody> 
        
            <tr>
                <th scope="row">
                    <select name="school" id="school">
                        <?php
                            
                            $sql2 = "SELECT name FROM school";    
                            $result2 = mysqli_query($db,$sql2);
                            while($row2 = mysqli_fetch_array($result2,MYSQLI_ASSOC))
                            {
                                echo '<option value="'.$row2['name'].'">'.$row2['name'].'</option>';
                            }
                            ?>
                    </select>
                </th>
                <td>
                    <select name="course" id="course">
                        <?php
                            
                            $sql3 = "SELECT name FROM course";    
                            $result3 = mysqli_query($db,$sql3);
                            while($row3 = mysqli_fetch_array($result3,MYSQLI_ASSOC))
                            {
                                echo '<option value="'.$row3['name'].'">'.$row3['name'].'</option>';
                            }
                            ?>
                    </select>
                </td>
                <td><input type="text" class="form-control" id="year" name="year"  placeholder="Enter year"/></td>
                <td><input type="text" class="form-control" id="employ_rate" name="employ_rate"  placeholder="Enter percentage"/></td>
                <td><input type="text" class="form-control" id="mbp" name="mbp"  placeholder="Enter amount"/></td>
                <td>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </td>
            </tr>
        </tbody>
     </table>
        </form>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>



