<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
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
        $(document).ready(function () {
            $('#data_table').DataTable();
        })
    </script>
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
</head>
<body>
<?php
include 'header.php';
if (!isset($_SESSION['type']) || $_SESSION['type'] != 'admin') {
    echo "<script type='text/javascript'>alert('YOU ARE NOT ADMIN DONT COME HERE');</script>";
    header('Location: index.php');
}
?>
<div class="container-fluid text-center" style="padding-top: 1em">
    <div class="row content">
        <div class="col-sm-3 sidenav">
            <?php if (isset($_SESSION['loggedIn'])): ?>
                <p>
                    <button class="btn btn-secondary"><a href="insert.php?table=school">Insert into School table</a>
                    </button>
                </p>
                <p>
                    <button class="btn btn-secondary"><a href="insert.php?table=course">Insert into Course table</a>
                    </button>
                </p>
                <?php if (isset($_SESSION['type']) && $_SESSION['type'] == "admin"): ?>
                    <p>
                        <button class="btn"><a href="insert_ge.php">Insert into Graduates Employment table</a></button>
                    </p>
                <?php endif; ?>
            <?php endif; ?>
        </div>
        <div class="col-sm-7 text-left">
            <table class="display" id="data_table" style="width: 100%">
                <caption>Graduates Employment Rate</caption>
                <thead>
                <tr>
                    <th scope="col" onclick="sortTable(0, 1)">School Name</th>
                    <th scope="col" onclick="sortTable(1, 1)">Course Name</th>
                    <th scope="col" onclick="sortTable(2, 1)">Year</th>
                    <th scope="col" onclick="sortTable(3, 1)">Employment Rate</th>
                    <th scope="col" onclick="sortTable(4, 1)">Monthly Base Pay</th>
                    <th scope="col" onclick="sortTable(5, 1)">Last Edited By</th>
                    <th scope="col">Modify/Delete</th>
                </tr>
                </thead>
                <tbody>
                <?php $documentsFromGraduateEmployment = getDocumentsFromGraduateEmployment();
                foreach ($documentsFromGraduateEmployment as $document): ?>
                    <tr>
                        <td><?= $document['school'] ?></td>
                        <td><?= $document['course'] ?></td>
                        <td><?= $document['year'] ?></td>
                        <td><?= sprintf('%.2f%%', $document['employment_rate_overall']) ?></td>
                        <td><?= sprintf('$%.2f', $document['basic_monthly_mean']) ?></td>
                        <td><?= $document['last_edited_by'] ?? '' ?></td>
                        <td>
                            <a href="modify_ge.php?id=<?= $document['_id'] ?>">Modify</a> /
                            <a href="delete_ge.php?id=<?= $document['_id'] ?>">Delete</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<footer class="container-fluid text-center">
    <p>Footer Text</p>
</footer>
</body>
</html>
