<?php
include 'DB/Config.php';
$id = mysqli_real_escape_string($db,$_GET['id']);
$sql = "DELETE FROM graduate_employment WHERE ge_ID = $id";

if (mysqli_query($db, $sql)) {
    header('Location: grad_employment.php');
    exit;
} else {
    echo "<script type='text/javascript'>alert('Error Deleting Record.');</script>";
}
?>

