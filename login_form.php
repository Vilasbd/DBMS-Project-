<?php
include_once 'classes/db1.php';
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CEMS - Colorful Login</title>
    <?php require 'utils/styles.php'; ?><!--css links. file found in utils folder-->
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        .content {
            margin-top: 50px;
        }

        .container {
            width: 50%;
            margin: 0 auto;
        }

        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px #000000;
        }

        label {
            font-weight: bold;
            color: #333333;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #007bff;
            color: #ffffff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: block;
            margin: 0 auto;
        }

        button:hover {
            background-color: #0056b3;

        }

        .error-message {
            color: red;
        }
    </style>
</head>

<body>
    <?php require 'utils/header.php'; ?><!--header content. file found in utils folder-->
    <div class="content"><!--body content holder-->
        <div class="container">
            <div class="col-md-6 col-md-offset-3">
                <form method="POST"><!--form-->
                    <!--username field-->
                    <label>UserName:</label><br>
                    <input type="text" name="name" class="form-control" required><br>
                    <label>Password</label><br>
                    <input type="password" name="password" class="form-control" required><br>
                    <button type="submit" name="update" class="btn btn-default">Login</button>
                </form>
            </div><!--col md 6 div-->
        </div><!--container div-->
    </div><!--content div-->
    <?php require 'utils/footer.php'; ?><!--footer content. file found in utils folder-->
</body>

</html>

<?php
if (isset($_POST["update"])) {
    $myusername = $_POST['name'];
    $mypassword = $_POST['password'];

    if ($mypassword == 'admin' && $myusername == 'admin') {
        echo "<script>
        alert('Login Successful');
        window.location.href='adminPage.php';
        </script>";
    } else {
        echo "<script>
        alert('Invalid credentials');
        window.location.href='login_form.php';
        </script>";
    }
}
?>
