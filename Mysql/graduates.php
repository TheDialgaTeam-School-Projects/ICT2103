
<!DOCTYPE html>
<html lang="en">
<head>
  <title>ICT2103</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="js/sort.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
  <script>
  $(document).ready(function() {
    $('#data_table').DataTable();
    $('#data_table2').DataTable();
} )
  </script>
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
   <div class="col-sm-3 sidenav">
    <?php
    if(isset($_SESSION['loggedIn']))
    {
        ?>
      
      <p><button class="btn btn-secondary"><a href="insert.php?table=school">Insert into School table</a></button></p>
      <p><button class="btn btn-secondary"><a href="insert.php?table=course">Insert into Course table</a></button></p>
      <?php
      if(isset($_SESSION['type']) && $_SESSION['type'] == "admin")
      {
          ?>
      <p><button class="btn"><a href="insert_ge.php">Insert into Graduates Employment table</a></button></p>
      <?php
      }
      ?>
      
      <?php
    }
    ?>
      </div>
    
    <div class="col-sm-9 text-left"> 
        <table class="display" id="data_table" style="width: 100%">
          <caption>Graduation Rate by Schools</caption>
        <thead>
            <tr>
                <th scope="col" onclick="sortTable(0,1)">School Name</th>
                <th scope="col" onclick="sortTable(1,1)">Year</th>
                <th scope="col" onclick="sortTable(2,1)">Graduation Rate</th>
                <?php
                    if(isset($_SESSION['type']) && $_SESSION['type'] == "admin")
                    {
                ?>
                    <th scope="col" onclick="sortTable(3,1)">Last Edited By</th>
                <?php
                    }
                ?>
                <?php
                    if(isset($_SESSION['loggedIn']))
                    {
                ?>
                    <th scope="col">Modify/Delete</th>
                <?php
                    }
                ?>
            </tr>
        </thead>
        <tbody> 
        <?php
            
            $sql = "SELECT bs_ID, bs.s_ID, s.s_ID, s.name, year, graduate, last_edited_by FROM batch_school bs, school s WHERE bs.s_ID = s.s_ID";
            $result = mysqli_query($db,$sql);
            while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
            {
                echo '<tr>';
                echo '<td>'.$row['name'].'</td>';
                echo '<td>'.$row['year'].'</td>';
                echo '<td>'.$row['graduate'].'</td>';
                if(isset($_SESSION['type']) && $_SESSION['type'] == 'admin')
                {
                    echo '<td>'.$row['last_edited_by'].'</td>';
                }
                if(isset($_SESSION['loggedIn']))
                {
                    echo '<td>';
                    echo '<a href="modify.php?from=graduate&table=school&id='.$row['bs_ID'].'">Modify</a>';
                    echo '/';
                    echo '<a href="delete.php?from=graduate&table=school&id='.$row['bs_ID'].'">Delete</a>';
                    echo '</td>';
                }
                    echo '</tr>';
            }
        ?>
        </tbody>
     </table>
        <table class="display" id="data_table2" style="width: 100%">
         <caption>Graduation Rate by Course</caption>
        <thead>
            <tr>
                <th scope="col" onclick="sortTable(0,2)">Course Name</th>
                <th scope="col" onclick="sortTable(1,2)">Year</th>
                <th scope="col" onclick="sortTable(2,2)">Graduation Rate</th>
                <?php
                    if(isset($_SESSION['type']) && $_SESSION['type'] == "admin")
                    {
                ?>
                    <th scope="col" onclick="sortTable(3,2)">Last Edited By</th>
                <?php
                    }
                ?>
                <?php
                    if(isset($_SESSION['loggedIn']))
                    {
                ?>
                    <th scope="col">Modify/Delete</th>
                <?php
                    }
                ?>
            </tr>
        </thead>
        <tbody> 
        <?php
            $sql2 = "SELECT bc_ID, bc.c_ID, c.c_ID, c.name, year, graduate, last_edited_by FROM batch_course bc, course c WHERE bc.c_ID = c.c_ID";
            $result2 = mysqli_query($db,$sql2);
            while($row2 = mysqli_fetch_array($result2,MYSQLI_ASSOC))
            {
                echo '<tr>';
                echo '<td>'.$row2['name'].'</td>';
                echo '<td>'.$row2['year'].'</td>';
                echo '<td>'.$row2['graduate'].'</td>';
                if(isset($_SESSION['type']) && $_SESSION['type'] == 'admin')
                {
                    echo '<td>'.$row['last_edited_by'].'</td>';
                }
                if(isset($_SESSION['loggedIn']))
                {
                    echo '<td>';
                    echo '<a href="modify.php?from=graduate&table=course&id='.$row2['bc_ID'].'">Modify</a>';
                    echo '/';
                    echo '<a href="delete.php?from=graduate&table=course&id='.$row2['bc_ID'].'">Delete</a>';
                    echo '</td>';
                }
                    echo '</tr>';
            }
        ?>
        </tbody>
     </table>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>ICT2103</p>
</footer>

</body>
</html>
