<?php include 'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-primary">
		<div class="card-header">
			<div class="card-tools">
				<a class="btn btn-block btn-sm btn-default btn-flat border-primary" href="./index.php?page=survey_list"> Asignar Usuario</a>


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
						<th>Título</th>
						<th>Descripción</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<!-- <th>Acción</th> -->
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					$qry = $conn->query("SELECT 
					sa.id as id,
					u.firstname as nombre, 
					u.lastname as apellido,
					s.title as titulo,
					s.description as descripcion
				FROM 
					survey_asig sa
				JOIN 
					users u ON sa.id_asig = u.id
				JOIN 
					survey_set s ON sa.id_survey = s.id
				 ORDER BY sa.id DESC");
					while ($row = $qry->fetch_assoc()) :
					?>
						<tr>
						    <td><b><?php echo ($row['id']) ?></b></td>
							<td><b><?php echo ($row['titulo']) ?></b></td>
							<td><b ><?php echo $row['descripcion'] ?></b></td>
							<td><b><?php echo ($row['nombre']) ?></b></td>
							<td><b><?php echo ($row['apellido']) ?></b></td>
							<td class="text-center">
								<!-- <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		                      Action
		                    </button>
		                    <div class="dropdown-menu" style="">
		                      <a class="dropdown-item" href="./index.php?page=edit_survey&id=<?php echo $row['id'] ?>">Edit</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item delete_survey" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
		                    </div> -->
							
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