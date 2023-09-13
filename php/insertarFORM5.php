<?php

$Fecha = $_POST['Fecha'];
$MontoI = $_POST['MontoI'];
$MontoF = $_POST['MontoF'];


$mysqli_link = mysqli_connect("localhost", "root", "", "sistema");
if (mysqli_connect_errno())
{
    printf("MySQL connection failed with the error: %s", mysqli_connect_error());
    exit;
}
//INSERT INTO `usuarios` (`Idusr`, `Nombre`, `Clave`, `Fecha`) VALUES (NULL, 'ronald', '123456', '2023-08-01');
$insert_query = "INSERT INTO `venta`(`Fecha`,`MontoI`,`MontoF`) 
VALUES ('". mysqli_real_escape_string($mysqli_link, $Fecha)."','".mysqli_real_escape_string($mysqli_link, $MontoI)."','".mysqli_real_escape_string($mysqli_link, $MontoF)."')";
 
// run the insert query 
If (mysqli_query($mysqli_link, $insert_query)) {
    echo 'Se ha insertado correctamente.';
}
 
// close the db connection 
mysqli_close($mysqli_link);
?>