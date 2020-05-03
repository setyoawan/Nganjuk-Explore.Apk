<?php 

	require 'fungsi.php';

	//ambil data di url 
	$id = $_GET["id"];

	//query data mahasiswa berdasarkan id
	//mengambil langsung index ke 0 nya .elemen pertamanya 

	$user = query ("SELECT * FROM kuliner WHERE id = $id")[0];

	//var_dump($mhs);



	//cek apakah tombol submit sudah di tekan atau belum

	if ( isset($_POST["submit"]) ) {

		//cek apakah data sudah di edit atau belum 
		if ( edit($_POST) > 0) {

			echo "
			<script> 
				alert('data berhasil di ubah');
				document.location.href='tampil.php';
				
			</script>";
		}else {
			echo "
			<script> 
				alert('data gagal di ubah');
				
			</script>";

		}
	}

?>









<!DOCTYPE html>
<html>
<head>
	<title>edit data</title>
	<link rel="stylesheet" type="text/css" href="../cssb/bootstrap.min.css">
</head>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<body>
<div class="container bg-light pb-3">
	<div class="row">
		<div class="col text-center">
		<h3>Edit data member</h3>
		</div>
	</div>

	<div class="row mt-3">

		<div class="col">
		<form  method="post" action="" enctype="multipart/form-data">


			<input type="hidden" name="id" value="<?php echo $user["id"]; ?>">
			<input type="hidden" name="gambarLama" value="<?php echo $user["gambar"]; ?>">

			<label for="nama">Nama </label>
			<input class="form-control" type="text" name="nama" id="nama" required="required" value="<?php echo $user["nama"]; ?>"> 

			<label for="kategori">Kategori </label>
			<select class="form-control" id="kategori" name="kategori">
					<option value="<?php echo $user["kategori"]; ?>" ><?php echo $user["kategori"]; ?></option>
			        <option value="alam" > alam </option>
			        <option value="sejarah" > sejarah </option>
			        <option value="edukasi" > edukasi </option>
			        <option value="kuliner" > kuliner </option>
			        <option value="belanja" > belanja </option>
			        <option value="religi" > religi </option>
			</select>
			<br>
			
			<label for="lokasi">lokasi </label>
			<input class="form-control" type="text" name="lokasi" id="lokasi" required="required" value="<?php echo $user["lokasi"]; ?>">  
			<br>
			
			<label for="isi">Isi</label> 
			<textarea class="form-control" name="isi" required="required" id="isi" style="height: 315px;"><?php echo $user["isi"]; ?></textarea>
			<br>

			<label for="gambar">gambar </label>
			<br>
			<img class="img-fluid img-thumbnail" src="img/<?php echo $user['gambar']; ?> " width="100">
			<input readonly=""class="form-control" type="file" name="gambar" id="gambar"> 
			<br>

			
		</div><!-- TUTUP E COL DUWUR-->
	</div>	
		
	<div class="row">

		<div class="col">
			<a href="tampil.php" class="btn btn-primary btn-lg">kembali</a>
		</div>

		<div class="col">
			<button class="btn btn-primary btn-lg float-right" type="submit" name="submit">edit data</button>
		</div>

	</div>
	
	</form>
	
	

</div><!--TUTUP CONTAINER-->

</body>

<!--
<script>
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('isi');
</script>
-->
</html>