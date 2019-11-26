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

use MongoDB\BSON\ObjectId;

include 'header.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['rid'];
    $mbp = $_POST['mbp'];
    $employ_rate = $_POST['employ_rate'];
    $result = false;
    $error = false;

    if (is_numeric($employ_rate) && ((float) $employ_rate) > -1 && ((float) $employ_rate) < 101) {
        $employ_rate = (float) $employ_rate;
    } else {
        echo "<script type='text/javascript'>alert('Employ rate is not a valid number.');</script>";
        $error = true;
    }

    if (is_numeric($mbp) && ((int) $mbp) > -1) {
        $mbp = (int) $mbp;
    } else {
        echo "<script type='text/javascript'>alert('Basic Monthly Pay is not a valid number.');</script>";
        $error = true;
    }

    if (!$error) {
        $executeResult = getDbConnection()->selectCollection('graduate_employment')->updateOne(['_id' => new ObjectId($id)], [
            '$set' => [
                'employment_rate_overall' => $employ_rate,
                'basic_monthly_mean' => $mbp,
                'last_edited_by' => $_SESSION['login_user'],
            ],
        ]);

        if ($executeResult->isAcknowledged()) {
            $result = $executeResult->getModifiedCount() > 0;
        }

        if ($result) {
            header('Location: grad_employment.php');
        } else {
            echo "<script type='text/javascript'>alert('Error Modifying Record.');</script>";
        }
    }

    $document = getDocumentFromGraduateEmployment(['_id' => new ObjectId($id)]);
} else {
    $id = $_GET['id'];
    $document = getDocumentFromGraduateEmployment(['_id' => new ObjectId($id)]);
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
                        <th scope="col">Employ Rate</th>
                        <th scope="col">Monthly Base Pay</th>
                        <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row"><?= $document['school'] ?></th>
                        <td><?= $document['course'] ?></td>
                        <td><?= $document['year'] ?></td>
                        <td>
                            <input type="text" class="form-control" id="employ_rate" name="employ_rate"
                                   placeholder="Enter amount" value="<?= $document['employment_rate_overall'] ?>">
                        </td>
                        <td>
                            <input type="text" class="form-control" id="mbp" name="mbp" placeholder="Enter amount"
                                   value="<?= $document['basic_monthly_mean'] ?>">
                            <input type="hidden" class="form-control" id="rid" name="rid" value="<?= $id ?>"/>
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
