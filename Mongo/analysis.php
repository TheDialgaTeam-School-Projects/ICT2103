<?php
include_once __DIR__ . '/DB/Config.php';
include_once __DIR__ . '/mongoDB/config.php';
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Analysis</title>
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
        .row.content {
            height: 450px
        }

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

            .row.content {
                height: auto;
            }
        }
    </style>
    <!-- Google charts API -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        // Load Charts and the corechart package.
        google.charts.load('current', {'packages': ['corechart']});

        google.charts.setOnLoadCallback(drawBodohChart);
        google.charts.setOnLoadCallback(drawDropoutBySchool);
        // Draw the pie chart for Sarah's pizza when Charts is loaded.
        google.charts.setOnLoadCallback(drawSarahChart);

        // Draw the pie chart for the Anthony's pizza when Charts is loaded.
        google.charts.setOnLoadCallback(drawAnthonyChart);

        // Callback that draws the pie chart for Sarah's pizza.
        function drawSarahChart() {

            // Create the data table for Sarah's pizza.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Topping');
            data.addColumn('number', 'Students who dropped out');

            data.addRows([
                <?php $dropoutsPerCourse = getNumberOfDropoutsByCourse();
                foreach ($dropoutsPerCourse as $document): ?>
                ['<?= $document['_id'] ?>', <?= $document['Number of Dropouts'] ?>],
                <?php endforeach; ?>
            ]);

            // Set options for Sarah's pie chart.
            var options = {
                title: 'How many dropouts for each course per year',
                width: 1200,
                height: 300
            };

            // Instantiate and draw the chart for Sarah's pizza.
            var chart = new google.visualization.LineChart(document.getElementById('Sarah_chart_div'));
            chart.draw(data, options);
        }

        function drawDropoutBySchool() {

            // Create the data table for Sarah's pizza.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Topping');
            data.addColumn('number', 'Students who dropped out');

            data.addRows([
                <?php $dropoutsPerCourse = getNumberOfDropoutsBySchool();
                foreach ($dropoutsPerCourse as $document): ?>
                ['<?= $document['_id'] ?>', <?= $document['Number of Dropouts'] < 0 ? 0 : $document['Number of Dropouts'] ?>],
                <?php endforeach; ?>
            ]);

            // Set options for Sarah's pie chart.
            var options = {
                title: 'How many dropouts for each school per year',
                width: 1200,
                height: 300
            };

            // Instantiate and draw the chart for Sarah's pizza.
            var chart = new google.visualization.LineChart(document.getElementById('dropout_by_school'));
            chart.draw(data, options);
        }

        // Callback that draws the pie chart for Anthony's pizza.
        function drawAnthonyChart() {

            // Create the data table for Anthony's pizza.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Topping');
            data.addColumn('number', 'Monthly salary');

            data.addRows([
                <?php $filteredCourse = getMonthlySalaryBasedOnCourse();
                foreach ($filteredCourse as $document): ?>
                ['<?= $document['course'] ?>', <?= $document['basic_monthly_mean'] ?>],
                <?php endforeach; ?>
            ]);

            // Set options for Anthony's pie chart.
            var options = {
                title: 'Monthly salary based on course',
                width: 1200,
                height: 300
            };

            // Instantiate and draw the chart for Anthony's pizza.
            var chart = new google.visualization.LineChart(document.getElementById('Anthony_chart_div'));
            chart.draw(data, options);
        }

        // Callback that draws the pie chart for Anthony's pizza.
        function drawBodohChart() {

            // Create the data table for Anthony's pizza.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Topping');
            data.addColumn('number', 'Employment Rate');

            data.addRows([
                <?php $filteredCourse = getEmployRateForITSector();
                foreach ($filteredCourse as $document): ?>
                ['<?= $document['year'] ?>', <?= $document['employment_rate_overall'] ?>],
                <?php endforeach; ?>
            ]);

            // Set options for Anthony's pie chart.
            var options = {
                title: 'Employment Rate for IT sector',
                width: 1200,
                height: 300
            };

            // Instantiate and draw the chart for Anthony's pizza.
            var chart = new google.visualization.LineChart(document.getElementById('Bodoh_chart_div'));
            chart.draw(data, options);
        }
    </script>

</head>
<body>
<?php
include 'header.php';
?>
<div id="Sarah_chart_div"></div>
<br/>
<div id="dropout_by_school"></div>
<br/>
<div id="Anthony_chart_div"></div>
<br/>
<div id="Bodoh_chart_div"></div>
<footer class="container-fluid text-center">
    <p>Footer Text</p>
</footer>
</body>
</html>
