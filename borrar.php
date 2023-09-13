<?php
    $mysqli_link = mysqli_connect("localhost", "root", "", "tienda");
    if (mysqli_connect_errno())
    {
        printf("MySQL connection failed with the error: %s", mysqli_connect_error());
        exit;
    }
    $delete_query = "DELETE FROM usuarios WHERE `Nombre` = 'Yeber'";
    
    // run the update query 
    If (mysqli_query($mysqli_link, $delete_query)) {
        echo 'Record deleted successfully.';
    }
    
    // close the db connection 
    mysqli_close($mysqli_link);
?>