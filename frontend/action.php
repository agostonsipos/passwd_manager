<h1>Password Generator</h1>

<?php
$name = $_POST["name"];
$site = $_POST["site"];
$code = $_POST["code"];
$len = $_POST["len"];

$cmd = "../backend/passwd.jl ".$name." ".$site." ".$code." ".$len;

$passwd = shell_exec($cmd);

print 'Username was: '.$name;
print '<br>';
print 'Generated password: '.$passwd;

?>
