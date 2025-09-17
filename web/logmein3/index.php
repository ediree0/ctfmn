<?php
include 'flag.php';
if (isset($_POST['login'])) {
    if ($_POST['username']!=$_POST['password'] && md5($_POST['username'])==md5($_POST['password'])) {
        echo '<h1 style="color:red">'.$flag.'</h1>';
    }
    else{
        echo 'Username or password incorrect';
    }
}
?>
<form action="" method="post">
    Username:<br>
    <input name="username" /><br><br>

    Password:<br>
    <input name="password" /><br><br>

    <button type="submit">Login</button>
</form>
