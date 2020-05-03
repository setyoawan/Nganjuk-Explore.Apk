<?php 
 
require '../koneksi.php';


// tak gawe ng FILE ADMIN tok ==========================================================================================================

//belum tak pakai (pakai sih sebagian)
//fungsi query
function query ($query) {
	global $conn;

	$result = mysqli_query ($conn,$query);
	$rows = [];
	while ( $row  = mysqli_fetch_assoc($result)) {
	 	# code...

	 	$rows[] = $row;

	 } 
	 return $rows;
}




//fungsi untuk menambah data di database
function tambah($data) {
	global $conn;




	//AMBIL DATA DARI TIAP ELEMEN DALAM FORM
	
	$nama = htmlspecialchars ($data["nama"]);
	$lokasi = htmlspecialchars ($data["lokasi"]);
	$isi = htmlspecialchars ($data["isi"]);
	$kategori = htmlspecialchars($data["kategori"]);


	$gambar = upload();
	if (!$gambar) {
		return false;
	}



	//query insert data
	$query ="INSERT INTO sejarah VALUES ('','$nama','$lokasi','$isi','$gambar','$kategori') ";
	mysqli_query($conn, $query);

	return mysqli_affected_rows ($conn);
	


}


function upload() {

	$namaFile = $_FILES['gambar']['name'];
	$ukuranFile = $_FILES['gambar']['size'];
	$error = $_FILES['gambar']['error'];
	$tmpName = $_FILES['gambar']['tmp_name'];

	//cek apakah tidak ada yg di upload

	if ($error === 4 ) {
		echo "
			<script>
	 			alert ('pilih gambar dulu');
	 		</script> 
	 		";

	 		return false;
	}

	//cek apakah yg di upload gambar 
	$ekstensiGambarValid = ['jpg','png','jpeg'];
	$ekstensiGambar = explode('.',$namaFile);
	$ekstensiGambar = strtolower(end($ekstensiGambar));


	if (!in_array($ekstensiGambar, $ekstensiGambarValid)) {

		echo "
			<script>
	 			alert ('yang anda upload bukan termasuk gambar');
	 		</script> 
	 		";

	}

	//cek ukuran gambar

	if ($ukuranFile > 2000000) {

		echo "
			<script>
	 			alert ('ukuran terlalu besar');
	 		</script> 
	 		";
	}

	//lolos pengecekan ,gambar siap di upload 
	//generate nama baru

	$namaFileBaru = uniqid();
	$namaFileBaru .='.' ;
	$namaFileBaru .= $ekstensiGambar; 


	move_uploaded_file($tmpName, 'img/' .$namaFileBaru);
	return $namaFileBaru;



}

// fungsi untuk mengedit data

function edit($data) {
	global $conn;

	$id = $data["id"];
	$nama = htmlspecialchars($data["nama"]);
	$lokasi = htmlspecialchars ($data["lokasi"]);
	$isi = htmlspecialchars ($data["isi"]);
	$kategori = htmlspecialchars(($data["kategori"]));
	$gambarLama = htmlspecialchars($data["gambarLama"]);

	//cek apakah memilih gambar baru apa bukan
	if ( $_FILES['gambar']['error'] === 4 ) {

		$gambar = $gambarLama;
	}else {
		$gambar = upload();
	}
	

	$query = "UPDATE sejarah SET 
		nama = '$nama',
		lokasi ='$lokasi',
		isi='$isi',
		kategori='$kategori',
		gambar='$gambar'

		WHERE id = $id 
		";

	mysqli_query($conn,$query);

	return mysqli_affected_rows($conn);

}

// DIPAKAI =============================================================================
// fungsi untuk menhapus data
function hapus ($id) {
	global $conn;

	mysqli_query($conn, "DELETE FROM sejarah WHERE id=$id");

	return mysqli_affected_rows($conn);
}

// DIPAKAI =============================================================================
// fungsi untuk mencari data 
// MEMBER--------
function cari ($keyword) {
	$query = "SELECT * FROM sejarah WHERE nama
	 		LIKE '%$keyword%'
	 		OR lokasi LIKE '%$keyword%'
	 		OR isi LIKE '%$keyword%'
	 		
	 		";

	return query ($query);





}


 ?>