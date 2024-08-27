<?php
require 'classes/db1.php';
$id=$_GET['id'];
$result = mysqli_query($conn,"SELECT * FROM events,event_info ef,student_coordinator s,staff_coordinator st WHERE type_id = $id and ef.event_id=events.event_id and s.event_id=events.event_id and st.event_id=events.event_id  ");
?>


<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cems</title>
        <title></title>
        <?php require 'utils/styles.php'; ?><!--css links. file found in utils folder-->
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CEMS - Event Registration</title>
    <?php require 'utils/styles.php'; ?>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            color: #333;
        }

        .content {
            margin-top: 20px;
        }

        h1 {
            color: #000080;
            font-size: 42px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        hr {
            border: 1px solid #ccc;
            margin: 20px 0;
        }

        .subcontent {
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .btn-default {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        .btn-default:hover {
            background-color: #45a049;
        }

        img.img-responsive {
            width: 100%;
            height: auto;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <!-- Your existing HTML content here -->
</body>
</html>

    </head>

    <body>
   
    
        <?php require 'utils/header.php'; ?><!--header content. file found in utils folder-->
       
        <div class = "content"><!--body content holder-->
            <div class = "container">
                <div class = "col-md-12"><!--body content title holder with 12 grid columns-->
                   

            </div>
       
         
            <?php
                if (mysqli_num_rows($result) > 0) {

                 $i=0;
                while($row = mysqli_fetch_array($result)) {
                    
                include 'events.php';  
                
                $i++;
                    }
           ?>
<div class="container">
            <div class="col-md-12">
            <hr>
            </div>
            </div>
        <?php }?>
            <a class="btn btn-default" href="index.php"><span class="glyphicon glyphicon-circle-arrow-left"></span> Back</a>
            

        

        </div><!--body content div-->

     
        <?php require 'utils/footer.php'; ?><!--footer content. file found in utils folder-->
    </body>
    
</html>
