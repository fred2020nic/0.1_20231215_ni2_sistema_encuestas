<?php
  // Validamos los datos recibidos
  if (!isset($_POST['id']) || !isset($_POST['id_user'])) {
    // Datos no recibidos
    header("Location: index.php?page=asig_list");
    exit();
  }

  // Obtenemos los datos del formulario
  $id_surv = $_POST['id'];
  $id_user = $_POST['id_user'];

  // Realizamos la conexión a la base de datos
  include("db_connect.php");

  // Preparamos la consulta
  $stmt = $conn->prepare("INSERT INTO survey_asig (id_survey, id_asig) VALUES(?, ?)");

  // Vinculamos los parámetros
  $stmt->bind_param("ii", $id_surv, $id_user);

  // Ejecutamos la consulta
  $stmt->execute();

  // Comprobamos el número de filas afectadas
  if ($stmt->affected_rows === 0) {
    // No se ha agregado ningún registro
    header("Location: index.php?page=asig_list");
    exit();
  }

  // Agregamos el mensaje de éxito
  echo "1 Record Added!";

  // Cerramos la conexión a la base de datos
  $stmt->close();

  // Redirigimos a la lista de registros
  header("Location: index.php?page=asig_list");
?>
