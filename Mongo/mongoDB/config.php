<?php
include_once __DIR__ . '/../vendor/autoload.php';

define('MONGODB_SERVER', 'localhost');
define('MONGODB_DATABASE', 'ict2103_project');

function getDbConnection()
{
    return (new MongoDB\Client('mongodb://' . MONGODB_SERVER))->selectDatabase(MONGODB_DATABASE);
    // return (new MongoDB\Client('mongodb://1801586YJM:19ICT2103@dds-gs55000587b16cd41891-pub.mongodb.singapore.rds.aliyuncs.com:3717,dds-gs55000587b16cd42844-pub.mongodb.singapore.rds.aliyuncs.com:3717?replicaSet=mgset-300300007'))->selectDatabase(MONGODB_DATABASE);
}

function getDocumentFromAccountCollection($username, $password)
{
    return getDbConnection()->selectCollection('account')->findOne([
        'userId' => $username,
        'password' => $password,
    ]);
}

function getDocumentFromBatchCourseCollection($filter)
{
    return getDbConnection()->selectCollection('batch_course')->findOne($filter);
}

function getDocumentsFromBatchCourseCollection()
{
    return getDbConnection()->selectCollection('batch_course')->find([], ['sort' => ['course' => 1, 'year' => 1]])->toArray();
}

function getDocumentFromBatchSchoolCollection($filter)
{
    return getDbConnection()->selectCollection('batch_school')->findOne($filter);
}

function getDocumentsFromBatchSchoolCollection()
{
    return getDbConnection()->selectCollection('batch_school')->find([], ['sort' => ['school' => 1, 'year' => 1]])->toArray();
}

function getDocumentsFromCourseCollection()
{
    return getDbConnection()->selectCollection('course')->find([], ['sort' => ['course' => 1]])->toArray();
}

function getDocumentFromGraduateEmployment($filter)
{
    return getDbConnection()->selectCollection('graduate_employment')->findOne($filter);
}

function getDocumentsFromGraduateEmployment()
{
    return getDbConnection()->selectCollection('graduate_employment')->find([], ['sort' => ['school' => 1, 'course' => 1, 'year' => 1]])->toArray();
}

function getDocumentsFromGraduateEmploymentBySchool()
{
    return getDbConnection()->selectCollection('graduate_employment')->aggregate([
        [
            '$group' => [
                '_id' => ['school' => '$school', 'year' => '$year'],
                'employment_rate_overall' => [
                    '$avg' => '$employment_rate_overall',
                ],
                'basic_monthly_mean' => [
                    '$avg' => '$basic_monthly_mean',
                ],
            ],
        ],
        ['$sort' => ['_id' => 1]],
    ])->toArray();
}

function getDocumentsFromSchoolCollection()
{
    return getDbConnection()->selectCollection('school')->find([], ['sort' => ['school' => 1]])->toArray();
}

function getNumberOfDropoutsByCourse()
{
    return getDbConnection()->selectCollection('batch_course')->aggregate([
        [
            '$group' => [
                '_id' => '$course',
                'intake' => [
                    '$sum' => '$intake',
                ],
                'graduate' => [
                    '$sum' => '$graduate',
                ],
            ],
        ],
        [
            '$addFields' => [
                'Number of Dropouts' => [
                    '$subtract' => ['$intake', '$graduate'],
                ],
            ],
        ],
        [
            '$project' => [
                'intake' => 0,
                'graduate' => 0,
            ],
        ],
        ['$sort' => ['_id' => 1]],
    ])->toArray();
}

function getNumberOfDropoutsBySchool()
{
    return getDbConnection()->selectCollection('batch_school')->aggregate([
        [
            '$group' => [
                '_id' => '$school',
                'intake' => [
                    '$sum' => '$intake',
                ],
                'graduate' => [
                    '$sum' => '$graduate',
                ],
            ],
        ],
        [
            '$addFields' => [
                'Number of Dropouts' => [
                    '$subtract' => ['$intake', '$graduate'],
                ],
            ],
        ],
        [
            '$project' => [
                'intake' => 0,
                'graduate' => 0,
            ],
        ],
        ['$sort' => ['_id' => 1]],
    ])->toArray();
}

function getMonthlySalaryBasedOnCourse() {
    $courses = getDbConnection()->selectCollection('graduate_employment')->find([], ['sort' => ['year' => 1, 'course' => 1]])->toArray();
    $result = [];

    foreach ($courses as $document) {
        $course = $document['course'];

        if (strpos(strtolower($document['course']), 'tech') !== false || strpos(strtolower($document['course']), 'computer') !== false || strpos(strtolower($document['course']), 'mass') !== false || strpos(strtolower($document['course']), 'computing') !== false || strpos(strtolower($document['course']), 'information') !== false) {
            $course = 'Information Technology';
        } else if (strpos(strtolower($document['course']), 'business') !== false || strpos(strtolower($document['course']), 'account') !== false || strpos(strtolower($document['course']), 'economic') !== false) {
            $course = 'Business';
        } else if (strpos(strtolower($document['course']), 'law') !== false) {
            $course = 'Law';
        } else if (strpos(strtolower($document['course']), 'design') !== false || strpos(strtolower($document['course']), 'arts') !== false || strpos(strtolower($document['course']), 'music') !== false || strpos(strtolower($document['course']), 'chinese') !== false || strpos(strtolower($document['course']), 'english') !== false || strpos(strtolower($document['course']), 'history') !== false || strpos(strtolower($document['course']), 'policy') !== false) {
            $course = 'Design';
        } else if (strpos(strtolower($document['course']), 'engine') !== false || strpos(strtolower($document['course']), 'architecture') !== false || strpos(strtolower($document['course']), 'service') !== false) {
            $course = 'Engineering';
        } else if (strpos(strtolower($document['course']), 'science') !== false || strpos(strtolower($document['course']), 'dentist') !== false || strpos(strtolower($document['course']), 'medicine') !== false || strpos(strtolower($document['course']), 'education') !== false || strpos(strtolower($document['course']), 'studies') !== false || strpos(strtolower($document['course']), 'physic') !== false || strpos(strtolower($document['course']), 'psychology') !== false || strpos(strtolower($document['course']), 'sociology') !== false || strpos(strtolower($document['course']), 'chemistry') !== false || strpos(strtolower($document['course']), 'biology') !== false || strpos(strtolower($document['course']), 'biological') !== false || strpos(strtolower($document['course']), 'dental') !== false) {
            $course = 'Science';
        }

        $result[$course][] = ['employment_rate_overall' => $document['employment_rate_overall'], 'basic_monthly_mean' => $document['basic_monthly_mean']];
    }

    $aggregateResults = [];

    foreach ($result as $course => $value) {
        $count = count($value);
        $employmentRate = 0;
        $basicMonthlyMean = 0;

        for ($i = 0; $i < $count; $i++) {
            $employmentRate += $value[$i]['employment_rate_overall'];
            $basicMonthlyMean += $value[$i]['basic_monthly_mean'];
        }

        $aggregateResults[] = [
            'course' => $course,
            'employment_rate_overall' => $employmentRate / $count,
            'basic_monthly_mean' => $basicMonthlyMean / $count
        ];
    }

    return $aggregateResults;
}

function getEmployRateForITSector() {
    $courses = getDbConnection()->selectCollection('graduate_employment')->find([], ['sort' => ['year' => 1, 'course' => 1]])->toArray();
    $result = [];

    foreach ($courses as $document) {
        $course = $document['course'];

        if (strpos(strtolower($document['course']), 'tech') !== false || strpos(strtolower($document['course']), 'computer') !== false || strpos(strtolower($document['course']), 'mass') !== false || strpos(strtolower($document['course']), 'computing') !== false || strpos(strtolower($document['course']), 'information') !== false) {
            $course = 'Information Technology';
        } else if (strpos(strtolower($document['course']), 'business') !== false || strpos(strtolower($document['course']), 'account') !== false || strpos(strtolower($document['course']), 'economic') !== false) {
            $course = 'Business';
        } else if (strpos(strtolower($document['course']), 'law') !== false) {
            $course = 'Law';
        } else if (strpos(strtolower($document['course']), 'design') !== false || strpos(strtolower($document['course']), 'arts') !== false || strpos(strtolower($document['course']), 'music') !== false || strpos(strtolower($document['course']), 'chinese') !== false || strpos(strtolower($document['course']), 'english') !== false || strpos(strtolower($document['course']), 'history') !== false || strpos(strtolower($document['course']), 'policy') !== false) {
            $course = 'Design';
        } else if (strpos(strtolower($document['course']), 'engine') !== false || strpos(strtolower($document['course']), 'architecture') !== false || strpos(strtolower($document['course']), 'service') !== false) {
            $course = 'Engineering';
        } else if (strpos(strtolower($document['course']), 'science') !== false || strpos(strtolower($document['course']), 'dentist') !== false || strpos(strtolower($document['course']), 'medicine') !== false || strpos(strtolower($document['course']), 'education') !== false || strpos(strtolower($document['course']), 'studies') !== false || strpos(strtolower($document['course']), 'physic') !== false || strpos(strtolower($document['course']), 'psychology') !== false || strpos(strtolower($document['course']), 'sociology') !== false || strpos(strtolower($document['course']), 'chemistry') !== false || strpos(strtolower($document['course']), 'biology') !== false || strpos(strtolower($document['course']), 'biological') !== false || strpos(strtolower($document['course']), 'dental') !== false) {
            $course = 'Science';
        }

        if ($course !== 'Information Technology')
            continue;

        $result[$document['year']][] = ['employment_rate_overall' => $document['employment_rate_overall']];
    }

    $aggregateResults = [];

    foreach ($result as $year => $value) {
        $count = count($value);
        $employmentRate = 0;

        for ($i = 0; $i < $count; $i++) {
            $employmentRate += $value[$i]['employment_rate_overall'];
        }

        $aggregateResults[] = [
            'year' => $year,
            'employment_rate_overall' => $employmentRate / $count
        ];
    }

    return $aggregateResults;
}

function getGraduateEmploymentOnCourse() {
    $courses = getDbConnection()->selectCollection('graduate_employment')->find([], ['sort' => ['year' => 1, 'course' => 1]])->toArray();
    $result = [];

    foreach ($courses as $document) {
        $course = $document['course'];

        if (strpos(strtolower($document['course']), 'tech') !== false || strpos(strtolower($document['course']), 'computer') !== false || strpos(strtolower($document['course']), 'mass') !== false || strpos(strtolower($document['course']), 'computing') !== false || strpos(strtolower($document['course']), 'information') !== false) {
            $course = 'Information Technology';
        } else if (strpos(strtolower($document['course']), 'business') !== false || strpos(strtolower($document['course']), 'account') !== false || strpos(strtolower($document['course']), 'economic') !== false) {
            $course = 'Business';
        } else if (strpos(strtolower($document['course']), 'law') !== false) {
            $course = 'Law';
        } else if (strpos(strtolower($document['course']), 'design') !== false || strpos(strtolower($document['course']), 'arts') !== false || strpos(strtolower($document['course']), 'music') !== false || strpos(strtolower($document['course']), 'chinese') !== false || strpos(strtolower($document['course']), 'english') !== false || strpos(strtolower($document['course']), 'history') !== false || strpos(strtolower($document['course']), 'policy') !== false) {
            $course = 'Design';
        } else if (strpos(strtolower($document['course']), 'engine') !== false || strpos(strtolower($document['course']), 'architecture') !== false || strpos(strtolower($document['course']), 'service') !== false) {
            $course = 'Engineering';
        } else if (strpos(strtolower($document['course']), 'science') !== false || strpos(strtolower($document['course']), 'dentist') !== false || strpos(strtolower($document['course']), 'medicine') !== false || strpos(strtolower($document['course']), 'education') !== false || strpos(strtolower($document['course']), 'studies') !== false || strpos(strtolower($document['course']), 'physic') !== false || strpos(strtolower($document['course']), 'psychology') !== false || strpos(strtolower($document['course']), 'sociology') !== false || strpos(strtolower($document['course']), 'chemistry') !== false || strpos(strtolower($document['course']), 'biology') !== false || strpos(strtolower($document['course']), 'biological') !== false || strpos(strtolower($document['course']), 'dental') !== false) {
            $course = 'Science';
        }

        $result[$document['year']][$course][] = ['employment_rate_overall' => $document['employment_rate_overall'], 'basic_monthly_mean' => $document['basic_monthly_mean']];
    }

    $aggregateResults = [];

    foreach ($result as $year => $value2) {
        foreach ($value2 as $course => $value) {
            $count = count($value);
            $employmentRate = 0;
            $basicMonthlyMean = 0;

            for ($i = 0; $i < $count; $i++) {
                $employmentRate += $value[$i]['employment_rate_overall'];
                $basicMonthlyMean += $value[$i]['basic_monthly_mean'];
            }

            $aggregateResults[] = [
                'year' => $year,
                'course' => $course,
                'employment_rate_overall' => $employmentRate / $count,
                'basic_monthly_mean' => $basicMonthlyMean / $count
            ];
        }
    }


    return $aggregateResults;
}
