
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
        $id = mysqli_real_escape_string($db,$_POST['rid']);
        $from = mysqli_real_escape_string($db,$_POST['from']);
        $table = mysqli_real_escape_string($db,$_POST['table']);
        echo "FROM = " . $from . "<br> TABLE = " . $table;
        if(strcmp($table,'school') == 0)
        {
            if(strcmp($from,'intake') == 0)
            {
                $sql = "UPDATE batch_school SET intake=".$_POST['number'].",last_edited_by='".$_SESSION['login_user']."' WHERE bs_ID=".$id."";
            }
            else if(strcmp($from,'enroll') == 0)
            {
                $sql = "UPDATE batch_school SET enroll=".$_POST['number'].",last_edited_by='".$_SESSION['login_user']."' WHERE bs_ID=".$id."";
            }
            else if(strcmp($from,'graduate') == 0)
            {
                $sql = "UPDATE batch_school SET graduate=".$_POST['number'].",last_edited_by='".$_SESSION['login_user']."' WHERE bs_ID=".$id."";
            }
        }
        else if(strcmp($table,'course') == 0)
        {
            if(strcmp($from,'intake') == 0)
            {
                $sql = "UPDATE batch_course SET intake=".$_POST['number'].",last_edited_by='".$_SESSION['login_user']."' WHERE bc_ID=".$id."";
            }
            else if(strcmp($from,'enroll') == 0)
            {
                $sql = "UPDATE batch_course SET enroll=".$_POST['number'].",last_edited_by='".$_SESSION['login_user']."' WHERE bc_ID=".$id."";
            }
            else if(strcmp($from,'graduate') == 0)
            {
                $sql = "UPDATE batch_course SET graduate=".$_POST['number'].",last_edited_by='".$_SESSION['login_user']."' WHERE bc_ID=".$id."";
            }
        }
        
      if (mysqli_query($db, $sql)) {
        if(strcmp($from,'intake') == 0)
        {
            header('Location: intake.php');
        }
        else if(strcmp($from,'enroll') == 0)
        {
            header('Location: enrollment.php');
        }
            else if(strcmp($from,'graduate') == 0)
        {
            header('Location: graduates.php');
        }
        exit;
    }
    else {
        echo "<script type='text/javascript'>alert('Error Modifying Record.');</script>";
    }
}
   
 else {
$id = mysqli_real_escape_string($db,$_GET['id']);
$from = mysqli_real_escape_string($db,$_GET['from']);
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
                <?php
                    if($from == 'intake')
                    {
                ?>
                        <th scope="col">Intake</th>
                <?php
                    }
                    else if($from == 'enroll')
                    {
                ?>
                        <th scope="col">Enrollment</th>
                <?php
                    }
                    else if($from == 'graduate')
                    {
                ?>
                        <th scope="col">Graduates</th>
                <?php
                    }
                    
                ?>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody> 
        
            <tr>
                
                    
                            <?php
                            if($table == 'school')
                            {
                                $sql2 = "SELECT s.name,bs.year FROM batch_school bs, school s WHERE bs_ID=$id AND bs.s_ID = s.s_ID";
                            }
                            else if($table == 'course')
                            {
                                $sql2 = "SELECT c.name,bc.year FROM batch_course bc, course c WHERE bc_ID=$id AND bs.s_ID = s.s_ID";
                            }
            
                            $result2 = mysqli_query($db,$sql2);
                            $row2 = mysqli_fetch_array($result2,MYSQLI_ASSOC);
                            echo '<th scope="row">'.$row2['name'].'</th>';
                            echo '<td>'.$row2['year'].'</td>';
                            ?>
                
                <td>
                    <input type="text" class="form-control" id="number" name="number"  placeholder="Enter amount"/>
                    <input type="hidden" class="form-control" id="rid" name="rid" value="<?php echo $id;?>"/>
                    <input type="hidden" class="form-control" id="table" name="table" value="<?php echo $table; ?>"/>
                    <input type="hidden" class="form-control" id="from" name="from" value="<?php echo $from; ?>"/>
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



