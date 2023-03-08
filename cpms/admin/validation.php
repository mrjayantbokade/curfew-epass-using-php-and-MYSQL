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


?>

<!DOCTYPE html>
<html>
<head>
   
    <title>Curfew Pass Management System | Validate  Pass</title>
</head>

<body>



<link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
  <link href="assets/css/style.css" rel="stylesheet" />
      <link href="assets/css/main-style.css" rel="stylesheet" />

    <!-- Page-Level CSS -->
    <link href="assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

</head>

<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
       <?php include_once('includes/header.php');?>
        <!-- end navbar top -->

        <!-- navbar side -->
        <?php include_once('includes/sidebar.php');?>
        <!-- end navbar side -->
        <!--  page-wrapper -->
        <div id="page-wrapper">

            
            <div class="row">
                 <!--  page header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Validate Pass</h1>
                </div>
                 <!-- end  page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                      
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>S.NO*</th>
                                           <th>Email*</th>
                                            <th>Name*</th>
                                            <th>Contact Number*</th>
                                            <th>identity_type*</th>
                                            <th>Id no.* </th>
                                            <th>Category*</th>
                                            <th>Gender*</th>
                                            <th>From Date*</th>
                                            <th>To Date*</th>
                                        </tr>
                                    </thead>
                                    <tbody>



<?php
$sql =" SELECT * from  registration ";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);


$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                                       <tr>
                  <td><?php echo htmlentities($cnt);?></td>
                  <td><?php  echo htmlentities($row->email);?></td>
                  <td><?php  echo htmlentities($row->name);?></td>
                  <td><?php  echo htmlentities($row->phone);?></td>
                  <td><?php  echo htmlentities($row->identity_type);?></td>
                  <td><?php  echo htmlentities($row->id_no);?></td>
                  <td><?php  echo htmlentities($row->category);?></td>
                  <td><?php  echo htmlentities($row->gender);?></td>
                  <td><?php  echo htmlentities($row->fdate);?></td>
                  <td><?php  echo htmlentities($row->tdate);?></td>


                  <td><a href="addpass1.php?viewid=<?php echo htmlentities ($row->ID);?>">Pass</a>  ||  <a href="delete.php?editid=<?php echo htmlentities ($row->ID);?>">Reject</a></td>
                  
                </tr>
               <?php $cnt=$cnt+1;}} ?> 


               <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="assets/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="assets/plugins/dataTables/dataTables.bootstrap.js"></script>


    <script>
        $(document).ready(function () {
            $('#dataTables-example').dataTable();
        });
    </script>


    </body>

</html>




<?php  ?>











