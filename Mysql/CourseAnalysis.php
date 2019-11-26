<!DOCTYPE html>
<?php
   include 'header.php';
   ?>
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
            button:focus {
                outline: 0;
            }

            .navbar .dropdown-menu .form-control {
                width: 200px;
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
         <!-- Google charts API -->
        <script type="text/javascript"
        src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load Charts and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      google.charts.setOnLoadCallback(drawCourseChart);
      // Draw the pie chart for Sarah's pizza when Charts is loaded.
      google.charts.setOnLoadCallback(drawSalaryChart);

      // Draw the pie chart for the Anthony's pizza when Charts is loaded.
      google.charts.setOnLoadCallback(drawITChart);

      // Callback that draws the pie chart for Sarah's pizza.
      function drawSalaryChart() {

        // Create the data table for Sarah's pizza.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Students who dropped out');

        data.addRows([
<?php
    $sql = "select course.name, sum(intake)-sum(graduate) AS 'Number of Dropouts' "
            . "FROM batch_course JOIN course ON batch_course.c_ID = course.c_ID "
            . "group by course.c_ID  ";
    $myResult = mysqli_query($db, $sql);
    $myArrayNames = [];
    $myArrayDropouts = [];   
    while($row = mysqli_fetch_array($myResult, MYSQLI_ASSOC)) {
        $myArrayNames[] = $row['name'];
        $myArrayDropouts[] = (int)$row['Number of Dropouts'];
    }
    $arrLength = count($myArrayNames);
    for ($i = 0; $i < $arrLength; $i++){
           echo "['".$myArrayNames[$i]."',".$myArrayDropouts[$i]."],";
          if($i == $arrLength)
          {
           echo "['".$myArrayNames[$i]."',".$myArrayDropouts[$i]."]";
          }  
    }
 ?>
        ]);

        // Set options for Sarah's pie chart.
        var options = {title:'How many dropouts for each course per year',
                       width:1300,
                       height:300};

        // Instantiate and draw the chart for Sarah's pizza.
        var chart = new google.visualization.LineChart(document.getElementById('course_div'));
        chart.draw(data, options);
      }

      // Callback that draws the pie chart for Anthony's pizza.
      function drawITChart() {

        // Create the data table for Anthony's pizza.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Monthly salary');

        data.addRows([
<?php
    $sql = " select ce.monthly_base_pay, course.name from course_employment as ce join course on ce.c_ID = course.c_ID 
where monthly_base_pay > 3000 
 group by course.name order by monthly_base_pay desc limit 5";
    $myResult = mysqli_query($db, $sql);
    $myArrayNames = [];
    $myArrayDropouts = [];   
    while($row = mysqli_fetch_array($myResult, MYSQLI_ASSOC)) {
        $myArrayNames[] = $row['name'];
        $myArrayDropouts[] = (int)$row['monthly_base_pay'];
    }
    $arrLength = count($myArrayNames);
    for ($i = 0; $i < $arrLength; $i++){
           echo "['".$myArrayNames[$i]."',".$myArrayDropouts[$i]."],";
          if($i == $arrLength)
          {
           echo "['".$myArrayNames[$i]."',".$myArrayDropouts[$i]."]";
          }  
    }
 ?>
        ]);

        // Set options for Anthony's pie chart.
        var options = {title:'Monthly salary based on course',
                       width:1300,
                       height:300};

        // Instantiate and draw the chart for Anthony's pizza.
        var chart = new google.visualization.LineChart(document.getElementById('salary_div'));
        chart.draw(data, options);
      }
           // Callback that draws the pie chart for Anthony's pizza.
      function drawCourseChart() {

        // Create the data table for Anthony's pizza.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Employment Rate');

        data.addRows([
<?php
    $sql2 = "SELECT course_employment.employ_rate, course_employment.year FROM course_employment WHERE course_employment.c_ID = (SELECT course.c_ID FROM course WHERE course.name LIKE '%Information Technology%')";
    $myResult2 = mysqli_query($db, $sql2);
    $myArrayNames2 = [];
    $myArrayDropouts2 = [];   
    while($row2 = mysqli_fetch_array($myResult2, MYSQLI_ASSOC)) {
        $myArrayNames2[] = $row2['year'];
        $myArrayDropouts2[] = (int)$row2['employ_rate'];
    }
    $arrLength2 = count($myArrayNames2);
    for ($i = 0; $i < $arrLength2; $i++){
           echo "['".$myArrayNames2[$i]."',".$myArrayDropouts2[$i]."],";
          if($i == $arrLength2)
          {
           echo "['".$myArrayNames2[$i]."',".$myArrayDropouts2[$i]."]";
          }  
    }
 ?>
       ]);

        // Set options for Anthony's pie chart.
        var options = {title:'Employment Rate for IT sector',
                       width:1300,
                       height:300};

        // Instantiate and draw the chart for Anthony's pizza.
        var chart = new google.visualization.LineChart(document.getElementById('SIT_div'));
        chart.draw(data, options);
      }
    </script>

    </head>
    <body>
        <div id = "course_div"> </div>
        <br/>
        <div id = "salary_div"> </div>
        <br/>
        <div id = "SIT_div"> </div>
         <footer class="container-fluid text-center">
            <p>Footer Text</p>
        </footer>

    </body>
</html>