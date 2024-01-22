<?php
if (!isset($conn)) {
    include 'db_connect.php';
}
?>
<div class="col-lg-12">
    <div class="card">
        <div class="card-body">
            <form action="" id="manage_survey">
                <input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
                <div class="row">
                    <div class="col-md-6 border-right">
                        <div class="form-group">
                            <label for="" class="control-label">Título</label>
                            <input type="text" id="id_surv" name="title" class="form-control form-control-sm" required value="<?php echo isset($stitle) ? $stitle : '' ?>">
                        </div>
                    <!-- Select Input-->
                    <div class="col-12">
                        <div class="form-group">

                            <label class="control-label">Usuario</label>
                            <select class="form-control" name="id_user">

                                <option id="id_user" value="">Seleccione:</option>
                                <?php
                                include 'db_connect.php';

                               
                                if (isset($_GET['id']) && is_numeric($_GET['id'])) {
                                    // Usamos una consulta preparada para prevenir inyección de SQL
                                    $stmt = $conn->prepare("SELECT * FROM users");
                                    $stmt->bind_param("i", $_GET['id']);
                                    $stmt->execute();
                                    $result = $stmt->get_result();

                                    // Comprobamos si hay filas devueltas
                                    if ($result->num_rows > 0) {
                                        // Iterar a través de los resultados de la fila
                                        while ($valores = $result->fetch_assoc()) {
                                            // Asegúrate de escapar de la salida para evitar XSS
                                            echo '<option value="' . htmlspecialchars($valores['id']) . '">' . htmlspecialchars($valores['firstname']) . '</option>';
                                        }
                                    }
                                    $stmt->close();
                                } else {
                                    echo '<option value="">ID inválido o no proporcionado</option>';
                                }
                                ?>
                            </select>

                        </div>
                    </div>

                    <hr>
                    <div class="col-lg-12 text-right justify-content-center d-flex">
                    <button type="button" class="btn btn-primary" onclick="addRecord()">Agregar</button>
                        <button class="btn btn-secondary" type="button" onclick="location.href = 'index.php?page=asig_list.php'">Cancelar</button>
                    </div>
            </form>
        </div>
    </div>
</div>

<script>
  // Añadir datos para enviarlos a tabla detalle de encuestas
  function addRecord() {
  // Validamos los datos del formulario
  var id_surv = $("input[name='id']").val();
  if (id_surv === "") {
    alert("El campo 'id' es obligatorio");
    return;
  }

  var id_user = $("select[name='id_user']").val();
  if (id_user === "") {
    alert("El campo 'id_user' es obligatorio");
    return;
  }

  // Enviamos la solicitud POST
  $.post("addRecord.php", {
    id: id_surv,
    id_user: id_user
  }, function(data, status){
    // Procesamos la respuesta
    if (status === "success") {
      // Registro agregado correctamente
    //   alert("Registro agregado correctamente 2024");
      window.location.href = 'index.php?page=asig_list';
    } else {
      // Error al agregar el registro
      alert("Error al agregar el registro");
    }
  });
}

</script>