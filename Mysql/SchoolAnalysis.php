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

      google.charts.setOnLoadCallback(drawSITChart);

      google.charts.setOnLoadCallback(drawSchoolChart);


      google.charts.setOnLoadCallback(drawMonthlySalaryChart);

      function drawSchoolChart() {


        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Students who dropped out');

        data.addRows([
<?php
    $sql = "select school.name, sum(intake)-sum(graduate) AS 'Number of Dropouts' "
            . "FROM batch_school JOIN school ON batch_school.s_ID = school.s_ID "
            . "group by school.s_ID";
    $myResult = mysqli_query($db, $sql);
    $myArrayNames = [];
    $myArrayDropouts = [];   
    while($row = mysqli_fetch_array($myResult, MYSQLI_ASSOC)) {
        $myArrayNames[] = $row['name'];
        $myArrayDropouts[] = (int)$row['Number of Dropouts'];
    }
    $arrLength = count($myArrayNames);
    for ($i = 0; $i < $arrLength; $i++){
      $dropouts = $myArrayDropouts[$i];
          if($myArrayDropouts[$i] < 0){

            $dropouts = 0;
          }
          echo "['".$myArrayNames[$i]."',".$dropouts."],";
          if($i == $arrLength)
          {
           echo "['".$myArrayNames[$i]."',".$dropouts."]";
          }  
    }
 ?>
        ]);

        
        var options = {title:'How many dropouts for each School per year',
                       width:1300,
                       height:300};

       
        var chart = new google.visualization.LineChart(document.getElementById('School_chart_div'));
        chart.draw(data, options);
      }

   
      function drawMonthlySalaryChart() {

        
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Monthly salary');

        data.addRows([
<?php
    $sql = " select se.monthly_base_pay, school.name from school_employment as se join school on se.s_ID = school.s_ID where monthly_base_pay > 3000 group by school.name order by monthly_base_pay desc limit 5";
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

        
        var options = {title:'Monthly salary based on school',
                       width:1300,
                       height:300};

        
        var chart = new google.visualization.LineChart(document.getElementById('Salary_chart_div'));
        chart.draw(data, options);
      }
           
      function drawSITChart() {

        
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Employment Rate');

        data.addRows([
<?php
    $sql2 = "SELECT school_employment.employ_rate, school_employment.year FROM school_employment WHERE school_employment.s_ID = (SELECT school.s_ID FROM school WHERE school.name LIKE '%Singapore Institute of Technology%')";
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
        var options = {title:'Employment Rate for SIT',
                       width:1300,
                       height:300};

        // Instantiate and draw the chart for Anthony's pizza.
        var chart = new google.visualization.LineChart(document.getElementById('SIT_chart_div'));
        chart.draw(data, options);
      }
    </script>

    </head>
    <body>
        <div id = "School_chart_div"> </div>
        <br/>
        <div id = "Salary_chart_div"> </div>
        <br/>
        <div id = "SIT_chart_div"> </div>
         <footer class="container-fluid text-center">
            <p>Footer Text</p>
        </footer>

    </body>
</html>