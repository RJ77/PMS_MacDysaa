<?php
$hostname = 'localhost';
$username = 'root';
$password = '';
$link = mysql_connect($hostname, $username, $password);
if(is_resource($link))
    {
    if(mysql_select_db("tas_db", $link) === TRUE)
        {   
        }
    else
        {
        echo 'Unable to select database';
        }
    }
else
    {
    echo 'Unable to connect';
    }
?>