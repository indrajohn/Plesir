-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Des 2016 pada 19.02
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbplesir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin_web`
--

CREATE TABLE IF NOT EXISTS `tbl_admin_web` (
`id` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin_web`
--

INSERT INTO `tbl_admin_web` (`id`, `nama_user`, `username`, `password`) VALUES
(1, 'indrajohn', 'admin', 'admin'),
(3, 'asdad', 'as', 'sdsd'),
(14, 'b', 'b', 'b'),
(19, 'ada', 'asda', 'ada'),
(20, 'bule', 'bule', 'bule'),
(22, 'bule', 'bule1', 'bule'),
(24, 'a', 'x', 'x');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE IF NOT EXISTS `tbl_comment` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `comment` text NOT NULL,
  `tgl_masuk` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `id_user`, `id_wisata`, `comment`, `tgl_masuk`) VALUES
(41, 4, 13, 'DD', '2016-12-07 08:42:56'),
(40, 4, 36, '????', '2016-12-07 04:41:41'),
(39, 4, 36, 'Lo', '2016-12-07 04:41:26'),
(38, 4, 36, 'A', '2016-12-07 04:41:16'),
(37, 4, 36, 'A', '2016-12-07 04:41:16'),
(36, 4, 36, 'Ks', '2016-12-07 04:41:02'),
(35, 4, 36, 'Bagus', '2016-12-07 04:40:38'),
(34, 4, 36, 'Dd', '2016-12-07 04:40:27'),
(33, 4, 13, 'A', '2016-12-07 04:31:13'),
(32, 4, 13, 'DZxx', '2016-12-07 04:31:01'),
(31, 4, 22, 'T', '2016-12-06 21:21:27'),
(30, 4, 22, 'G', '2016-12-06 21:21:19'),
(29, 4, 13, 'X', '2016-12-06 20:58:24'),
(28, 4, 13, 'R', '2016-12-06 20:58:15'),
(27, 4, 13, 'R', '2016-12-06 20:57:57'),
(26, 4, 13, 'R', '2016-12-06 20:57:55'),
(25, 4, 13, 'D', '2016-12-06 20:57:48'),
(24, 2, 13, 'sss', '2016-12-07 04:31:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_firebase_info`
--

CREATE TABLE IF NOT EXISTS `tbl_firebase_info` (
`id` int(11) NOT NULL,
  `firebase_token` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tbl_firebase_info`
--

INSERT INTO `tbl_firebase_info` (`id`, `firebase_token`) VALUES
(2, 'cwR0vid1KMM:APA91bGURw7Zxj-irSKUnnPDvqvYAioOtLBFLCMZSMVdIvtJXDwm4h6pY8nwQbxS-jkdoNrUyuKtDBPoJ47zNH9Sp2L_PILKZvPK19nTyOOWHJ4Ewv4LjfOCJ6Dg2Qug1DjVUYEEBMNg'),
(3, 'cc14VmF6fHw:APA91bFkzWCplElkzOPzbMGAXpisuhHHn36t3S70BHhSLYqUzu48TUer28YgN4av-miWoKU3NK-4MlyLpzYszHNW-y17Eai1iihVP3D5ceT4Zvz2Rr6N3X41gDyAzj6ADvaGIJWx3YSD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_foto`
--

CREATE TABLE IF NOT EXISTS `tbl_foto` (
`id` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_foto`
--

INSERT INTO `tbl_foto` (`id`, `id_wisata`, `foto`) VALUES
(1, 1, 'keraton01.jpg'),
(2, 2, 'jurug01.jpg'),
(3, 3, 'museum_radya01.jpg'),
(4, 4, 'Ngarsopuro01.jpg'),
(5, 5, 'danar_hadi01.jpg'),
(6, 6, 'pasar_klewer01.jpg'),
(7, 7, 'solo_grand_mall01.jpg'),
(8, 8, 'PGS01.jpg'),
(9, 9, 'galabo01.jpg'),
(10, 10, 'sriwedari01.jpg'),
(11, 11, 'kampung_batik01.jpg'),
(12, 12, 'mangkunegaran01.jpg'),
(13, 13, 'tawangmangu01.jpg'),
(14, 14, 'cokro01.jpg'),
(15, 15, 'srabi_notosuman01.jpg'),
(16, 16, 'pia_balong01.jpg'),
(17, 17, 'sosis_gondang01.jpg'),
(18, 18, 'abon01.jpg'),
(19, 19, 'roti_merani01.jpg'),
(20, 20, 'bagoes01.jpg'),
(21, 21, 'gereja_margoyudan01.jpg'),
(22, 22, 'Vihara_Dhamma_Sundara01.jpg'),
(23, 23, 'Klenteng-Tri-Dharma-Avalokitesvara01.jpg'),
(24, 24, 'masjid_laweyan_01.jpg'),
(25, 25, 'sekatenan01.jpg'),
(26, 26, 'masjid_agung_solo01.jpg'),
(27, 27, 'Masjid_Pura_Mangkunegaran01.jpg'),
(28, 28, 'purbayan01.jpg'),
(29, 30, 'haul_habib_ali01.jpg'),
(30, 31, 'grebeg_sudiro01.jpg'),
(31, 32, 'Taman-Cerdas-Technopark01.jpg'),
(34, 9, 'tes.jpg'),
(35, 9, 'tes.jpg'),
(36, 36, '75178-air_terjun_parang_ijo01.jpg'),
(37, 36, '49c3f-air_terjun_parang_ijo02.jpg'),
(38, 33, '4ffa8-pandawa01.jpg'),
(39, 33, 'd639b-pandawa02.jpg'),
(40, 34, '5a258-tugu_lilin_surakarta.jpg'),
(41, 35, '55352-air_terjun_jumog_01.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenis_wisata`
--

CREATE TABLE IF NOT EXISTS `tbl_jenis_wisata` (
`id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jenis_wisata`
--

INSERT INTO `tbl_jenis_wisata` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Wisata Alam', 'Wisata alam merupakan tempat wisata yang sering dikunjungi oleh para wisatawan. Wisata alam khususnya bagi orang Indonesia sangat digemari untuk dikunjungi dengan tujuan menghilangkan stress dan lain sebagainya. Contoh wisata alam adalah Pantai, Gunung, H'),
(2, 'Wisata Religi', 'Indonesia merupakan salah satu negara dengan keanekaragaman agama. Semua agama ada di Indonesia, hal ini lah yang menyebabkan tempat-tempat religius bisa dijadikan wisata bagi para wisatawan. Tujuan dari wisata ini bukan semata-mata hanya bersenang-senang'),
(3, 'Wisata Kuliner', 'Untuk yang satu ini, semua pasti butuh ? . Wisata kuliner salah satu wisata yang paling di cari oleh para wisatawan. Apalagi di Indonesia menyuguhkan variasi masakan yang sangat banyak dan tentunya enak-enak.'),
(4, 'Wisata Edukasi', 'Wisata edukasi biasanya disebut dengan study tour atau KKL.Wisata ini biasanya untuk para siswa atau mahasiswa. Contoh wisata ini adalah kunjungan SMA ke Perguruan Tinggi, kunjungan mahasiswa ke pabrik atau perusahaan dll.'),
(5, 'Wisata Budaya', 'Budaya Indonesia yang beragam sekarang menjadi daya tarik wisata tersendiri. Selain wisatawan dalam negeri, wisatawan Mancanegara pun sangat tertarik untuk melihat wisata budaya yang ada di Indonesia.'),
(6, 'Wisata Belanja', 'Wisata belanja kegiatan perjalanan yang dilakukan oleh seseorang atau kelompok dengan mengunjungi tempat tertentu untuk membeli barang maupun jasa yang ada di lokasi tersebut.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_like`
--

CREATE TABLE IF NOT EXISTS `tbl_like` (
`id` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `is_liked` enum('0','1') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_like`
--

INSERT INTO `tbl_like` (`id`, `id_wisata`, `id_user`, `is_liked`) VALUES
(1, 13, 2, '1'),
(2, 21, 4, '1'),
(3, 22, 4, '1'),
(4, 13, 4, '1'),
(5, 19, 4, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `pic_user` varchar(255) NOT NULL,
  `facebook_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama_user`, `pic_user`, `facebook_id`, `email`) VALUES
(2, 'indra', 'indra_john.jpg', '1111', 'asdasda'),
(4, 'Indra John', 'Indra John.jpg', '10201599003374491', 'indrajohn2@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wisata`
--

CREATE TABLE IF NOT EXISTS `tbl_wisata` (
`id` int(11) NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `deskripsi_wisata` text NOT NULL,
  `id_jenis_wisata` int(11) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_wisata`
--

INSERT INTO `tbl_wisata` (`id`, `nama_wisata`, `deskripsi_wisata`, `id_jenis_wisata`, `latitude`, `longitude`) VALUES
(1, 'Keraton Kasunanan Surakarta Hadiningrat', 'Berkunjung ke Kota solo rasanya kurang lengkap apabila belum mengunjungi Keraton Surakarta. Keraton ini bernama engkap Keraton Surakarta Hadiningrat. Dahulu keraton ini adalah bagian dari kerajaan Mataram, namun karena permasalahan politis dengan Belanda akhirnya Kerajaan Mataram ini dipecah menjadi 2 yaitu Kasunanan Surakarta yang dipimpin oleh Pakubuwono III dan Kasultanan Yogyakarta yang dipimpin Oleh Pangeran Mangkubumi. Pangeran Mangkubumi ini kemudian bergelar Sultan Hamengku Buwono I sekaligus titik awal Kerajaan Yogyakarta yang masih berdiri sampai saat ini. Sampai saat ini keraton Surakarta masih berdiri dengan tegak. Didalamnya banyak tersimpan berbagai peninggalan Raja-raja sebelumnya. Pengunjung dapat melihat berbagai koleksi di dalam Istana ini. Selain itu di Keraton Surakarta juga sering diselenggarakan upacara adat pada hari-hari tertentu, seperti Sekaten pada malam Maulid nabi dan arak kebo Kyai Slamet saat malam 1 Suro.', 5, '-7.577924', '110.827031'),
(2, 'Kebun Binatang Taru Jurug', 'Tempat wisata terindah di Solo berikut ini adalah berupa kebun binatang. Kebun Binatang Jurug atau nama resminya Taman Satwa Taru Jurug merupakan salah satu tempat wisata kebanggaan warga Solo. Tempat wisata Kebun Binatang Jurug ini berlokasi di tepi Bengawan Solo atau perbatasan dengan Kabupaten Karanganyar. Setiap hari Minggu dan hari libur nasional tempat ini selalu ramai dikunjungi oleh para wisatawan. \n', 4, '-7.563801', '110.8593232'),
(3, 'Museum Radya Pustaka', 'Museum Radya Pustaka terdapat di dekat Kompleks Taman Sriwedari Solo. Museum ini merupakan salah satu museum tertua di Indonesia. Di dalam museum ini banyak menyimpan benda-benda yang berhubungan dengan Kota Solo dan peninggalan Keraton Mataram. Salah satu koleksi yang cukup terkenal adalah koleksi berupa porselen yang merupakan hadiah dari Napoleon Bonaparte kepada Sri Susuhunan Paku Buwono IV. Namun sayangnya museum ini pernah mengalami cerita buruk yaitu berupa pencurian benda-benda koleksi yang dilakukan oleh oknum keluarga kerajaan Surakarta. Namun kasus ini telah diselesaikan oleh kepolisian. Hal ini menunjukkan betapa selama ini kita kurang menghargai sejarah negeri sendiri. Seharusnya kita selalu menjaga barang-barang peninggalan sejarah agar dapat selalu mengenang sejarah bangsa sendiri.', 4, '-7.56851', '110.814457'),
(4, 'Ngarsopura Night Market Solo', 'Ngarsopuro merupakan bagian dari jalanan di Kota Solo yang disulap sedemikian rupa menjadi kawasan yang sangat nyaman untuk kumpul-kumpul bagi warga Solo. \r\n\r\nKawasan Ngarsopuro ini tepatnya berada di Jalan Diponegoro atau bagian selatan Pura Mangkunegaran.\r\n\r\nPada hari biasa setiap malam tempat ini ramai dikunjungi kawula muda untu sekedar nngkrong Namun setiap hari Sabtu dan Minggu pukul 19.00 - 21.00 WIB tempat ini dijadikan sebagai pusat keramaian berupa adanya pedagang yang menjajakan barang dagangannya untuk pengunjung. \r\n\r\nBarang yang dijajakan adalah berupa kerajinan, batik, souvenir, kuliner khas Solo dan barang oleh-oleh lainnya. ', 6, '-7.5687025', '110.8201345'),
(5, 'Museum Batik Danar Hadi Solo', 'Jika anda dari luar kota dan sedang berkunjung untuk wisata ke Solo nampaknya kurang lengkap apabila belum membeli batik Danar Hadi sebagai oleh-oleh. Danar Hadi merupakan merek batik ternama dari Solo. Selain outlet penjualan, Danar Hadi juga membuat sebuah museum tentang batik yaitu Museum Batik Danar Hadi. Di Museum ini pengunjung dapat melihat koleksi motif berbagai macam batik dari seluruh nusantara.', 5, '-7.568671', '110.8157618'),
(6, 'Pasar Klewer Solo', 'Salah satu wisata belanja yang tak mungkin untuk dilewatkan adalah belanja di Pasar Klewer Solo. Pasar Klewer merupakan pasar yang menyediakan berbagai macam kain, batik dan pakaian terbesar di Solo. Disini anda dapat membeli pakaian dengan harga murah, karena di pasar Klewer tempatnya grosir pakaian. Namun perlu diingat juga bahwa anda juga harus pandai-pandai menawar harga. Kalau tidak pintar menawar bisa-bisa malah harga pakaiannya menjadi mahal.\r\n', 6, '-7.5844868', '110.8273279'),
(7, 'Solo Grand Mall', 'Solo Grand Mall atau sering disingkat SGM merupakan Mall terbesar di Kota Solo. Hampir tiap hari mall ini selalu ramai dikunjungi pengunjung, baik untuk belanja kebutuhan sehari-hari, beli pakaian, perhiasana, makan atau bahkan hanya sekedar nongkrong di foodcourt. Di SGM juga terdapat bioskop yang menayangkan film-film terbaru.', 6, '-7.5666111', '110.8052063'),
(8, 'Pusat Grosir Solo', 'Pusat perbelanjaan di Solo yang satu ini sebenarnya hampir mirip dengan Pasar Klewer. Namun karena pembangunannya lebih baru maka suasana didalamnya lebih nyaman dibanding dengan Psar Klewer. Di Pusat Grosir Solo atau PGS juga banyak menyediakan berbagai macam pakaian dari mulai batik, baju, sepatu, tas dll. Harganya juga bisa dikatakan bersaing. Lokasi PGS ini satu kawasan dengan Keraton Surakarta atau tepatnya di sebelah timur Alun-alun Utara Keraton Surakarta.\r\n', 6, '-7.5731795', '110.8278176'),
(9, 'Galabo Solo', 'Tempat Wisata di Solo berikut ini adalah berupa wisata kuliner yang dibuka pada malam hari. Galabo merupakan singkatan dari Gladak Langen Bogan yaitu semacam pusat kuliner yang berada di Solo dan buka setiap malam hari. Di lokasi ini ada berbagai macam outlet makanan dan jajanan yang siap menyediakan makanan kesukaan anda. Outlet yang berjualan ini pada dasarnya merupakan outlet yang ada di Kota Solo, namun diberi ruang khusus untuk membuka warung di tempat ini sehingga pengunjung dapat menikmati berbagai macam makanan dalam satu lokasi. makanan yang dijajakan misalnya bistik, angkringan, sate, bandeng  bakar, soto, timlo, gudek dll. Oh ya lokasi Galabo ini sesua namanya berada di kawasan Gladak, atau tepatnya di depan PGS.', 3, '-7.5727858', '110.8282417'),
(10, 'Taman Hiburan Rakyat (THR) Sriwedari Solo', 'Taman Hiburan Rakyat Sriwedari merupakan sebuah taman yang bersejarah bagi Kota Solo. Di temat ini sejak dulu dijadikan sebagai tempat pertunjukan kesenian tradisional khas Jawa Tengah seperti wayang orang, kethoprak dll. Namun saat ini Taman Sriwedari sudah disulap menjadi tempat yang lebih modern yaitu dengan penambahan wahana permainan untuk anak-anak bahkan ada juga mini water park. Selain wahana permainan juga ada stand penjual makanan serta panggung untuk pertunjukan musik lokal seperti dangdut, lagu Koes Plus dll.', 4, '-7.568235', '110.8091726'),
(11, 'Kampung Batik Laweyan Solo', 'Solo merupakan Kota yang terkenal akan batiknya sehingga tak heran apabila di Solo ada kampung batik. Sebenarnya ada 2 kampung batik yang terkenal di Solo yaitu Kampung Batik Laweyan dan Kampung Batik Kauman. Di dua tempat ini sama-sama terdapat banyak pengrajin batik tradisional. Namun kabarnya kedua tempat ini memiliki corak yang berbeda dalam pembuatan batik. Di Kampung Batik kauman, motif atau corak batik lebih cenderung gelap, sedangkan di Laweyan cenderung gelap. Namun pastinya kedua tempat ini menyediakan oleh-oleh khas Solo berupa batik. ', 5, '-7.569695', '110.7930203'),
(12, 'Istana/ Pura Mangkunegaran', 'Setelah Kerajaan Mataram dipecah oleh Belanda / VOC menjadi Kesultanan Yogyakarta dan Kasunanan Surakarta, ternyata krisis yang dihadapi Kerajaan Mataram ini belum berakhir. Dua tahun setelah Perjanjian Giyanti, Kasunanan Surakarta dipecah lagi menjadi 2 yaitu Kasunanan Surakarta dan Mangkunegaran. Pemecahan ini melalui perjanjian Salatiga pada tahun 1755. Sebagai Raja Mangkunegaran adalah Raden Mas Said yang kemudian bergelar Mangkunegoro I. Saat ini Pura Mangkunegaran dapat dikunjungi oleh para wisatawan yang ingin melihat koleksi peninggalan jaman dahulu, khususnya berupa benda sejarah yang berhubungan dengan Raja-raja Mangkunegaran. Selain itu Pura Mangkunegaran saat ini dijadikan tempat upacara adat dan tari Beksan.', 5, '-7.5840462', '110.785463'),
(13, 'Grojogan Sewu Tawangmangu', '<p>\r\n	Grojogan Sewu Tawangmangu merupakan tempat wisata di Solo kategori wisata alam yang paling terkenal. Berada di sisi barat Gunung Lawu, Grojogan Sewu Tawangmangu adalah sebuah air terjun yang sangat indah dan menyimpan jutaan misteri. Lokasi air terjun Grojogan Sewu Tawangmangu tidaklah jauh dari kota Solo, hanya sekitar 37 KM di sebelah timur kota Solo, tepatnya di Kabupaten Karanganyar. Harga tiket masuk Grojogan Sewu Tawangmangu adalah 18,000 Rupiah per orang.</p>\r\n', 1, '-7.6603327', '111.129254'),
(14, 'Toko Cokro Solo', 'Di Toko Cokro Solo ini, traveler bisa mencari banyak sekali pilihan oleh-oleh yang akan dibawa pulang, seperti kue kering, abon solo, serundeng, dan masih banyak lagi. Nilai plus dari Toko Cokro Solo ini adalah pelayanannya yang cepat sehingga tidak membuat para pengunjungnya menunggu lama.', 6, '-7.599194', '110.8033579'),
(15, 'Serabi Solo Notosuman', 'Nggak perlu ditanya lagi bentuk oleh-oleh satu ini, karena memang serabi Solo merupakan panganan wajib yang mesti dibawa pulang sebagai oleh-oleh. Banyak wisatawan yang memuji bahwa serabi Solo adalah serabi yang paling nikmat dengan varian rasa yang disuguhkan. Bagi traveler yang ingin membeli serabi sebagai oleh-oleh, maka Serabi Solo Notosumanlah tempatnya, pusat oleh-oleh ini berlokasi di Jalan Raya Palur 47A, Solo Timur, Karanganyar, Solo.', 3, '-7.5778121', '110.8174094'),
(16, 'Pia Balong Sumber Rejeki', 'Bagi traveler yang ingin membeli bakpia dengan kualiltas yang bagus, maka pilihannya akan jatuh pada toko Pia Balong Sumber Rejeki yang beralamat di Jalan Balong no. 66, Balong, Solo. Di Pia Balong Sumber Rejeki ini juga tidak hanya menyediakan berbagai macam bakpia dengan varian rasa tapi juga menyediakan berbagai macam snack.', 3, '-7.5622734', '110.6819655'),
(17, 'Toko Sosis Gondang', 'Toko yang bisa traveler jadikan sebagai tempat pencarian adalah Toko Sosis Gondang yang berlokasi di Jalan Ahmad Yani, Gondang, Solo. Tenang saja traveler, di toko ini tidak hanya menyediakan sosis saja namun juga berbagai macam olahan dari sosis solo lainnya.', 6, '-7.566587', '110.8145369'),
(18, 'Abon Mesran', 'Sekilas toko ini namanya mirip dengan merk oli yang biasanya digunakan untuk kendaraan bermotor. Namun, toko ini memiliki abon yang selalu dicari-cari oleh para wisatawan karena rasanya yang terkenal sangat lezat dan unik. Toko yang beralamat di Jalan Kalilarangan no. 71, Solo atau bisa dikatakan dekat dengan Masjid Fatima ini memiliki menu andalan abon yakni abon sapi pedas yang larisnya bukan main.', 3, '-7.574619', '110.8180079'),
(19, 'Roti Merani', 'Toko ini memiliki menu andalan untuk diperdagangkan adalah roti semir merani dan roti tawar ala merani yang diolah menggunakan bahan-bahan pilihan sehingga ketika sampai ke tangan konsumen, kualitasnya tidak akan berkurang. Tak heran apabila toko ini yang berlokasi di Jalan Sutan Syahrir no. 111, Solo selalu ramai dikunjungi oleh orang -orang', 3, '-7.564637', '110.8258499'),
(20, 'Pabrik Rambak Bagoes Janaka', 'Dari namanya saja kita pasti tahu bahwa tempat ini menjual rambak, karena memang Solo juga terkenal dengan wilayah penghasil rambak dengan kualitas yang nomor wahid. Pabrik Rambak Bagoes Janaka yang berlokasi di Jalan Salak no. 8A, Ngadirejo, Kartasuro', 6, '-7.562279', '110.7499959'),
(21, 'Gereja Margoyudan Solo', 'Gereja tertua di kota Solo adalah Gereja Kristen Jawa Margoyudan yang cikal bakalnya sudah ada kurang lebih sejak tahun 1895. Gereja ini semula adalah tempat ibadah secara sembunyi-sembunyi yang dlakukan oleh dokter berkebangsaan Belanda bernama Jan Gerrit Scheurer di gudang milik Meneer Stegerhock.  Dokter Scheurer memiliki sekitar 20 orang pengikut dari warga sekitar yang tertarik memelajari agama Kristen. Setelah lama menjadi gerakan bawah tanah, akhirnya Pemerintahan Kolonial Belanda mengizinkan mereka untuk membangun gereja bagi warga sekitar yang telah memeluk agama Kristen dan resmi berdiri pada tahu 1916. Gereja yang berdiri di kawasan Margoyudan yang sekarang bernama jalan Monginsidi, Solo ini menyambut satu abad berdirinya dengan berbagai kegiatan kemanusiaan.\r\n \r\nMeski pun dibangun oleh orang Belanda namun bangunan gereja ini mengambil arsitektur rumah Joglo yang khas Jawa, lengkap dengan kursi-kursi rotan yang bersejarah. Gereja ini juga melengkapi diri dengan tulisan Jawa kromo Inggil pada penamaannya, selain memang menyajikan misa berbahasa Jawa.', 2, '-7.558338', '110.829485'),
(22, 'Vihara Dhamma Sundara Solo', 'Terletak di kawasan Pucangsawit, pinggiran kota Solo, vihara ini berdiri megah di tepi lahan yang luas, dilengkapi dengan semacam sungai kecil yang asri. Baru dibangun pada awal tahun 2002 yang lalu, Vihara Dhamma Sundara merupakan rumah ibadah yang dibangun oleh keluarga Sundara Hosea, pemilik Sun Motor, pengusaha otomotif ternama di kota Solo. Setelah memasuki gerbang, Anda akan tiba di ruang utama Vihara dengan arca Buddha emas dalam posisi Bhumisparsa mudra. Patung sang Buddha diapit oleh dua patung murid bersedekap. Vihara ini kerap terlihat seolah tak dijaga seorang pun. Meski demikian, Anda tidak perlu khawatir karena ada kamera-kamera CCTV yang menjamin keamanan para jemaat.\r\nSelain ruang utama, terdapat juga bangunan candi dan juga patung sang pendiri, Sundara Hosea yang telah mangkat beberapa tahun silam.', 2, '-7.569379', '110.848665'),
(23, 'Kelenteng Tri Darma Avalokitesvara Solo', 'Kelenteng Tri Darma Avalokiteswara yang lebih populer dengan sebutan Kelenteng Tien Kok Sie telah berdiri sejak tahun 1745 silam. Bertempat di seberang Pasar Gede yang merupakan kawasan Chinatown kota Solo, kelenteng ini menempati lahan sekitar 250 meter persegi. Arsitekturnya yang kaya dengan ornamen akan dipercantik dengan lampion hingga ke Pasar Gede setiap kali Hari Raya Imlek tiba. Masyarakat Solo memperingatinya dengan peristiwa akulturasi Jawa Tionghoa bernama Grebek Sudiro. Nama Sudiro berasal dari Sudiroprajan, nama kampung Pecinan tempat kawasan itu berada.  Karena usia dan sejarahnya, bangunan ini masuk menjadi daftar Benda Cagar Budaya. Tak heran, demi menjaga orisinalitasnya,  cagar budaya ini selalu dijaga. Salah satunya, meski usia kelenteng Tien Kok Sie  nyaris tiga abad pada tahun 2045 nanti, namun bangunan ini tidak pernah mengalami perubahan apa pun kecuali diperbaiki dinding kayunya dan melakukan pengecatan ulang.', 2, '-7.569152', '110.830440'),
(24, 'Masjid Lawean Solo', 'Masjid Ki Ageng Henis, Laweyan, merupakan masjid tertua di kota Solo. Masjid ini diyakini berdiri sejak zaman kerajaan Pajang pada sekitar tahun 1546 dan merupakan saksi sejarah akulturasi Hindu dan Islam di Nusantara. Menurut riwayat yang dianut masyarakat kampung batik Laweyan tempat masjid ini berada, kawasan itu sebenarnya milik seorang pandhita beragama Hindu yang bersahabat dengan Ki Ageng Henis. Persahabatan mereka akhirnya mengetuk hati sang pandhita untuk mempelajari agama Islam. Ia kemudian mewakafkan tanah miliknya untuk dijadikan musala. Ki Ageng Henis, atau Ki Ageng Anis menurut sumber lain, adalah penasehat raja Pajang yang berasal dari keturunan bangsawan Majapahit yang hijrah ke Solo.\r\n \r\nMasjid Laweyan nampak unik, selain usianya yang sudah empat abad, bentuk bangunannya juga lebih menyerupai kelenteng Jawa ketimbang masjid pada umumnya. Masjid ini memiliki 12 tiang dari kayu jati yang kokoh meski telah berusia ratusan tahun. Terdapat juga kentongan setua umur mesjid ini yang telah tak lagi dipergunakan, hanya dipajang sebagai catatan sejarah.', 2, '-7.554353', '110.789757'),
(25, 'Ritual Sekaten Solo', 'Sekaten berasal dari kata syahadatain (dua kalimat syahadat) yang disyiarkan oleh keraton kesultanan Jogjakarta dan kasunanan Surakarta untuk menyambut datangnya Maulud Nabi Muhammad SAW. Prosesi yang diciptakan oleh Sultan Hamengkubuwono Pertama ini dilakukan setiap bulan di alun-alun utara Kota Solo.\r\nSelain dibuka dengan upacara di keraton dan dilanjut dengan pembacaan kitab suci Al-Quran di mesjid Agung milik Kasunanan, rakyat dihibur dengan pasar malam sekatenan yang berlangsung sebulan penuh lamanya. Silakan sekalian membuat agenda untuk berziarah ke makam Sunan Bayat.', 2, '-7.574455', '110.826639'),
(26, 'Masjid Agung Solo', 'Mesjid utama kota Solo ini dibangun oleh Sunan Pakubuwono ke-III mulai tahun 1763. Setelah dibangun selama 5 tahun, masjid jami ini diresmikan sebagai pusat syiar Islam oleh keraton kasunanan Solo. Dibangun dengan dikelilingi tembok setinggi 3 meter, bangunan masjid di lahan sekitar 20.000 meter persegi ini adalah salah satu masjid tertua di kota Solo. Bangunannya mengambil arsitektur khas Jawa dengan tanpa adanya kubah melainkan mustaka (kepala) atap bersusun tiga. Masjid ini menjadi instrumen utama berbagai peristiwa kultural spiritual di kota Solo seperti Grebeg Mulud (menyambut Maulud Nabi Muhammad SAW) dan tahun baru Hijriah dimana orang banyak yang datang untuk menghabiskan malam di sana dengan membaca Quran.', 2, '-7.574487', '110.826596'),
(27, 'Masjid Pura Mangkunegaran Solo', 'Masjid agung milik Pura Mangkunegaran, keraton kedua di kota Solo, ini dibangun menyerupai masjid Demak oleh Kanjeng Gusti Pangeran Aryo Mangkunegara V. Anda dapat mencapai yang sangat asri ini dengan berjalan kaki dari jalan protokol Slamet Riyadi dari check point Pasar Triwindu (Windujenar Antique Market). Di lahan seluas 4.200 meter persegi ini wisatawan rohani akan disambut dengan dua gerbang yang seolah kembar. Gerbang-gerbang itu berisi kaligrafi firman Allah. Kaligrafi berisi ayat suci Al-Quran dan hadist Nabi SAW juga terdapat pada 4 tiang utama (saka guru) dan 12  tiang penyangga tambahan yang berdiri kokoh pada bangunan bersejarah ini.', 2, '-7.565232', '110.821748'),
(28, 'Gereja Antonius Purbayan Solo', 'Gereja Santo Antonius, Purbayan, adalah gereja Katholik tertua di kota Solo.  Menurut sejarahnya, Romo Cornelis Stiphout, SJ dari Pastoran Ambarawa yang berinisiatif mendirikan gereja bagi umat Katholik di Kota Solo pada tahun 1905.  Namun kondisi sosial dan politik pada saat itu sedang tidak menguntungkan sehingga rencana pembangunan ini tertunda lama. Akhirnya pada bulan November 1916 gereja Katholik berhasil dibangun di kawasan Purbayan, pusat kota Solo, dengan arsitektur khas kolonial Belanda yang kokoh dengan langit-langit tinggi. Gereja ini diberkati dengan Nama Gereja Santo Antonius. Dua tahun kemudian Romo C. Stiphout, SJ diangkat sebagai Pastor Paroki yang pertama di di sana. Letaknya yang tepat ada di pusat kota, tepat di samping gedung balaikota Surakarta, membuat gereja ini sangat strategis sebagai tujuan wisata rohani umat Katholik.', 2, '-7.568601', '110.829768'),
(30, 'Kegiatan Haul Habib Ali Solo', 'Di dekat Rumah Sakit Kustati, terdapat Masjid Gurawan yang lebih sohor dengan sebutan Masjid Ar-Riyadh. Masjid  di kampung Arab, kawasan Pasar Kliwon, tepatnya di jalan Kapten Mulyadi, Solo, ini setiap tahunnya menjadi tujuan para peziarah rohani dari berbagai penjuru Nusantara untuk mengikuti Haul Habib Ali. Biasanya jalan raya Kapten Mulyadi akan ditutup nyaris sehari penuh karena membludaknya ribuan peziarah yang hadir mengikuti haul.  Al-Habib Al-Imam Al-Allamah Ali bin Muhammad bin Husin Al-Habsyi adalah penulis kitab maulid Simtuddurar, seorang ulama terkemuka asal Hadramaut /Negeri Yaman yang telah wafat pada tahun 1333 Hijriah.  Putra bungsunya yang bernama Al-Habib Alwi bin Ali Al-Habsyi, merantau ke Nusantara dan mendirikan  Masjid Riyadh di kota Solo. Oleh sang putra bungsu itulah, tradisi haul  ini diperkenalkan di masjid Ar Riyadh Solo dan berlangsung setiap tahun dengan jumlah pengunjung yang terus meningkat.', 2, '-7.582764', '110.829773'),
(31, 'Grebeg Sudiro Solo', 'Akulturasi harmonis masyarakat Jawa Tionghoa dapat Anda nikmati dengan perayaan Grebeg Sudiro di kota Solo. Acara tahunan untuk menyambut Tahun Baru Imlek ini biasanya berpusat di kawasan Pasar Gede yang memang dikenal sebagai chinatown di kota Solo. Tepat seminggu sebelum Tahun Baru Imlek, Pasar Gede akan dihias dengan lampion dan kadang juga dilengkapi dengan wisata perahu lampion pada malam harinya di Tirtonadi.\r\n \r\nGrebeg Sudiro ditandai dengan arak-arakan kue keranjang di kampung Sudiroprajan, kampung Pecinan, yang dibarengi dengan pawai kesenian Jawa dan Tionghoa. Arak-arakan dari kampung Sudiroprajan ini akan berhenti di depan Klenteng Tien Kok Sie di depan Pasar Gede. Dari sana lampion dinyalakan dan sebagian diantaranya diterbangkan ke langit. Prosesi ini adalah pengembangan dari tradisi Buk Teko yang diprakarsai Sunan Paku Buwono X (1893-1939) sebagai suatu tradisi syukuran menjelang Imlek bagi masyarakat Pecinan di kota Solo.', 2, '-7.569173', '110.831792'),
(32, 'Taman Cerdas Technopark', 'Jika Anda berkunjung di kala pagi sampai siang banyak pemuda dan mahasiswa yang memanfaatkan taman cerdas untuk bermain internet karena ada wifi hotspot. Di belakang play ground terdapat mini aula. Sisi utaranya terbuka. Masyarakat bisa memanfaatkannya untuk berbagai kegiatan. Di sebelah timur gedung perpustakaan, terdapat sebuah arena teater terbuka. Tempat duduk arena teater itu semi melingkar dan dibuat berundak. Sedangkan di sisi utara Taman Cerdas, terdapat dua taman lagi, taman dinosaurus dan taman purba. Taman dinosaurus ditandai dengan patung salah satu spesies dinosaurus setinggi sekitar empat meter. Sementara taman purba ditandai dengan keberadaan tiga patung manusia purba. Keren ya, anak-anak pasti suka sekali bermain di tempat ini.', 4, '-7.554334', '110.853440'),
(33, 'Pandawa Water World Solo Baru', '<p>\r\n	<span style="font-size: 14px; color: rgb(71, 71, 71); font-family: Verdana, Arial, &quot;Open Sans&quot;, sans-serif; text-align: justify;">Pandawa Water World ini telah menjadi salah satu tempat wisata di Solo.</span><span style="font-size: 14px; color: rgb(71, 71, 71); font-family: Verdana, Arial, &quot;Open Sans&quot;, sans-serif; text-align: justify;">W</span><span style="font-size: 14px; color: rgb(71, 71, 71); font-family: Verdana, Arial, &quot;Open Sans&quot;, sans-serif; text-align: justify;">ahana air yang satu ini menawarkan fasilitas air yang bisa dibilang lengkap.</span><span style="color: rgb(63, 65, 75); font-family: Verdana, Geneva, sans-serif; text-align: justify;"><span style="font-size: 14px;">Tempat wisata ini adalah merupakan salah satu tempat wisata yang menjadi andalan di kota solo.</span><span style="font-size: 16px;"><span style="font-size:14px;">Pandawa Water world </span>ini&nbsp;</span></span><span style="font-size: 14px; color: rgb(63, 65, 75); font-family: Verdana, Geneva, sans-serif; text-align: justify;">sangat cocok dijadikan tempat untuk wisata keluarga.Wahana ini</span><span style="font-size: 14px; color: rgb(63, 65, 75); font-family: Verdana, Geneva, sans-serif; text-align: justify;">&nbsp;juga sudah dilengkapi fasilitas penunjang yang sangat memadai antara lain parkir yang sangat luas,ruang bilas,kamar mandi,ruang ganti,masjid,locker,dan juga food court pastinya karena peraturan disana para penelusur tidak diperkenankan membawa makanan dari luar.</span></p>\r\n<p>\r\n	<span style="font-size: 14px; color: rgb(63, 65, 75); font-family: Verdana, Geneva, sans-serif; text-align: justify;">Tempat wisata pandawa water world buka setiap hari mulai pukul 8.00 pagi sampai 18.00 sore.Htm di tempat wisata ini yaitu untuk hari senin-jumat Rp 50.000/orang sedangkan sabtu-minggu Rp 100.000/orang.</span></p>\r\n', 4, '-7.605545', '110.804037'),
(34, 'Tugu Lilin', '<p>\r\n	Tugu lilin merupakan monumen peringatan 25 tahun berdirinya Boedi Oetomo. Dengan bentuknya yang menyerupai lilin yang menyala ini melambangkan pengabdian dan semangat perjuangan bangsa Indonesia yang berapi-api memperjuangkan kemerdekaan.</p>\r\n', 4, '-7.567720', '110.783829'),
(35, 'Air Terjun Jumog', '<p>\r\n	Air Terjun Jumog merupakan wisata terkenal di daerah solo.Wisata ini berjarak sekitar 40km dari kota solo.Anda dapat menikmati sejuknya air terjun dan segarnya udara sekitar serta panorama alam yang menakjubkan. Cukup dengan harga 5000 rupiah anda sudah dapat menikmati keindahan Air Terjun Jumog ini.</p>\r\n', 1, '-7.631981', '111.127776'),
(36, 'Air Terjun Parang Ijo', '<p>\r\n	Air terjun parang ijo terletak di lereng gunung lawu dan memiliki ketinggian sekitar 50m. Air terjun parang ijo ini berjarak sekitar 20menit dari candi cetho.</p>\r\n<p>\r\n	Tarif tiket untuk masuk ke Air Terjun Parang Ijo hanya sebesar Rp 2500,00.</p>\r\n', 1, '-7.621236', '111.132436');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_web`
--
ALTER TABLE `tbl_admin_web`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_firebase_info`
--
ALTER TABLE `tbl_firebase_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_foto`
--
ALTER TABLE `tbl_foto`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jenis_wisata`
--
ALTER TABLE `tbl_jenis_wisata`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_like`
--
ALTER TABLE `tbl_like`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_web`
--
ALTER TABLE `tbl_admin_web`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tbl_firebase_info`
--
ALTER TABLE `tbl_firebase_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_foto`
--
ALTER TABLE `tbl_foto`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tbl_jenis_wisata`
--
ALTER TABLE `tbl_jenis_wisata`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_like`
--
ALTER TABLE `tbl_like`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
