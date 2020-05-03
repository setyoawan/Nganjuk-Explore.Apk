<?php 

	require 'fungsi.php';

	$sejarah = query ("SELECT * FROM sejarah");

	// CARA TUTORIAL : KETIKA TOMBOL CARI DI TEKAN AKAN MELAKUKAN FUNGSI
 
	if (isset($_POST["cari"]) ) {
		# code...
		$sejarah = cari($_POST["keyword"]);
	
	}

	
	


 ?>





<!DOCTYPE html>
<html>
<head>
	<title>data sejarah</title>
	<link rel="stylesheet" type="text/css" href="../cssb/bootstrap.min.css">
</head>
<body>

<div class="container-fluid">
	<div class="container bg-light pb-4">
		<div class="row mt-3">
			<div class="col text-center">
	<h3>Data sejarah nganjuk explore</h3>
			</div>

			
		</div>
			

		
	<div class="row mt-2">
			<div class="col">
		<a href="tambah.php" class="btn btn-primary">Tambah data</a>
			</div>

			<div class="col">
		<form class="form-inline float-right" action="" method="post">
			<div class="form-group">
				<input class="form-control" type="text" name="keyword" autofocus="" autocomplete="off" width="200px;">
			</div>
				
			<button class="btn btn-primary ml-2 " type="submit" name="cari">
				cari
			</button>
			
			

		</form>
			</div>
	</div>
	<br>

	<table class="table table-hover" border="1" cellpadding="10" cellspacing="0">
		<thead class="thead-dark">
		<tr>
			<th>No.</th>
			<th>Aksi</th>
			<th>Nama</th>
			<th>Lokasi</th>
			<th>Isi</th>
			<th>Gambar</th>
			<th>Kategori</th>
		</tr>
		</thead>
		<?php $i=1; ?>
		<?php foreach ($sejarah as $row ) : ?> 
		<tr>

			<th><?php echo $i; ?></th>
			<td>
				<a href="edit.php?id=<?php echo $row["id"]; ?>">Edit</a> |
				<a href="hapus.php?id=<?php echo $row["id"]; ?>" onclick="return confirm('yakin ingin menghapus data'); ">Hapus</a>
			</td>
			<td><?php echo $row["nama"]; ?></td>
			<td><?php echo $row["lokasi"]; ?></td>
			<td><?php echo substr($row["isi"],0, 50); ?></td>
			<td><img src="img/<?php echo $row["gambar"]; ?>" width="50"></td>
			<td><?php echo $row["kategori"]; ?></td>
			
		</tr>
		<?php $i++; ?>
		<?php endforeach; ?>
		

	


	</table>

	<div class="row">
		<div class="col">
			<a href="../index.php" class="btn btn-outline-primary float-left">kembali</a>
		</div>
	
		<div class="col">
			<a href="done.php" class="btn btn-primary float-right">hasil</a>
		</div>

	</div>

	<!--CONTAINER TUTUP-->	
	</div>


	
</div>
</body>
</html>