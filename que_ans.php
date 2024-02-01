<?php include 'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-primary">
		<div class="card-header">
			<div class="card-tools">
				
                <!-- <a href="./index.php?page=asig_survey&id=<?php echo $row['id'] ?>" class="btn btn-primary btn-flat">
										<i class="fas fa-user-plus"></i>
									</a> -->

			</div>
		</div>
		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<colgroup>
					<col width="5%">
					<col width="25%">
					<col width="25%">
					<col width="25%">
					<col width="20%">
					
				</colgroup>
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th>Nombre</th>
						<th>Titulo</th>
						<th>Pregunta</th>
						<th>Respuesta</th>
						<th>Acción</th>
					</tr>
				</thead>
				<tbody>
				<?php
				$qry = $conn->query("SELECT 
                u.id as id,
                ss.title as titulo,
                ss.description as descripcion,
                u.firstname AS nombre,
                u.lastname AS apellido,
                q.question as pregunta, 
                a.answer as respuesta
            FROM 
                survey_set ss 
            
            INNER JOIN 
                survey_asig sa ON ss.id = sa.id_survey  -- Unir con la tabla pivot para obtener usuarios asignados
            INNER JOIN 
                users u ON sa.id_asig = u.id  -- Unir con la tabla de usuarios
            
            INNER JOIN 
                questions q ON ss.id = q.survey_id
            INNER JOIN 
                answers a ON a.question_id = q.id
            
			WHERE q.survey_id  = " . $_GET['id']);
               while ($row = $qry->fetch_assoc()) :
                ?>
						<tr>
                            <td><b><?php echo ($row['id']) ?></b></td>
							<td><b><?php echo ($row['nombre']) ?></b></td>
							<td><b ><?php echo $row['titulo'] ?></b></td>
							<td><b><?php echo ($row['pregunta']) ?></b></td>
							<td><b><?php echo ($row['respuesta']) ?></b></td>
							<td class="text-center">
						

                            <!-- <a href="./index.php?page=que_ans&id=<?php echo $row['id'] ?>" class="btn btn-primary btn-flat">
										<i class="fas fa-user-plus"></i>
									</a> -->

							
							</td>
						</tr>
					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>


<script>
	$(document).ready(function() {
		$('#list').dataTable()
		$('.delete_survey').click(function() {
			_conf("Deseas eliminar esta encuesta?", "delete_survey", [$(this).attr('data-id')])
		})
	})

	function delete_survey($id) {
		start_load()
		$.ajax({
			url: 'ajax.php?action=delete_survey',
			method: 'POST',
			data: {
				id: $id
			},
			success: function(resp) {
				if (resp == 1) {
					alert_toast("Datos eliminados correctamente", 'success')
					setTimeout(function() {
						location.reload()
					}, 1500)

				}
			}
		})
	}


	function asignar($id) {
		// start_load()
		// $.ajax({
		// 	url: 'ajax.php?action=delete_survey',
		// 	method: 'POST',
		// 	data: {
		// 		id: $id
		// 	},
		// 	success: function(resp) {
		// 		if (resp == 1) {
		// 			alert_toast("Datos eliminados correctamente", 'success')
		// 			setTimeout(function() {
		// 				location.reload()
		// 			}, 1500)

		// 		}
		// 	}
		// })

		alert(´ < h1 > hola mundo < /h1>´);

		}
</script>