<?php include 'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-primary">
		<div class="card-header">
			<div class="card-tools">
				<a class="btn btn-block btn-sm btn-default btn-flat border-primary new_class" href="javascript:void(0)"><i class="fa fa-plus"></i> Add New</a>
			</div>
		</div>
		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<colgroup>
					<col width="20%">
					<col width="60%">
					<col width="20%">
				</colgroup>
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th>Level</th>
						<th>Section</th>
						<th>Number</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					$qry = $conn->query("SELECT * FROM classes order by level asc, section asc ");
					while ($row = $qry->fetch_assoc()) :
					?>
						<tr>
							<th class="text-center"><?php echo $i++ ?></th>
							<td><b><?php echo $row['level'] ?></b></td>
							<td><b><?php echo $row['section'] ?></b></td>
							<td><b><?php
									$ten = $row['level'];
									$lop = $row['section'];
									$result = $conn->query("SELECT COUNT(*) FROM classes cl, students stu  WHERE cl.id = stu.class_id AND cl.level LIKE N'" . $ten . "' AND cl.section LIKE '" . $lop . "'");
									$data = $result->fetch_assoc();
									if ($data['COUNT(*)'] > 0) {
										echo $data['COUNT(*)'];
									} else {
										echo 0;
									}
									?></b></td>
							<td class="text-center">
								<div class="btn-group">
									<a href="javascript:void(0)" data-id='<?php echo $row['id'] ?>' class="btn btn-primary btn-flat manage_class">
										<i class="fas fa-edit"></i>
									</a>
									<a href="index.php?page=view_student_class&id=<?php echo $row['id'] ?>" data-id='<?php echo $row['id'] ?>' class="btn btn-primary btn-flat view_stu_class">
										<i class="fas fa-eye"></i>
									</a>
									<button type="button" class="btn btn-danger btn-flat delete_class" data-id="<?php echo $row['id'] ?>">
										<i class="fas fa-trash"></i>
									</button>
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
		$('.new_class').click(function() {
			uni_modal("New class", "manage_class.php")
		})
		$('.manage_class').click(function() {
			uni_modal("Manage class", "manage_class.php?id=" + $(this).attr('data-id'))
		})
		$('.delete_class').click(function() {
			_conf("Are you sure to delete this class?", "delete_class", [$(this).attr('data-id')])
		})
		// $('.view_student').click(function() {
		// 	// _conf("Go to view", "view_student_class", [$(this).attr('data-id')])
		// 	location.href = 'index.php?page=view_student_class?id='.$(this).attr('data-id');
		// })
	})

	function delete_class($id) {
		start_load()
		$.ajax({
			url: 'ajax.php?action=delete_class',
			method: 'POST',
			data: {
				id: $id
			},
			success: function(resp) {
				if (resp == 1) {
					alert_toast("Data successfully deleted", 'success')
					setTimeout(function() {
						location.reload()
					}, 1500)

				}
			}
		})
	}
</script>