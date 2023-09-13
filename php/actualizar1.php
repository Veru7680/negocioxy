<?php
$conexion = new mysqli("localhost", "root", "", "sistema");

$ID = $_POST["ID"];

$Nombre = mysqli_real_escape_string($conexion, $_POST["Nombre"]);
$Descripcion = mysqli_real_escape_string($conexion, $_POST["Descripcion"]);
if ($Nombre && $Descripcion and $ID != "") {
    $update_query = "UPDATE categoria SET Nombre='$Nombre', Descripcion='$descripcion' WHERE ID='$ID'";
    
    if ($conexion->query($update_query)) {
        echo 'Registro actualizado exitosamente.';
    } else {
        echo 'Error al actualizar el registro: ' . $conexion->error;
    }

    $conexion->close();
} else {
    // header("Location: interfaz.html");
    exit;
}
?>
