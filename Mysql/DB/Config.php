<?php
   define('DB_SERVER', 'localhost');
   define('DB_USERNAME', 'test');
   define('DB_PASSWORD', 'password');
   define('DB_DATABASE', 'ict2103_project');
   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);

   try{
	$pdo = new PDO('mysql: host=localhost; dbname=ict2103_project', 'test', 'password',
					array(
		            PDO::MYSQL_ATTR_LOCAL_INFILE => true,
		            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
		        ));	 
	}
	catch(PDOException $e)
    {
    	echo "Connection failed: " . $e->getMessage();
    }
?>
