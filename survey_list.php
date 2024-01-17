<?php include 'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-primary">
		<div class="card-header">
			<div class="card-tools">
				<a class="btn btn-block btn-sm btn-default btn-flat border-primary" href="./index.php?page=new_survey"><i class="fa fa-plus"></i> Agregar Nueva Encuesta</a>
			</div>
		</div>
		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<colgroup>
					<col width="5%">
					<col width="15%">
					<col width="15%">
					<col width="15%">
					<col width="15%">
					<col width="15%">
				</colgroup>
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th>Título</th>
						<th>Descripción</th>
						<th>Inicio</th>
						<th>Final</th>
						<th>Acción</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					$qry = $conn->query("SELECT * FROM survey_set order by date(start_date) asc,date(end_date) asc ");
					while ($row = $qry->fetch_assoc()) :
					?>
						<tr>
							<th class="text-center"><?php echo $i++ ?></th>
							<td><b><?php echo ucwords($row['title']) ?></b></td>
							<td><b class="truncate"><?php echo $row['description'] ?></b></td>
							<td><b><?php echo date("M d, Y", strtotime($row['start_date'])) ?></b></td>
							<td><b><?php echo date("M d, Y", strtotime($row['end_date'])) ?></b></td>
							<td class="text-center">
								<!-- <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		                      Action
		                    </button>
		                    <div class="dropdown-menu" style="">
		                      <a class="dropdown-item" href="./index.php?page=edit_survey&id=<?php echo $row['id'] ?>">Edit</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item delete_survey" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
		                    </div> -->
								<div class="btn-group">
									<a href="./index.php?page=edit_survey&id=<?php echo $row['id'] ?>" class="btn btn-primary btn-flat">
										<i class="fas fa-edit"></i>
									</a>
									<a href="./index.php?page=view_survey&id=<?php echo $row['id'] ?>" class="btn btn-info btn-flat">
										<i class="fas fa-eye"></i>
									</a>
									<button type="button" class="btn btn-danger btn-flat delete_survey" data-id="<?php echo $row['id'] ?>">
										<i class="fas fa-trash"></i>
									</button>

									<!-- Button trigger modal 
										Asginar Usario a ecuesnta
									-->
									<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
										<i class="fas fa-user-plus"></i>
										Asignar
									</button>

									<!-- Modal -->
									<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<?php
												$mysqli = new mysqli('localhost', 'root', '', 'sisen');
												?>
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Asginar Usuario</h5>
													<button type="button" class="close" data-dismiss="modal" aria-label="Close">

														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<label for="paises" class="sr-only">Paises:</label>
													<select class="form-control">
														<option value="">Seleccione:</option>
														<?php
														$query = $mysqli->query("SELECT * FROM users");
														while ($valores = mysqli_fetch_array($query)) {
															echo '<option value="' . $valores[id] . '">' . $valores[firstname] . '</option>';
														}
														?>
													</select>
												</div>
												<div class="modal-footer">
													
													<button type="button" class="btn btn-primary">Asignar</button>

													<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
												</div>
											</div>
										</div>
									</div>


								</div>
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