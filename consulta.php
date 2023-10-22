<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sistema_geografico";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Recuperar la palabra clave ingresada por el usuario
$keyword = $_GET['keyword'];
echo "Palabra clave: " . $keyword;


// Realizar la consulta
$sql = "SELECT * FROM volcan2 WHERE nombre LIKE '%$keyword%'";
$result = $conn->query($sql);


// Generar la respuesta en formato HTML
if ($result->num_rows > 0) {
    echo "<ul>";
    while ($row = $result->fetch_assoc()) {
        echo "<li>Volcan: " . $row["nombre"] . "</li>";
        echo "<li>Altura: " . $row["altura"] . "</li>";
        echo "<li>Pais: " . $row["pais"] . "</li>";
    }
    echo "</ul>";
} else {
    echo " No se encontraron resultados.";
}

// Cerrar la conexión
$conn->close();
?>