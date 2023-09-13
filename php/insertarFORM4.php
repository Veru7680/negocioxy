<?php

$Nombre = $_POST['Nombre'];
$Descripcion = $_POST['Descripcion'];


$mysqli_link = mysqli_connect("localhost", "root", "", "sistema");
if (mysqli_connect_errno())
{
    printf("MySQL connection failed with the error: %s", mysqli_connect_error());
    exit;
}

$insert_query = "INSERT INTO `categoria`(`Nombre`,`Descripcion`) 
VALUES ('". mysqli_real_escape_string($mysqli_link, $Nombre)."','".mysqli_real_escape_string($mysqli_link, $Descripcion)."')";
 
If (mysqli_query($mysqli_link, $insert_query)) {
    echo 'Se ha insertado correctamente.';
}
 
mysqli_close($mysqli_link);
?>