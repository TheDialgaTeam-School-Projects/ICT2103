
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
        $table = mysqli_real_escape_string($db,$_POST['table']);
        if(strcmp($table,'school') == 0)
        {
            
         $sql = "INSERT into batch_school (s_ID,year,intake,enrolled,graduate) VALUES ('".$_POST['sc']."',".$_POST['year'].",".$_POST['intake'].",".$_POST['enroll'].",".$_POST['graduate'].")";
        }
        else if(strcmp($table,'course') == 0)
        {
         $sql = "INSERT into batch_course (c_ID,year,intake,enrolled,graduate) VALUES ('".$_POST['sc']."',".$_POST['year'].",".$_POST['intake'].",".$_POST['enroll'].",".$_POST['graduate'].")";
        }
        
      if (mysqli_query($db, $sql)) {
        header('Location: index.php');
        echo "<script type='text/javascript'>alert('Record Inserted Successfully.');</script>";
        exit;
    }
    else {
        echo "<script type='text/javascript'>alert('Error Inserting Record.');</script>";
        echo("Error description: " . mysqli_error($db));
    }
}
   
 else {
$table = mysqli_real_escape_string($db,$_GET['table']);
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
                <?php
                    if($table == 'school')
                    {
                ?>
                        <th scope="col">School Name</th>
                <?php
                    }
                    else if($table == 'course')
                    {
                ?>
                        <th scope="col">Course Name</th>
                <?php
                    }
                ?>
                
                <th scope="col">Year</th>
                <th scope="col">Intake</th>
                <th scope="col">Enrollment</th>
                <th scope="col">Graduates</th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody> 
        
            <tr>
                <th scope="row">
                    <select name="sc" id="sc">
                        <?php
                            if($table == 'school')
                            {
                                $sql2 = "SELECT name,s_ID AS ID FROM school";
                            }
                            else if($table == 'course')
                            {
                                $sql2 = "SELECT name,c_ID AS ID FROM course";
                            }
            
                            $result2 = mysqli_query($db,$sql2);
                            while($row2 = mysqli_fetch_array($result2,MYSQLI_ASSOC))
                            {
                                echo '<option value="'.$row2['ID'].'">'.$row2['name'].'</option>';
                            }
                            ?>
                    </select>
                </th>
                <td><input type="text" class="form-control" id="year" name="year"  placeholder="Enter year"/></td>
                <td><input type="text" class="form-control" id="intake" name="intake"  placeholder="Enter amount"/></td>
                <td><input type="text" class="form-control" id="enroll" name="enroll"  placeholder="Enter amount"/></td>
                <td>
                    <input type="text" class="form-control" id="graduate" name="graduate"  placeholder="Enter amount"/>
                    <input type="hidden" class="form-control" id="table" name="table" value="<?php echo $table; ?>"/>
                </td>
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



