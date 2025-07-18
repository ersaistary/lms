<?php 
    $queryUser = mysqli_query($config, "SELECT * FROM users WHERE deleted_at = 0");
    $rowUser = mysqli_fetch_all($queryUser, MYSQLI_ASSOC);
?>

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h5 class="card-tittle mt-3">Data User</h5>
                <div class="mb-3 d-flex justify-content-between">
                    <a href="?page=tambah-user" class="btn btn-primary mb-3" >Tambah User</a>
                    <a href="?page=restore-user" class="btn btn-primary mb-3">Restore User</a>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered datatable" >
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Full Name</th>
                                <th>Email</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($queryUser as $key => $row):?>
                            <tr>
                                <td><?= $key + 1 ?></td>
                                <td><?= $row['name'] ?></td>
                                <td><?= $row['email'] ?></td>
                                <td>
                                    <a href="?page=tambah-user&edit=<?php echo $row['id']?>" class = "btn btn-primary" name="edit">Edit</a>
                                    <a onclick="return confirm('Are you sure wanna delete this data?')" href="?page=tambah-user&delete=<?php echo $row['id']?>" class = "btn btn-danger" name="delete">Delete</a>
                                </td>
                            </tr>
                            <?php endforeach?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>