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
</head>
<body>
<?php
include 'header.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $table = $_POST['table'];
    $result = false;
    $error = false;

    $sc = $_POST['sc'];
    $year = $_POST['year'];
    $enroll = $_POST['enroll'];
    $intake = $_POST['intake'];
    $graduate = $_POST['graduate'];

    if (is_numeric($year) && ((int)$year) > 1 && ((int)$year) < 10000) {
        $year = (int)$year;
    } else {
        echo "<script type='text/javascript'>alert('Invalid year');</script>";
        $error = true;
    }

    if (is_numeric($enroll) && ((int)$enroll) > -1) {
        $enroll = (int)$enroll;
    } else {
        echo "<script type='text/javascript'>alert('Invalid enrollment amount');</script>";
        $error = true;
    }

    if (is_numeric($intake) && ((int)$intake) > -1) {
        $intake = (int)$intake;
    } else {
        echo "<script type='text/javascript'>alert('Invalid intake amount');</script>";
        $error = true;
    }

    if (is_numeric($graduate) && ((int)$graduate) > -1) {
        $graduate = (int)$graduate;
    } else {
        echo "<script type='text/javascript'>alert('Invalid graduate amount');</script>";
        $error = true;
    }

    if (!$error) {
        if ($table === 'school') {
            $executeResult = getDbConnection()->selectCollection('batch_school')->insertOne([
                'school' => $sc,
                'year' => $year,
                'enrolled' => $enroll,
                'intake' => $intake,
                'graduate' => $graduate,
                'last_edited_by' => $_SESSION['login_user'],
            ]);

            if ($executeResult->isAcknowledged()) {
                $result = $executeResult->getInsertedCount() > 0;
            }
        } else if ($table === 'course') {
            $executeResult = getDbConnection()->selectCollection('batch_course')->insertOne([
                'course' => $sc,
                'year' => $year,
                'enrolled' => $enroll,
                'intake' => $intake,
                'graduate' => $graduate,
                'last_edited_by' => $_SESSION['login_user'],
            ]);

            if ($executeResult->isAcknowledged()) {
                $result = $executeResult->getInsertedCount() > 0;
            }
        }

        if ($result) {
            header('Location: index.php');
            echo "<script type='text/javascript'>alert('Record Inserted Successfully.');</script>";
        } else {
            echo "<script type='text/javascript'>alert('Error Inserting Record.');</script>";
        }
    }
} else {
    $table = $_GET['table'];
}
?>
<div class="container-fluid text-center">
    <div class="row content">
        <div class="col-sm-8 text-left">
            <form method="POST">
                <table class="table">
                    <caption>Insert</caption>
                    <thead>
                    <tr>
                        <?php if ($table === 'school'): ?>
                            <th scope="col">School Name</th>
                        <?php elseif ($table === 'course'): ?>
                            <th scope="col">Course Name</th>
                        <?php endif; ?>
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
                                <?php if ($table === 'school'): ?>
                                    <?php $schools = getDocumentsFromSchoolCollection();
                                    foreach ($schools as $document): ?>
                                        <option value="<?= $document['school'] ?>>"><?= $document['school'] ?></option>
                                    <?php endforeach; ?>
                                <?php elseif ($table === 'course'): ?>
                                    <?php $courses = getDocumentsFromCourseCollection();
                                    foreach ($courses as $document): ?>
                                        <option value="<?= $document['course'] ?>>"><?= $document['course'] ?></option>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </select>
                        </th>
                        <td>
                            <input type="text" class="form-control" id="year" name="year" placeholder="Enter year"/>
                        </td>
                        <td>
                            <input type="text" class="form-control" id="intake" name="intake"
                                   placeholder="Enter amount"/>
                        </td>
                        <td>
                            <input type="text" class="form-control" id="enroll" name="enroll"
                                   placeholder="Enter amount"/>
                        </td>
                        <td>
                            <input type="text" class="form-control" id="graduate" name="graduate"
                                   placeholder="Enter amount"/>
                            <input type="hidden" id="table" name="table" value="<?= $table ?>"/>
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
