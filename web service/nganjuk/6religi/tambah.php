<?php 

require 'fungsi.php';

if (isset($_POST["submit"]) ) {

	//cek data berhasil ditambahkan atau tidak 


	if (tambah($_POST) > 0 ) {

		echo "
			<script>
	 			alert ('data berhasil ditambahkan');
	 			document.location.href ='tampil.php';
	 		</script> 
	 		";

	}else {

		echo "
	 			<script>
	 			alert ('data gagal ditambahkan');
	 			document.location.href ='tampil.php';
	 			</script>

 			";

	}
}


?>


<!DOCTYPE html>
<html>
<head>
	<title>data religi</title>
	<link rel="stylesheet" type="text/css" href="../cssb/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="material.css">
</head>
<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
<body class="background">
<div class="container">

		<div class="col text-center">
		<h3>Tambah data</h3>
		</div>


	<form method="post" action="" enctype="multipart/form-data">

		<label for="nama">Nama </label>
		<input class="form-control" type="text" name="nama" id="nama" required="required"> 
		<br>

		<label for="kategori">Kategori </label>
		<select class="form-control" id="kategori" name="kategori">
		        <option value="alam" > alam </option>
		        <option value="sejarah" > sejarah </option>
		        <option value="edukasi" > edukasi </option>
		        <option value="kuliner" > kuliner </option>
		        <option value="belanja" > belanja </option>
		        <option value="religi" > religi </option>
		</select>
		<br>
		
		<label for="lokasi">lokasi </label>
		<input class="form-control" type="text" name="lokasi" id="lokasi" required="required">  
		<br>

		<label for="isi">Isi</label> 
		<textarea class="form-control" name="isi" required="required" id="isi" style="height: 315px;"></textarea>

		<br>
		<label for="gambar">gambar </label>
		<input class="form-control" type="file" name="gambar" id="gambar" required="required"> 


		<br>


	<div class="row">
		<div class="col md-3">
			<a href="tampil.php" class="btn btn-primary btn-lg">kembali</a>
		</div>
		
		<div class="col md-3 ">
			<button class="btn btn-primary btn-lg float-right" type="submit" name="submit">Tambah data</button>
		</div>
	</div>
	

</div>

 	
</body>

<!--
<script>
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('isi');
</script>-->
</html>