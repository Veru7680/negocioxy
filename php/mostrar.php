<?php
$mysqli_link = mysqli_connect("localhost", "root", "", "sistema");
if (mysqli_connect_errno()) {
    printf("MySQL connection failed with the error: %s", mysqli_connect_error());
    exit;
}
$select_query = "SELECT * FROM producto LIMIT 10";
$result = mysqli_query($mysqli_link, $select_query);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabla de Productos</title>
</head>
<body>
    <h1>Tabla de Productos</h1>
    <table border="1">
        <tr>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Stock</th>
            <th>IdCategoria</th>
        </tr>
        <?php while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)): ?>
            <tr>
                <td><?php echo $row['Nombre']; ?></td>
                <td><?php echo $row['Precio']; ?></td>
                <td><?php echo $row['Stock']; ?></td>
                <td><?php echo $row['IdCategoria']; ?></td>
            </tr>
        <?php endwhile; ?>
    </table>
</body>
</html>

<?php
// Cerrar la conexión a la base de datos
// detalle de la ventga que productos estan comprande
mysqli_close($mysqli_link);
?>