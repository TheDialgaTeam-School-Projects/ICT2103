<?php
include 'DB/Config.php';
$id = mysqli_real_escape_string($db,$_GET['id']);
$from = mysqli_real_escape_string($db,$_GET['from']);
$table = mysqli_real_escape_string($db,$_GET['table']);

if($table == 'school')
{
    $sql = "DELETE FROM batch_school WHERE bs_ID = $id";
    
}
else if($table == 'course')
{
    $sql = "DELETE FROM batch_course WHERE bc_ID = $id";
}

if (mysqli_query($db, $sql)) {
    if($from == 'intake')
    {
        header('Location: intake.php');
    }
    else if($from == 'enroll')
    {
        header('Location: enrollment.php');
    }
    else if($from == 'graduate')
    {
        header('Location: graduates.php');
    }
    exit;
} else {
    echo "<script type='text/javascript'>alert('Error Deleting Record.');</script>";
}
?>

