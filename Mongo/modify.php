<!DOCTYPE html>
<html lang="en">
<head>
    <title>Modify</title>
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

use MongoDB\BSON\ObjectId;

include 'header.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['rid'];
    $from = $_POST['from'];
    $table = $_POST['table'];
    $number = $_POST['number'];
    $result = false;
    $error = false;
    $fieldToEdit = null;

    if ($from === 'intake') {
        $fieldToEdit = 'intake';
    } else if ($from === 'enroll') {
        $fieldToEdit = 'enrolled';
    } else if ($from === 'graduate') {
        $fieldToEdit = 'graduate';
    }

    if (is_numeric($number) && ((int) $number) > -1) {
        $number = (int) $number;
    } else {
        echo "<script type='text/javascript'>alert('Amount is not a valid number.');</script>";
        $error = true;
    }

    if (!$error) {
        if ($table === 'school') {
            $executeResult = getDbConnection()->selectCollection('batch_school')->updateOne(['_id' => new ObjectId($id)], [
                '$set' => [
                    $fieldToEdit => $number,
                    'last_edited_by' => $_SESSION['login_user']
                ]
            ]);

            if ($executeResult->isAcknowledged()) {
                $result = $executeResult->getModifiedCount() > 0;
            }
        } else if ($table === 'course') {
            $executeResult = getDbConnection()->selectCollection('batch_course')->updateOne(['_id' => new ObjectId($id)], [
                '$set' => [
                    $fieldToEdit => $number,
                    'last_edited_by' => $_SESSION['login_user']
                ]
            ]);

            if ($executeResult->isAcknowledged()) {
                $result = $executeResult->getModifiedCount() > 0;
            }
        }

        if ($result) {
            if ($from === 'intake') {
                header('Location: intake.php');
            } else if ($from === 'enroll') {
                header('Location: enrollment.php');
            } else if ($from === 'graduate') {
                header('Location: graduates.php');
            }
        } else {
            echo "<script type='text/javascript'>alert('Error Modifying Record.');</script>";
        }
    }

    if ($table === 'school') {
        $document = getDocumentFromBatchSchoolCollection(['_id' => new ObjectId($id)]);
    } else if ($table === 'course') {
        $document = getDocumentFromBatchCourseCollection(['_id' => new ObjectId($id)]);
    }
} else {
    $id = $_GET['id'];
    $from = $_GET['from'];
    $table = $_GET['table'];

    if ($table === 'school') {
        $document = getDocumentFromBatchSchoolCollection(['_id' => new ObjectId($id)]);
    } else if ($table === 'course') {
        $document = getDocumentFromBatchCourseCollection(['_id' => new ObjectId($id)]);
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
                        <?php if ($table === 'school'): ?>
                            <th scope="col">School Name</th>
                        <?php elseif ($table === 'course'): ?>
                            <th scope="col">Course Name</th>
                        <?php endif; ?>
                        <th scope="col">Year</th>
                        <?php
                        if ($from === 'intake'): ?>
                            <th scope="col">Intake</th>
                        <?php elseif ($from === 'enroll'): ?>
                            <th scope="col">Enrollment</th>
                        <?php elseif ($from === 'graduate'): ?>
                            <th scope="col">Graduates</th>
                        <?php endif; ?>
                        <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row"><?= $document[$table] ?></th>
                        <td><?= $document['year'] ?></td>
                        <td>
                            <?php if ($from === 'intake'): ?>
                                <input type="text" class="form-control" id="number" name="number"
                                       placeholder="Enter amount" value="<?= $document['intake'] ?>"/>
                            <?php elseif ($from === 'enroll'): ?>
                                <input type="text" class="form-control" id="number" name="number"
                                       placeholder="Enter amount" value="<?= $document['enrolled'] ?>"/>
                            <?php elseif ($from === 'graduate'): ?>
                                <input type="text" class="form-control" id="number" name="number"
                                       placeholder="Enter amount" value="<?= $document['graduate'] ?>"/>
                            <?php endif; ?>
                            <input type="hidden" id="rid" name="rid" value="<?= $id ?>"/>
                            <input type="hidden" id="table" name="table" value="<?= $table; ?>"/>
                            <input type="hidden" id="from" name="from" value="<?= $from; ?>"/>
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
