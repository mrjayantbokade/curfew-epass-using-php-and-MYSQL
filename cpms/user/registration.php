<?php
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','cpms');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS);
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}




$email1=$_POST['email'];
$name1=$_POST['name'];
$phone=$_POST['phone'];
$identity_type=$_POST['identity_type'];
$id_no=$_POST['id_no'];
$category1=$_POST['category'];
$gender1=$_POST['gender'];
$from_date=$_POST['fdate'];
$to_date=$_POST['tdate'];


$sql =" INSERT INTO  registration (email,name,phone,identity_type,id_no,category,gender,fdate,tdate) VALUES  ('".$email1."','".$name1."',$phone,'".$identity_type."','".$id_no."','".$category1."','".$gender1."','".$from_date."','".$to_date."')";
$query = $dbh -> prepare($sql);
$query->execute();

header("location: http://localhost/CUrfewepass/cpms/");






?>