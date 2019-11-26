<?php

use MongoDB\BSON\ObjectId;

include_once __DIR__ . '/mongoDB/config.php';

$id = $_GET['id'];
$from = $_GET['from'];
$table = $_GET['table'];
$result = false;

if (!empty($id)) {
    if ($table === 'school') {
        $executeResult = getDbConnection()->selectCollection('batch_school')->deleteOne(['_id' => new ObjectId($id)]);
        $result = $executeResult->isAcknowledged() ? $executeResult->getDeletedCount() > 0 : false;
    } else if ($table === 'course') {
        $executeResult = getDbConnection()->selectCollection('batch_course')->deleteOne(['_id' => new ObjectId($id)]);
        $result = $executeResult->isAcknowledged() ? $executeResult->getDeletedCount() > 0 : false;
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
    echo "<script type='text/javascript'>alert('Error Deleting Record.');</script>";
}
