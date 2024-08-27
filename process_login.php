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
