<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sistema_geografico";

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}


$keyword = $_GET['keyword'];
echo "Palabra clave: " . $keyword;



$sql = "SELECT * FROM lagos2 WHERE nombre LIKE '%$keyword%'";
$result = $conn->query($sql);



if ($result->num_rows > 0) {
    echo "<ul>";
    while ($row = $result->fetch_assoc()) {
        echo "<li>Nombre: " . $row["nombre"] . "</li>";
        echo "<li>Pais: " . $row["pais"] . "</li>";
       
    }
    echo "</ul>";
} else {
    echo " No se encontraron resultados.";
}


$conn->close();
?>