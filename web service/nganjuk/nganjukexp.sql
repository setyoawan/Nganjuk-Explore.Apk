-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2019 at 03:51 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nganjukexp`
--

-- --------------------------------------------------------

--
-- Table structure for table `alam`
--

CREATE TABLE `alam` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `lokasi` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alam`
--

INSERT INTO `alam` (`id`, `nama`, `lokasi`, `isi`, `gambar`, `kategori`) VALUES
(1, 'Air terjun sedudo', 'desa ngliman ', 'Obyek wisata air terjun di Nganjuk yang satu ini adalah salah satu air terjun yang fantastis di Indonesia. Ketinggiannya mencapai 105 Meter, berada di ketinggian dataran sekitar 1.438 Mdpl jadi udaranya dingin khas pegunungan ya gaes.\r\n\r\nLokasinya berada di Desa Ngliman yang ada di Kec Sawahan Kota Nganjuk Jawa Timur. Di tempat wisata alamdi Nganjuk ini anda akan mendapatkan pesona keindahan alam yang menakjubkan.\r\n\r\nAnda bisa sampai ke obyek wisata ini dengan mudah karena akses jalan. Dan transportasi yang baik juga sudah bisa anda nikmati untuk bisa sampai ke obyek wisata murah di Nganjuk ini.\r\n\r\nAir terjun ini juga di keramatkan oleh penduduk sekitar karena konon ada energi supranatural dari air terjun ini. Jadi tetap menjaga kesopanan ya gaes.\r\n\r\nAlamat : Desa Ngliman, Kecamatan Sawahan, Kabupaten Nganjuk\r\n\r\nFasilitas : Lahan parkir, toilet, gazebo, warung\r\n\r\nJam buka : Setiap hari ( Jam 08.00 â€“ 19.00 )\r\n\r\nTiket : Rp. 10.000/orang', '5d1168b114f0c.jpg', 'alam'),
(2, 'Grojogan duwur', 'desa sumbermiri', 'Wisata ini adalah wisata air alami yang sangat memanjakan. Lokasinya berada di tengah hutan yang alami dan eksotis sehingga sensasi yang luar biasa akan disuguhkan di obyek wisata ini.\r\n\r\nLetak Grojogan ini ada di Desa Sumbermiri, daerah yang ada di Kecamatan Lengkong Kabupaten Nganjuk Jawa Timur. Pesona keindahan alamnya yang luar biasa akan anda nikmati di tempat ini.\r\n\r\nAnda bisa berenang di Sungai Batuan kapur yang terdapat kolam yang bisa anda gunakan untuk berenang melepas penatnya pikiran.\r\n\r\nBatuan kapur yang artistik bisa anda manfaatkan untuk berfoto ria, karena pemandangan alamnya yang Instagramable. Wisata ini termasuk dalam kawasan KPH Jombang dan BKPH Krondong Jawa Timur.\r\n\r\nAlamat : Sumbermiri, Nganjuk, Kabupaten Nganjuk, Jawa Timur 64393\r\n\r\nFasilitas : Lahan parkir\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d119fc0593fc.jpg', 'alam'),
(3, 'Sendang putri wilis', 'desa ngliman', 'Obyek wisata murah di Nganjuk yang satu ini masih sangat alami dan menawarkan pesona alam yang akan membuat anda terkesima.\r\n\r\nUdara dan suasana pegunungan yang sejuk akan membuat anda betah berlama-lama di tempat ini. Udara yang segar dan air sendang yang jernih akan memanjakan tubuh anda saat anda bermain air di tempat ini.\r\n\r\nLokasi sendang Putri Wilis ini juga tidak jauh dari tempat parkir Obyek wisata Air terjun Singokromo, hanya berjarak 200 meteran. Jadi jangan sampai meninggalkan obyek wisata yang satu ini ya gaes.\r\n\r\nBiaya masuk sendang putri wilis ini hanya 5,000 rupiah jadi sangat murah bukan?\r\n\r\nAlamat : Desa Ngliman, Kecamatan Sawahan, Kabupaten Nganjuk\r\n\r\nFasilitas : Area berkemah\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d11a028541c0.jpg', 'alam'),
(4, 'Bukit batu songgong', 'desa margopatut', 'Anda bisa melihat pesona pemandangan alam yang indah dari atas ketinggian di bukit Batu Senggong.\r\n\r\nLokasinya berada di Desa Margopatut, sebuah desa yang berlokasi di Kecamatan Sawahan, Kota Nganjuk Jawa Timur.\r\n\r\nObyek wisata ini selalu ramai di datangi wisatawan khususnya muda-mudi yang suka foto hits dan instagramable. Menjadikan tempat ini sebagai tempat berfoto di Nganjuk yang menarik.\r\n\r\nBukit ini berada di dekat jalan Raya Sedudu-Sawahan, jadi anda bisa lebih mudah mengunjunginya. Menikmati udara segar khas pegunungan dan pemandangan alam dari atas ketinggian adalah sensasi yang luar biasa, jadi tunggu apalagi\r\n\r\nAlamat : Desa Margopatut, Kabupaten Nganjuk, Jawa Timur\r\n\r\nFasilitas : Lahan parkir\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d11a069ace9a.jpg', 'alam'),
(5, 'Air terjun singokromo', 'desa ngliman', 'Obyek wisata air terjun yang satu ini memang sangat indah. Ketinggian air terjun ini hanya 20 meter.\r\n\r\nTetapi pemandangan yang menawan bisa anda nikmati di tempat rekreasi di Nganjuk ini. Jadi sayang sekali jika liburan anda di kota Nganjuk tanpa mengunjungi obyek wisata yang satu ini.\r\n\r\nLokasi air terjun Singokromo ini berada di Desa Ngliman. Desa yang satu ini terletak di Kecamatan Sawahan, Kab Nganjuk Jawa Timur.\r\n\r\nObyek wisata di Nganjuk yang murah ini masih alami. Sehingga akses jalannya belum baik dan sedikit menyulitkan perjalanan anda menuju air terjun Singokromo ini.\r\n\r\nJarak lokasi air terjun ini dari Kota Nganjuk hanya berjarak sekitar 3 Km saja, jadi lumayan dekat gaes.\r\n\r\nLokasinya pun berdekatan dengan lokasi air terjun Sedudo yang terkenal itu, jadi anda harus menyambanginya ya.\r\n\r\nAlamat : Desa Ngliman, Sawahan, Kabupaten Nganjuk\r\n\r\nFasilitas : Lahan parkir, toilet\r\n\r\nJam buka : Setiap hari ( Jam 08.00 â€“ 17.00 )\r\n\r\nTiket : Rp. 10.000/orang', '5d11fb263d4ce.jpg', 'alam'),
(6, 'Air terjun sumber manik', 'desa blongko', 'Destinasi wisata air terjun Sumber Manik ini berlokasi di Kecamatan Ngetos, Kab Nganjuk, lokasi tepatnya ada di Desa Blongko.\r\n\r\nLokasi air terjun ini memang tersembunyi jadi anda harus bersusah payah untuk menemukan air terjun ini. Anda bisa bertanya kepada warga sekitar untuk menuju tempat ini.\r\n\r\nJangan khawatir  karena keindahan wisata ini tidak akan membuat anda kecewa. Dan sangat cocok untuk anda yang suka berpetualang dan pecinta alam, karena alam di sekitarnya sangat indah dan masih alami.\r\n\r\nKetinggian air terjun ini mencapai 35 meter jadi cukup tinggi ya gaes, buruan cuss.\r\n\r\nAlamat : Desa Blongko, Kecamatan Ngertos, Kab. Nganjuk\r\n\r\nFasilitas : Lahan parkir, mushola, toilet, warung, dll\r\n\r\nJam buka : Setiap hari ( Jam 07.00 â€“ 18.00 )\r\n\r\nTiket : Rp. 4.000/orang', '5d11fbc6a3265.jpg', 'alam'),
(7, 'Air terjun ngebleng', 'desa pule', 'Obyek wisata air terjun Ngebleng ini berada di Desa Pule, Kecamatan Jatikalen, Nganjuk Jawa Timur, tepatnya di Dusun Tondowesi Lor.\r\n\r\nWisata air terjun yang satu ini masih asri dan belum di kelola sehingga belum ada tiket masuk wisata.\r\n\r\nAnda bisa sampai di tempat ini dengan berjalan kaki sekitar satu jam dengan jarak sekitar 2km dari pemukiman warga. Di tempat ini anda bisa melihat pesona air terjun yang alami dan masih terjaga keindahannya.\r\n\r\nAlamat : Dusun Tondowesi lor, Desa Pule, kec. Jatikalen, kab. Nganjuk, Jawa Timur 64393\r\n\r\nFasilitas : Lahan parkir\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d11fe96c139a.jpg', 'alam'),
(8, 'Goa margo tresno', 'desa sugihwaras', 'Lokasi Goa ini ada di Desa Sugih Waras, Kecamatan Ngluyu, Kabupaten Nganjuk, tepatnya di Dusun Cabean. Goa dengan suasana mistis dan magis bisa anda jumpai di goa Margo ini.\r\n\r\nDi dalam goa ini belum ada fasilitas penerangan sehingga suasananya masih gelap dan di huni ribuan hewan malam yaitu kelelawar.\r\n\r\nLokasi wisata goa di Nganjuk ini ada didalam hutan jati yang berada di kawasan Pegunungan Kendeng. Di kawasan goa ini anda juga bisa mandi di kolam yang ada di depan Goa.\r\n\r\nMenikmati airnya yang segar dan bersih pastinya akan mengobati lelahnya perjalanan anda menuju goa Margo ini. Jadi sangat menarik untuk anda kunjungi bukan?\r\n\r\nAlamat : Desa Sugihwaras, Kabupaten Nganjuk\r\n\r\nFasilitas : Lahan parkir, Kolam renang, taman bermain\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : Rp. 5.000/orang', '5d12001b5a023.jpg', 'alam'),
(9, ' Jurang gatuk', 'desa gondang, kec. pace', 'Wisata alam yang satu ini sangat indah, menawarkan sejuta pesona alam yang menakjubkan. Sehingga sayang sekali jika anda tidak mengunjungi obyek wisata yang satu ini.\r\n\r\nLokasinya ada di Desa Gondang. Wilayah Kecamatan Pare, Kota Nganjuk Jawa Timur. Jurang yang identik dengan kedalaman dan seram tidak akan anda jumpai di jurang Gatuk ini. Pasalnya jurang yang satu ini begitu indah dan mempesona.\r\n\r\nSuasana sejuk dan segarnya pegunungan bisa anda nikmati untuk bersantai dan merelaksasi pikiran yang jenuh akan suasana keramaian.\r\n\r\nAkses jalan yang cukup sulit akan anda dapati untuk sampai ke tempat hunting di Nganjuk ini. Menambah sensasi petualangan anda bukan? Cocok untuk destinasi wisata bagi anda pecinta alam dan tantangan tentunya.\r\n\r\nAlamat : Desa Gondang. Wilayah Kecamatan Pare, Kota Nganjuk Jawa Timur. \r\n\r\nFasilitas : Lahan parkir, toilet, warung, wahana air\r\n\r\nJam buka : Setiap hari ( Jam 08.00 â€“ 22.00 )\r\n\r\nTiket : Rp. 5.000/orang', '5d1200f81ce1d.jpg', 'alam'),
(10, 'embung estumulyo', 'Desa Bulurejo, Kec Sawahan', 'Embung yang satu ini menawarkan keindahan alam yang sangat asri. Berada di Desa Bulurejo, Kec Sawahan, Kab Nganjuk  Jawa Timur. Berjarak sekitar 25 Km dari pusat kota Nganjuk.\r\n\r\nTerletak di dataran pegunungan sehingga suhu dan suasananya sangat sejuk dan menyegarkan. Akses jalan menuju tempat ini sudah baik jadi anda akan lebih mudah mengunjunginya dengan kendaraan bermotor.\r\n\r\nPamandangan dan panorama alam di Embung Estumulyo ini akan membius anda dengan pesona keindahan yang menakjubkan.\r\n\r\nJadi akan sangat di sesalkan jika anda tidak mengunjungi wisata yang satu ini jika berlibur di Nganjuk.\r\n\r\nAlamat : Kec. Sawahan, Kabupaten Nganjuk\r\n\r\nFasilitas : Lahan parkir, gazebo\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d1210734f519.jpg', 'alam'),
(11, 'Bukit goa dali', ' desa sumber klampok', 'Keindahan kabupaten Nganjuk memang tidak perlu ditanyakan lagi walaupun terkadang namanya masih kalah dibanding kabupaten lain di Jawa Timur. Saat berkunjung kesana, jangan lupa untuk mampir ke obyek wisata Bukit Goa Dali atau yang disebut dengan Alas Patuk.\r\n\r\nMenurut masyarakat setempat, dulu, Bukit Goa Dali digunakan sebagai tempat ritual pada saat bulan Suro. Di sana anda bisa melihat-lihat pemandangan bukit yang indah, sejauh mata memandang warna hijau akan menghiasi pandangan, dan karena itu juga udara di sana sangat sejuk.\r\n\r\nAlamat : Desa Sumber Klampok, Kabupaten Nganjuk, Jawa Timur\r\n\r\nFasilitas : Lahan parkir\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d121560acdc3.jpg', 'alam'),
(12, 'waduk putukrejo', 'desa Putukrejo', 'Di Nganjuk masih ada lagi waduk yang kerap kali disambangi oleh warga lokal di sana khususnya anak-anak muda dan pasangan yang ingin berwisata gratis namun masih tetap bisa menikmati suasana yang tentram. Obyek wisata Waduk Putukrejo awalnya memang hanya digunakan untuk pengairan sawah warga sekitar saja, namun lama kelamaan menjadi sebuah tempat wisata.\r\n\r\nDi sana anda bisa melihat-lihat panorama waduk yang unik dan menarik sembari berbincang-bincang seru dengan teman. Atau anda ingin menguji kesabaran dengan memancing. Wahana yang ada di Waduk Putukrejo antara lain, tempat belari, kapal-kapal, bebek-bebekan dan masih banyak lagi.\r\n\r\nAlamat : Desa Putukrejo, Kecamatan Loceret, Kabupaten Nganjuk\r\n\r\nFasilitas : Lahan parkir, warung, toilet, wahana air\r\n\r\nJam buka : Setiap hari ( Jam 08.00 â€“ 18.00 )\r\n\r\nTiket : Rp. 3.000/orang', '5d1215d22442c.jpg', 'alam'),
(13, 'goa ndalem', 'desa kebon agung', 'Bagi anda yang suka menyusuri perut bumi, melihat-lihat bagaimana isinya, obyek wisata Goa Ndalem bisa menjadi pilihan yang pas. Walaupun dibilang angker oleh orang-orang, masih banyak juga pecinta alam yang datang kesana untuk berpetualangan melihat isi gua.\r\n\r\nGua yang berada di lereng Gunung Wilis ini juga memiliki pemandangan alam yang indah khas pegunungan dengan suasana yang sejuk. Jadi bagaimana, apakah anda tertarik datang kesana?\r\n\r\nAlamat : Desa Kebon Agung, Sawahan, Kabupaten Nganjuk\r\n\r\nFasilitas : -\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d12164458649.jpg', 'alam'),
(14, 'selo park', 'desa jatikalen', 'Selain Waduk Putukrejo dan Waduk Oro Oro Ombo, di Nganjuk masih ada waduk yang dapat anda jadikan sebagai tempat untuk berwisata yaitu Waduk Perning. Di saat sore hari tempat ini selalu ramai dengan pengunjung yang ingin menikmati keindahan pemandangannya, khusunya view matahari terbenam.\r\n\r\nAnda di sana juga bisa melakukan kegiatan yang lain yang tidak kalah seru, yaitu bermain Perahu bebek, mancing, atau menikmati santapan kuliner yang ada disekitar Waduk Perning. Dermaga yang ada di sana juga sering dijadikan sebagai spot berfoto.\r\n\r\nAlamat : Kecamatan Jatikalen, Kabupaten Nganjuk, Jawa Timur\r\n\r\nFasilitas : Lahan parkir, toilet, warung, wahana air\r\n\r\nJam buka : Setiap hari ( Jam 08.00 â€“ 22.00 )\r\n\r\nTiket : Rp. 2.000/orang\r\n', '5d12170b122b6.jpg', 'alam'),
(15, 'bukit watu lawang', 'desa Ngliman', 'Obyek wisata Bukit Watu Lawang yang ada di Nganjuk ini juga sekarang sedang hits. Anda dengan mudah menuju kesana dengan menggunakan kendaraan pribadi seperti mobil atau motor bersama dengan teman-teman dan atau keluarga besar anda.\r\n\r\nBukit Watu Lawang menawarkan pemandangan alam yang indah dan tidak kalah cantiknya dari obyek wisata lain di Nganjuk. Panorama khas perbukitan akan sangat menyegarkan mata tentunya, hijaunya pepohonan dan semilir angin yang sejuk akan membuat para pengunjung semakin betah berlama-lama.\r\n\r\nAlamat : Desa Ngliman, Kecamatan Sawahan, Kabupaten Nganjuk\r\n\r\nFasilitas : Lahan parkir\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d1218f6c68b7.jpg', 'alam');

-- --------------------------------------------------------

--
-- Table structure for table `belanja`
--

CREATE TABLE `belanja` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `lokasi` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `belanja`
--

INSERT INTO `belanja` (`id`, `nama`, `lokasi`, `isi`, `gambar`, `kategori`) VALUES
(1, 'mall luwes', 'kota nganjuk', 'Rencana pembangunan mall atau kompleks pertokoan modern pertama di Kabupaten Nganjuk, Jawa Timur tampaknya sudah di depan mata. Hal ini setelah muncul pernyataan awal dari Pemerintah Kabupaten (Pemkab) Nganjuk sebagai inisiator, yang menyebut proses pembangunan fisik mall akan dimulai pertengahan tahun ini.\r\n\r\n&quot;Kalau tidak ada perubahan, Insya Allah bulan Juni 2016 sudah mulai (pembangunan mall),&quot; kata Kepala Badan Perencanaan Pembangunan Daerah Kabupaten Nganjuk, Bambang Eko Suharto.\r\n\r\nRencana lokasi pembangunan mall berada di lahan bekas Pasar Pujahito (Pusat jajanan, hiburan dan pertokoan) yang terletak di Jalan Raya Panglima Sudirman, Kelurahan Mangundikaran, Kecamatan Nganjuk. Menurut Bambang, dalam proyek besar ini Pemkab Nganjuk akan menggandeng pihak ketiga atau investor swasta. &quot;Jadi tidak pakai anggaran negara, melainkan dana dari investor,&quot; ujar Bambang.\r\n\r\nSebagai konsekuensi dari rencana pembangunan mall ini, bangunan lama Pujahito yang mangkrak bertahun-tahun dan sempat terjadi sengketa dengan pengelola lama itu akan dibongkar total dan diratakan dengan tanah. Berikutnya, akan disulap menjadi sebuah bangunan pertokoan megah nan modern layaknya kota-kota besar.\r\n\r\nAlamat: Jl. Panglima Sudirman No.260-222, Mangundikaran, Mangun Dikaran, Kec. Nganjuk, Kabupaten Nganjuk, Jawa Timur 64419\r\nJam buka: 08.00 - 21.00 setiap hari \r\nProvinsi: Jawa Timur', '5d12289711f14.jpg', 'belanja');

-- --------------------------------------------------------

--
-- Table structure for table `edukasi`
--

CREATE TABLE `edukasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `lokasi` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edukasi`
--

INSERT INTO `edukasi` (`id`, `nama`, `lokasi`, `isi`, `gambar`, `kategori`) VALUES
(1, 'Taman anjuk ladang', 'kota nganjuk', 'Tempat wisata keluarga di Nganjuk ini ada di dekat Stadion Anjuk Ladang Nganjuk. Dari pusat kota berjarak sekitar 2 km ke selatan. jadi sangat dekat bukan?\r\n\r\nDi tempat piknik di nganjuk ini anda bisa jogging karena ada jogging track. Serta ada camping area yang bisa di gunakan untuk berkemah.\r\n\r\nAda beberapa hewan koleksi di taman ini yang bisa anda lihat seperti burung, rusa, kera dan yang lainnya. Sangat cocok untuk destinasi liburan anda dan keluarga.\r\n\r\nAlamat :  Kabupaten Nganjuk\r\n\r\nFasilitas : Lahan parkir, warung, kolam renang, taman belajar\r\n\r\nJam buka : Setiap hari ( Jam 07.00 â€“ 17.00 )\r\n\r\nTiket : Rp. 7.000/orang', '5d120e47c2da2.jpg', 'edukasi'),
(2, 'Taman pandan wilis', 'desa werungotok', 'Wisata taman ini adalah taman Kota Nganjuk yang tergolong baru  karena di buka tahun 2015 kemarin.\r\n\r\nTaman dengan Desain yang indah bisa anda nikmati di teman Pandan Wilis ini. Bisa juga dijadikan sebagai Tempat nongkrong di Nganjuk.\r\n\r\nDi taman ini anda bisa duduk-duduk atau sekedar berjalan-jalan menikmati suasana taman yang indah. Sangat cocok untuk tempat liburan keluarga di Nganjuk, untuk foto-foto taman ini juga sangat indah. Lokasinya ada di Desa Werungotok kota Nganjuk.\r\n\r\nAlamat : Desa Werungotok, Kec Nganjuk, Kab Nganjuk\r\n\r\nFasilitas : Lahan parkir, arena bermain anak, arena skateboarding\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d120f2ba06fb.jpg', 'edukasi'),
(3, 'Pesona Agrowisata', 'desa rejoso', 'Di tempat ini anda bisa melihat pertanian komoditas utama kota Nganjuk yaitu bawang merah.\r\n\r\nPusat pertanian Bawang merah ini ada di Desa Rejoso, Desa Gondang, Desa Sukomoro, Desa Wilangan. Dengan pusatnya di Desa Rejoso.\r\n\r\nAlamat : Desa Rejoso, kab. Nganjuk, jawa timur\r\n\r\nFasilitas : Lahan parkir,taman bunga\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d120fea1251e.jpg', 'edukasi'),
(4, ' Monumen Dr. Soetomo', 'desa loceret', 'Obyek wisata ini ada di Kecamtan Loceret, Kab Nganjuk. tepatnya ada di Desa Ngepeh.\r\n\r\nDi tempat berdirinya Monumen inilah tempat Dr. Soetomo dulu di lahirkan. Karena ari-ari bayi Dr.Soetomo berada di bawah Patung Monumen Ddr. Soetomo yang di bangun di tempat menarik di Nganjuk tersebut.\r\n\r\nDi tempat ini juga terdapat pendopo jawa dengan arsitektur bangunan jawa kuno yang artistik.\r\n\r\nAlamat : Loceret, Kabupaten Nganjuk, Jawa Timur 64471\r\n\r\nFasilitas : Lahan parkir, gazebo\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d12c3a2b65f1.jpg', 'edukasi'),
(5, 'Monumen Jendral Soedirman ', 'desa bajulan', 'Lokasi Monumen ini berada di Desa Bajulan, Kecamatan Loceret, Kabupaten Nganjuk. Berjarak sekitar 22 Km dari pusat kota Nganjuk menuju arah selatan.\r\n\r\nMonumen ini di bangun untuk menghormati pahlawan Nasional Jendral Soedirman. Di dekat monumen ini juga terdapat museum yang bisa anda kunjungi.\r\n\r\nJaraknya kurang lebih 3 Km dari monumen Jendral Soedirman ini menuju ke arah selatan. Tempat ini setiap tahunnya juga digunakan sebagai tempat acara Napak Tilis.\r\n\r\nAlamat : Desa Bajulan, Kabupaten Nganjuk, Jawa Timur 64474\r\n\r\nFasilitas : Warung, lahan parkir, gazebo\r\n\r\nJam buka : Setiap hari ( Jam 08.00 â€“ 17.00 )\r\n\r\nTiket : -', '5d12c3c3c14fd.jpg', 'edukasi'),
(6, 'Museum Anjuk Ladang', 'kauman, Kec. Nganjuk,', 'Obyek wisata Museum ini ada di pusat kota Nganjuk. Berada di sebelah Terminal kota Nganjuk Jawa Timur.\r\n\r\nKoleksi museum ini sangat beragam, mulai dari peninggalan hindu kuno, Doho, hingga peninggalan dari Majapahit Empire. Di tempat ini juga ada Prasasti Anjuk Ladang, prasasti yang menjadi benih terlahirnaya kota Nganjuk.\r\n\r\nJadi sayang sekali jika anda tidak mengunjungi tempat ini, apalagi bagi anda yang suka akan sejarah. Tempat ini sangat tepat untuk wisata edukasi anda akan sejarah.\r\n\r\nAlamat : Jl. Gatot Subroto, Ringin Anom, Kauman, Kec. Nganjuk, Kabupaten Nganjuk, Jawa Timur 64411\r\n\r\nFasilitas : Lahan parkir, toilet\r\n\r\nJam buka : Senin â€“ Jumat ( Jam 08.00 â€“ 16.00 )\r\n\r\nTiket : -', '5d12c41bebc9c.jpg', 'edukasi');

-- --------------------------------------------------------

--
-- Table structure for table `kuliner`
--

CREATE TABLE `kuliner` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `lokasi` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuliner`
--

INSERT INTO `kuliner` (`id`, `nama`, `lokasi`, `isi`, `gambar`, `kategori`) VALUES
(1, 'nasi becek dan sate kambing', 'kota nganjuk', 'Menu Nasi Becek dan Sate Kambing Nganjuk menyediakan masakan nasi becek dan juga sate kambing, walapun menunya sedikit namun warung makan ini sudah dikenal oleh para penikmat kuliner nasi becek dan sate di nganjuk dan juga masih ada aneka minuman panas dan dingin.\r\n\r\nlamat Nasi Becek dan Sate Kambing berada di Jl. DR. Soetomo, Payaman, Kec. Nganjuk, Kabupaten Nganjuk, Jawa Timur\r\nJam Buka: 09.00 â€“ 22.00\r\nTelp: 0858-2155-3671', '5d122483875e2.jpg', 'kuliner'),
(2, 'bebek Korek', 'kota nganjuk', 'Wisata Kuliner yang populer di Nganjuk selanjutnya adalah Bebek Korek Nganjuk. Bebek Korek Nganjuk ini dapat kamu temukan di Jl. Ahmad Yani No.382, Ploso, Kec. Nganjuk, Kabupaten Nganjuk. Bebek korek merupakan makanan yang diolah dari bebek dan disajikan dengan Nasi. Bebek korek merupakan makanan khas nganjuk yang banyak diburu pecinta kuliner karena rasanya yang enak dan khas. Tidak hanya bebek saja, Warung bebek korek ini juga menyediakan ayam korek dan lele korek.', '5d12250d0c9c2.jpg', 'kuliner'),
(3, 'mie petir', 'kota nganjuk', 'Mie petir merupakan surganya yang suka pedas. Mie petir ini Pedasnya luar biasa. Mie petir ini ada level â€“ levelnya. Mie Petir ini memiliki level paling bawah  0 cabe. Lalu level TK, SD, SMP, SMA, Mahasiswa, Sarjana dan terakhir level profesor paling pedas. Mie petir ini terletak di Jl. Anjuk Ladang, Rt 4 Rw 4, Sukorejo, Loceret, Nganjuk. Untuk harga 1 porsi nya mie ini memasang harga Rp.6000 per porsi.', '5d12254c32c94.jpg', 'kuliner'),
(4, 'nasi pecek bledek', 'kota nganjuk', 'Yang pertama ada Pecel Bledek yang bisa dijumpai di sebelah timur Gedung Juang, Nganjuk. Pecel yang hampir tiap hari penuh dengan pembeli ini buka dari jam 6.00 hingga 9.00 pagi. Harganya pun terjangkau untuk 1,5 porsi pecel, harganya hanya Rp4.000-an. Sementara untuk lauk-pauknya dibanderol dengan harga Rp500 per biji. Soal rasa, dijamin bikin ketagihan, apalagi dengan kuahnya super sedap. Belum ngiler kan?\r\n\r\nAlamat: Jalan Gubernur Suryo 3, Kauman, Kecamatan Nganjuk, Kauman, Kecamatan Nganjuk, Kauman, Kec. Nganjuk, Kabupaten Nganjuk, Jawa Timur 64418\r\n\r\nJam buka: setiap hari pukul 06.00â€“10.00\r\n\r\nTelepon: 0822-4488-6073', '5d12265f0fce5.jpg', 'alam'),
(5, 'Pecel mbah ngantuk', 'kota nganjuk', 'Jika warung pecel sebelumnya buka di pagi hari, maka lain halnya dengan warung pecel satu ini. Iya, warung pecel Mbah Ngantuk dibuka justru ketika toko lain pada tutup yaitu sekitar jam 9.00 malam. Kedai pecel Mbah Ngantuk terletak di deretan warung yang berada di sepanjang Jalan Ahmad Yani. Meski banyak yang jualan, pecel Mbah Ngantuk-lah yang paling bikin orang kuat hati untuk mengantri. Lokasi sendiri berada di samping Alfamart, di seberang BCA. Cah Nganjuk pasti tahu!\r\n\r\nLokasi : Jalan Ahmad Yani\r\n\r\nJam Buka : 21.00 â€“ 02.00', '5d1226bd336dc.jpg', 'kuliner'),
(6, 'Pecel pincuk yu jimur', 'desa Tritipan,', 'Jika pecel di deretan warung di atas disajikan dengan pincuk daun pisang atau di piring, maka beda dengan yang ada di kedai ini. Di Warung Pecel pincuk Yu Jimur, pecelnya dipincuk dengan daun jati. Makanya, sajian makanan dengan bumbu pecel ini punya aroma lebih wangi dari pecel kebanyakan. Tak hanya itu, kedai ini juga punya konsep â€œmakan di rumah sendiriâ€ karena para pengunjung makan di ruang tamu, dan pecel dimasak di dapur rumah. Para pembeli juga bisa mengambil sendiri piring atau gelas di rak piring. Wah, berminat?\r\n\r\nNama : Warung Pecel Pincuk Mbok Yu\r\n\r\nLokasi : Desa Tritipan, Kecamatan Brebek\r\n\r\nJam Buka : 18.00 â€“ 02.00', '5d12271dca79e.jpg', 'kuliner');

-- --------------------------------------------------------

--
-- Table structure for table `religi`
--

CREATE TABLE `religi` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `lokasi` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `religi`
--

INSERT INTO `religi` (`id`, `nama`, `lokasi`, `isi`, `gambar`, `kategori`) VALUES
(1, 'Pura kerta bhuwana', 'desa cangkrik', 'Pura yang satu ini adalah pura bersejarah dan legendaris, pasalnya pura ini adalah pura yang paling tua di Pulau Jawa.\r\n\r\nTerletak di belakang Lereng Gunung Wilis. Berlokasi di Desa Bajulan, desa ini masih dalam kawasan Kecamatan Loceret, Nganjuk Jawa Timur Tepatnya di Dusun Cukrik.\r\n\r\nBagi anda yang suka foto-foto, tepat ini sangat cocok untuk berfoto karena bangunan tua dengan desain artistik pura yang indah.\r\n\r\nLokasi yang sunyi dan udara yang segar bisa anda manfaatkan untuk berelaksasi melepas kejenuhan suasana perkotaan.\r\n\r\nAlamat : Ds. Cungkrik, Kabupaten Nganjuk, Jawa Timur\r\n\r\nFasilitas : Lahan parkir, toilet\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d120c056267f.jpg', 'religi'),
(2, 'Masjid Al-Mubarok', 'Berbek Nganjuk', 'Masjid Al-Mubarok adalah saah satu masjid tertua dan bersejarah di kabupaten Nganjuk, Jawa Timur. Masjid ini juga biasa disebut dengan Masjid Yoni Al-Mubarok karena adanya Yoni Kuno di halaman masjid ini yang kemudian diubah suai menjadi sebuah jam matahari sebagai penunjuk waktu sholat. Selain itu masjid ini juga seringkali disebut sebagai masjid kanjeng Jimat merujuk kepada nama pembangunnya.\r\n\r\nMasjid bersejarah ini terletak di Desa Ngrawen kecamatan Berbek, Â±8km arah selatan kota Nganjuk. Kecamatan Berbek sendiri merupakan ibukota kabupaten Nganjuk, di kecamatan ini pula sejarah kabupaten Nganjuk bermula sebagai sebuah Kadipaten Berbek dibawah pemerintahan seorang adipati.\r\n\r\nMasjid Al-Mubarok pertama kali didirikan tahun 1745 oleh Kanjeng Raden Tumenggung (KRT) Sosro Koesoemo atau Kanjeng Jimat, Adipati Berbek pertama yang ditunjuk oleh Kraton Yogyakarta. Beliau berkuasa di daerah ini pada saat hampir seluruh penduduk nya masih memeluk agama Hindu dari era kekuasaan majapahit di kaki gunung Wilis.\r\n\r\nBukan mudah bagi beliau untuk berdakwah di daerah kekuasaannya tersebut, Penduduk lereng gunung Wilis yang sangat mempercayai agama peninggalan raja-raja terdahulu masih asing dengan Islam. Mereka lebih percaya kepada ajaran Hindu. Namun upaya sang adipati pada ahirnya membuahkan hasil hampir seluruh rakyat akhirnya memeluk agama baru itu.\r\n\r\nPada tahun 1745, Kanjeng Jimat mewakafkan sebidang tanah pekarangan miliknya yang dulu menjadi tempat peribadatan para pendahulunya di Desa Kacangan untuk didirikan sebuah Masjid yang kemudian diberi nama Masjid Al-Mubarok yang merupakan masjid pertama yang dibangun di wilayah kadipaten Berbek (kini menjadi Kabupaten Nganjuk).', '5d1223e1d9f18.jpg', 'religi'),
(3, 'Klenteng Hok Yoe Kiong', 'desa sukomoro', 'Keberadaan klenteng Hok Yoe Kiong Sukomoro ini tidak lepas dari peran pendirinya yang bernama Soen Boen Lee dari Kota Nganjuk. Sebagai seorang Tionghoa, ia membuat sebuah tempat pemujaan bagi Kongco Tik Tjoen Ong di rumahnya. Patung Kongco Tik Tjoen Ong dibawa ke Nganjuk dari Negeri Tiongkok sekitar tahun 1930-an. Seiring perjalanan waktu, rumahnya menjadi ramai karena begitu banyak warga Tionghoa yang ikut bersembahyang sehingga lama-lama tempat untuk sembahyang tersebut sudah tidak mencukupi lagi.\r\n\r\nSoen Boen Lee kemudian membangun sebuah klenteng di atas tanah miliknya yang berada di daerah Sukomoro, sekitar 5 kilometer timur Kota Nganjuk arah Kertosono, pada tahun 1953. Setelah selesai, klenteng tersebut mulai digunakan untuk melakukan sembahyang tetapi klenteng tersebut belum diresmikan. Baru pada tahun 1956, klenteng tersebut diresmikan, dan diberi nama Hok Yoe Kiong.\r\n\r\nKlenteng ini terletak di Jalan Raya Sukomoro No. 2, Desa Sukomoro, Kecamatan Sukomoro, Kabupaten Nganjuk, Provinsi Jawa Timur.', '5d1227bc25d5b.jpg', 'religi'),
(4, 'Syeikh Sulukhi', 'kec. wilangan', 'Makam syeikh Sulukhi merupakan tempat wisata rohani yang banyak dikunjungi para penziarah. Letaknya berada kira-kira 16km ke barat  dari alun-alun kota Nganjuk. Makam ini selalu ramai dikunjungi para penziarah apalagi setiap kamis malam jumâ€™at.\r\n\r\nSyeikh merupakan sebutan bagi mereka yang berperan penting dalam penyebaran agama Islam. Demikian juga dengan Syeikh Sulukhi. Beliau dianggap sebagai orang yang berperan penting dalam penyebaran agama Allah. Ada juga masyarakat yang menyebut beliau sebagai waliyullah. Menut informasi, Syeikh Sulukhi ini berasal dari kerjaan Demak yang diutus untuk menyebarkan agama Allah. Makam syeikh Sulukhi berada dipinggir sungai dimana konon katanya sungai tersebut digunakan untuk menghanyutkan padi yang ditaruh didalam bambu menuju ke kerajaan Demak. Ada yang unik dengan makam Syeikh Sulukhi dimana, makamnya terletak dibawah akar pohon besar, kemudian hanya ada makam Syeikh Sulukhi disitu tanpa ada makam yang lainnya.\r\n\r\nBerbeda dengan waliyullah yang lainnya dimana terdapat banyak makam disamping makam para wali Allah seperti makam walisongo. Makamnya berukuran seperti makam pada umumnya namun bedanya pada makam beliau, nisannya dibungkus dengan kain kafan.', '5d12c663e20ee.jpg', 'religi');

-- --------------------------------------------------------

--
-- Table structure for table `sejarah`
--

CREATE TABLE `sejarah` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `lokasi` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sejarah`
--

INSERT INTO `sejarah` (`id`, `nama`, `lokasi`, `isi`, `gambar`, `kategori`) VALUES
(6, 'Candi ngetos', 'desa ngetos', 'Obyek wisata bersejarah di Nganjuk yang satu ini adalah destinasi wisata yang tepat. Tentunya Bagi anda yang suka akan sejarah dan budaya.\r\n\r\nLokasi candi Ngetos ini ada di  Desa Ngetos, di wilayah Kecamatan Ngetos, Kota Nganjuk Jawa Timur.\r\n\r\nCandi peninggalan Majapahit Empire ini di bangun pada abad 15 di gunakan sebagai pemakaman Raja Hayam Wuruk.\r\n\r\nLokasi obyek wisata edukasi di Nganjuk ini berada di samping Jalan Raya. Sehingga akan mudah untuk anda jangkau dan anda kunjungi.\r\n\r\nBangunan candi ini sudah mengalami perubahan karena banyak batu candi yang rusak dan hilang dimakan usia.\r\n\r\nTapi keindahannya masih legendaris dan penuh akan bersejarah. Jadi jangan sampai terlewatkan ya gaes.\r\n\r\nAlamat : Jalan Ngertos - Berbek, Kecamatan Ngetos, Kabupaten Nganjuk, Jawa Timur\r\n\r\nFasilitas : Lahan parkir, warung, toilet\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d119ded56255.jpg', 'sejarah'),
(7, 'Candi Lor', 'desa Candirejo', 'Wisata candi yang satu ini berlokasi di Kecamatan Loceret, Kabupaten Nganjuk Jawa Timur, tepatnya di Desa Candirejo.\r\n\r\nCandi ini merupakan candi tua yang bersejarah tinggi karena di bangun pada tahun 937 Masehi. Uhhh tua banget ya.\r\n\r\nCandi ini digunakan Kota Nganjuk sebagai simbol berdirinya kota ini di masa lalu. Arsitektur candi yang berwarna merah di buat dari batu merah yang eksotis.\r\n\r\nBangunan candi ini yang sudah tua membuat bangunan menjadi lapuk di makan usia, akan tetapi pemandangannya masih sangat indah. Sangat akan disayangkan jika anda tidak mengabadikannya untuk berfoto ria.\r\n\r\nAlamat : Desa Candirejo, Kabupaten Nganjuk, Provinsi Jawa Timur\r\n\r\nFasilitas : Lahan parkir\r\n\r\nJam buka : 24 jam\r\n\r\nTiket :', '5d119f09ee8ec.jpg', 'sejarah'),
(8, ' Monumen Dr. Soetomo', 'desa loceret', 'Obyek wisata ini ada di Kecamtan Loceret, Kab Nganjuk. tepatnya ada di Desa Ngepeh.\r\n\r\nDi tempat berdirinya Monumen inilah tempat Dr. Soetomo dulu di lahirkan. Karena ari-ari bayi Dr.Soetomo berada di bawah Patung Monumen Ddr. Soetomo yang di bangun di tempat menarik di Nganjuk tersebut.\r\n\r\nDi tempat ini juga terdapat pendopo jawa dengan arsitektur bangunan jawa kuno yang artistik.\r\n\r\nAlamat : Loceret, Kabupaten Nganjuk, Jawa Timur 64471\r\n\r\nFasilitas : Lahan parkir, gazebo\r\n\r\nJam buka : 24 jam\r\n\r\nTiket : -', '5d12022fe4cb0.jpg', 'sejarah'),
(9, 'Monumen Jendral Soedirman ', 'desa bajulan', 'Lokasi Monumen ini berada di Desa Bajulan, Kecamatan Loceret, Kabupaten Nganjuk. Berjarak sekitar 22 Km dari pusat kota Nganjuk menuju arah selatan.\r\n\r\nMonumen ini di bangun untuk menghormati pahlawan Nasional Jendral Soedirman. Di dekat monumen ini juga terdapat museum yang bisa anda kunjungi.\r\n\r\nJaraknya kurang lebih 3 Km dari monumen Jendral Soedirman ini menuju ke arah selatan. Tempat ini setiap tahunnya juga digunakan sebagai tempat acara Napak Tilis.\r\n\r\nAlamat : Desa Bajulan, Kabupaten Nganjuk, Jawa Timur 64474\r\n\r\nFasilitas : Warung, lahan parkir, gazebo\r\n\r\nJam buka : Setiap hari ( Jam 08.00 â€“ 17.00 )\r\n\r\nTiket : -', '5d1203a5a5a39.jpg', 'sejarah'),
(10, 'Museum Anjuk Ladang', 'kauman, Kec. Nganjuk,', 'Obyek wisata Museum ini ada di pusat kota Nganjuk. Berada di sebelah Terminal kota Nganjuk Jawa Timur.\r\n\r\nKoleksi museum ini sangat beragam, mulai dari peninggalan hindu kuno, Doho, hingga peninggalan dari Majapahit Empire. Di tempat ini juga ada Prasasti Anjuk Ladang, prasasti yang menjadi benih terlahirnaya kota Nganjuk.\r\n\r\nJadi sayang sekali jika anda tidak mengunjungi tempat ini, apalagi bagi anda yang suka akan sejarah. Tempat ini sangat tepat untuk wisata edukasi anda akan sejarah.\r\n\r\nAlamat : Jl. Gatot Subroto, Ringin Anom, Kauman, Kec. Nganjuk, Kabupaten Nganjuk, Jawa Timur 64411\r\n\r\nFasilitas : Lahan parkir, toilet\r\n\r\nJam buka : Senin â€“ Jumat ( Jam 08.00 â€“ 16.00 )\r\n\r\nTiket : -', '5d120ca1eadc3.jpg', 'sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `image` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `image`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'setyo awan prakoso', 'setyoawan8@gmail.com', '$2y$10$5zV.XuMVtSC1Jm8JrG4N6efAGpbOcQ8pBTn8bOUcBf1rXJfvg/9Ie', 'default.jpg', 1, 1, 1559576384);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alam`
--
ALTER TABLE `alam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `belanja`
--
ALTER TABLE `belanja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edukasi`
--
ALTER TABLE `edukasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuliner`
--
ALTER TABLE `kuliner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religi`
--
ALTER TABLE `religi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alam`
--
ALTER TABLE `alam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `belanja`
--
ALTER TABLE `belanja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `edukasi`
--
ALTER TABLE `edukasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kuliner`
--
ALTER TABLE `kuliner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `religi`
--
ALTER TABLE `religi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
