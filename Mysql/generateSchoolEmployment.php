<?php

	$delSQL = "DELETE FROM school_employment";
	$delStmt = $pdo->prepare($delSQL);
	$delStmt->execute();

	$altSQL = "ALTER TABLE school_employment AUTO_INCREMENT = 1";
	$altStmt = $pdo->prepare($altSQL);
	$altStmt->execute();

	$sql = "SELECT employ_rate, school, year, monthly_base_pay FROM graduate_employment ";
    $stmt = $pdo->prepare($sql);
	$stmt->execute();

	$schoolArr = array();
	$graduateAmt = 0;
	while ($row = $stmt->fetch()) {

    	if (strpos(strtolower($row['school']), 'national university') !== false ) {
		    $sID = 'S001';
		}
		else if (strpos(strtolower($row['school']), 'technological') !== false ) {
		    $sID = 'S002';
		}
		else if (strpos(strtolower($row['school']), 'management') !== false ) {
		    $sID = 'S003';
		}
		else if (strpos(strtolower($row['school']), 'institute of technology') !== false ) {
		    $sID = 'S004';
		}
		else if (strpos(strtolower($row['school']), 'design') !== false ) {
		    $sID = 'S005';
		}
		else if (strpos(strtolower($row['school']), 'social') !== false ) {
		    $sID = 'S006';
		}
		else if (strpos(strtolower($row['school']), 'education') !== false ) {
		    $sID = 'S007';
		}
		
		$schoolArr[$sID][$row['year']][] = ['employ_rate' => $row['employ_rate'], 'monthly_base_pay' => $row['monthly_base_pay']];

	}

	$tempArr = array(); $gradEmploy = array();
	$employRate = 0; $pay = 0; $count = 0;
	foreach ($schoolArr as $key => $value) {
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

			$sql = "INSERT INTO school_employment (s_ID, employ_rate, year, monthly_base_pay) VALUES (?,?,?,?)";
		    $stmt = $pdo->prepare($sql);
			$stmt->execute([$key, $avgEmployRate, $year, $avgPay]);
		}
	}
    	
?>