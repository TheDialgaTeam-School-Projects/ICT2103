<?php

	$delSQL = "DELETE FROM course_employment";
	$delStmt = $pdo->prepare($delSQL);
	$delStmt->execute();

	
	$altSQL = "ALTER TABLE course_employment AUTO_INCREMENT = 1";
	$altStmt = $pdo->prepare($altSQL);
	$altStmt->execute();

	$sql = "SELECT employ_rate, course, year, monthly_base_pay FROM graduate_employment ";
    $stmt = $pdo->prepare($sql);
	$stmt->execute();

	$coursesArr = array();
	$graduateAmt = 0;
	while ($row = $stmt->fetch()) {

    	if (strpos(strtolower($row['course']), 'tech') !== false || strpos(strtolower($row['course']), 'computer') !== false || strpos(strtolower($row['course']), 'mass') !== false || strpos(strtolower($row['course']), 'computing') !== false || strpos(strtolower($row['course']), 'information') !== false) {
		    $cID = 'C002';
		}
		else if (strpos(strtolower($row['course']), 'business') !== false || strpos(strtolower($row['course']), 'account') !== false || strpos(strtolower($row['course']), 'economic') !== false ) {
		    $cID = 'C003';
		}
		else if (strpos(strtolower($row['course']), 'law') !== false ) {
		    $cID = 'C006';
		}
		else if (strpos(strtolower($row['course']), 'design') !== false || strpos(strtolower($row['course']), 'arts') !== false || strpos(strtolower($row['course']), 'music') !== false || strpos(strtolower($row['course']), 'chinese') !== false  || strpos(strtolower($row['course']), 'english') !== false || strpos(strtolower($row['course']), 'history') !== false || strpos(strtolower($row['course']), 'policy') !== false) {
		    $cID = 'C004';
		}
		else if (strpos(strtolower($row['course']), 'engine') !== false || strpos(strtolower($row['course']), 'architecture') !== false || strpos(strtolower($row['course']), 'service') !== false) {
		    $cID = 'C001';
		}
		else if (strpos(strtolower($row['course']), 'science') !== false || strpos(strtolower($row['course']), 'dentist') !== false || strpos(strtolower($row['course']), 'medicine') !== false || strpos(strtolower($row['course']), 'education') !== false || strpos(strtolower($row['course']), 'studies') !== false || strpos(strtolower($row['course']), 'physic') !== false  || strpos(strtolower($row['course']), 'psychology') !== false  || strpos(strtolower($row['course']), 'sociology') !== false || strpos(strtolower($row['course']), 'chemistry') !== false || strpos(strtolower($row['course']), 'biology') !== false || strpos(strtolower($row['course']), 'biological') !== false || strpos(strtolower($row['course']), 'dental') !== false) {
		    $cID = 'C005';
		}
		$coursesArr[$cID][$row['year']][] = ['employ_rate' => $row['employ_rate'], 'monthly_base_pay' => $row['monthly_base_pay']];

	}

	$tempArr = array(); $gradEmploy = array();
	$employRate = 0; $pay = 0; $count = 0;
	foreach ($coursesArr as $key => $value) {
		foreach ($value as $year => $data) {
			$employRate = 0; $basePay = 0; $count = 0;
			for($i = 0; $i < sizeof($data); $i++){
				if($data[$i]['employ_rate'] == 0 || $data[$i]['monthly_base_pay'] == 0){
					continue;
				}
				else{
					$count++;
					$employRate += $data[$i]['employ_rate'];
					$basePay += $data[$i]['monthly_base_pay'];
				}
			}
			$tempArr[$year] = ['employ_rate' => $employRate, 'monthly_base_pay' => $basePay, 'count' => $count];
		}

		$gradEmploy[$key] = $tempArr;
	}

	foreach ($gradEmploy as $key => $value) {
		foreach ($value as $year => $data) {
			$avgEmployRate = $data['employ_rate'] / $data['count'];
			$avgPay =  $data['monthly_base_pay'] / $data['count'];

			$sql = "INSERT INTO course_employment (c_ID, employ_rate, year, monthly_base_pay) VALUES (?,?,?,?)";
		    $stmt = $pdo->prepare($sql);
			$stmt->execute([$key, $avgEmployRate, $year, $avgPay]);
		}
	}
    	
?>