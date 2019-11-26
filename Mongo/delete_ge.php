<?php

use MongoDB\BSON\ObjectId;

include_once __DIR__ . '/mongoDB/config.php';

$id = $_GET['id'];
$result = false;

if (!empty($id)) {
    $executeResult = getDbConnection()->selectCollection('graduate_employment')->deleteOne(['_id' => new ObjectId($id)]);
    $result = $executeResult->isAcknowledged() ? $executeResult->getDeletedCount() > 0 : false;
}

if ($result) {
    header('Location: grad_employment.php');
} else {
    echo "<script type='text/javascript'>alert('Error Deleting Record.');</script>";
}
