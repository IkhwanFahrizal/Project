-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2023 pada 12.49
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `ID_Admin` int(11) NOT NULL,
  `usser` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`ID_Admin`, `usser`, `password`) VALUES
(1, 'admin', 'Admin123'),
(2, 'ikhwan', 'Ikhwan123'),
(3, 'fitri', 'Fitri123'),
(4, 'ana', 'Ana12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `destinasi`
--

CREATE TABLE `destinasi` (
  `ID_Destinasi` int(11) NOT NULL,
  `ID_Kategori` int(11) NOT NULL,
  `Nama_Destinasi` varchar(255) DEFAULT NULL,
  `Foto` varchar(255) NOT NULL,
  `Deskripsi` text,
  `Harga` int(50) DEFAULT NULL,
  `Lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `destinasi`
--

INSERT INTO `destinasi` (`ID_Destinasi`, `ID_Kategori`, `Nama_Destinasi`, `Foto`, `Deskripsi`, `Harga`, `Lokasi`) VALUES
(1, 1, 'Pulau Komodo', '834.jpg', 'Taman Nasional Komodo terkenal sebagai habitat bagi komodo, hewan kadal terbesar di dunia.', 150000, 'Nusa Tenggara Timur'),
(2, 1, 'Gunung Bromo', '266.jpeg', 'Taman Nasional Gunung Bromo merupakan tujuan populer di Jawa Timur.', 100000, 'Jawa Timur'),
(3, 1, 'Taman Lorentz', '480.jpg', 'Taman Nasional Lorentz mencakup hutan hujan tropis, pegunungan, dan gletser.', 170000, 'Papua'),
(4, 1, 'Way Kambas', '857.jpg', 'Taman Nasional Way Kambas adalah tujuan untuk melindungi satwa liar langka.', 80000, 'Lampung'),
(5, 1, 'Ujung Kulon', '909.jpg', 'Taman Nasional Ujung Kulon terkenal karena menjadi habitat badak bercula satu.', 70000, 'Banten'),
(6, 2, 'Bali Treetop', '631.jpg', 'Bali Treetop Adventure Park adalah taman petualangan yang di tengah hutan.', 350000, 'Bali'),
(7, 2, 'Jatim Park 3', '922.jpeg', 'Jatim Park 3 adalah taman petualangan dengan wahana yang seru.', 300000, 'Malang'),
(8, 2, 'Jungleland Adventure Theme Park', '853.png', 'Jungleland Adventure Theme Park menawarkan taman petualangan seru.', 350000, 'Bogor'),
(9, 2, 'Secret Garden Village', '372.jpg', 'Secret Garden Village adalah taman petualangan yang terletak di Bedugul, Bali.', 200000, 'Bedugul Bali'),
(10, 2, 'Flying Fox Bukit Kasih', '664.jpg', 'Flying Fox Bukit Kasih adalah tempat wisata petualangan yang menarik.', 100000, 'Sulawesi Utara'),
(11, 3, 'Pantai Kuta', '479.jpg', 'Pantai Kuta adalah salah satu pantai paling terkenal di Bali', 30000, 'Bali'),
(12, 3, 'Pantai Pink', '955.jpg', 'Pantai Pink adalah pantai yang terletak di Pulau Komodo, Nusa Tenggara Timur.', 25000, 'Nusa Tenggara Timur'),
(13, 3, 'Pantai Tanjung Bira', '103.jpg', 'Pantai Tanjung Bira ini terkenal dengan pasir putihnya yang bersih.', 20000, 'Sulawesi Selatan'),
(14, 3, 'Pantai Popoh', '807.jpg', 'Pantai Popoh adalah salah satu pantai yang terkenal di Tulungagung, Jawa Timur.', 20000, 'Tulungagung'),
(15, 3, 'Parangtritis', '906.jpg', 'Pantai Parangtritis menawarkan panorama yang indah dengan pasir hitam.', 30000, 'Yogyakarta'),
(16, 4, 'Candi Prambanan', '410.jpg', 'Candi Prambanan adalah kompleks candi Hindu terbesar di Indonesia.', 50000, 'Yogyakarta'),
(17, 4, 'Candi Borobudur', '491.jpg', 'Candi Borobudur adalah keajaiban arsitektur candi Buddha terbesar di dunia.', 100000, 'Magelang'),
(18, 4, 'Benteng Rotterdam', '30.jpg', 'Benteng Rotterdam adalah benteng peninggalan kolonial Belanda yang indah.', 45000, 'Makassar'),
(19, 4, 'Museum Nasional', '967.jpg', 'Museum Nasional, juga dikenal sebagai Museum Gajah, adalah museum terbesar.', 30000, 'Jakarta'),
(20, 4, 'Istana Maimun', '428.jpg', 'Istana Maimun adalah sebuah istana yang megah dengan arsitektur Melayu.', 25000, 'Medan'),
(21, 5, 'Taman Mekarsari', '922.jpg', 'Taman Wisata Mekarsari adalah taman hiburan yang terletak di Bogor.', 45000, 'Bogor'),
(22, 5, 'Dunia Fantasi', '798.jpeg', 'Dufan adalah taman hiburan terbesar di Indonesia yang terletak di Jakarta.', 250000, 'Jakarta'),
(23, 5, 'Trans Studio', '274.jpg', 'Trans Studio adalah taman hiburan dalam ruangan yang terletak di Bandung.', 200000, 'Bandung'),
(24, 5, 'Jatim Park 1', '227.jpg', 'Jatim Park 1 adalah taman hiburan yang terletak di Malang, Jawa Timur.', 150000, 'Malang'),
(25, 5, 'Ancol Dreamland', '633.jpg', 'Ancol Dreamland adalah kompleks taman hiburan yang terletak di Jakarta Utara.', 300000, 'Jakarta'),
(26, 6, 'Safari Bogor', '759.jpeg', 'Taman Safari Bogor adalah taman safari yang terletak di Cisarua.', 300000, 'Bogor'),
(27, 6, 'Safari Prigen', '728.jpg', 'Taman Safari Prigen adalah taman safari yang terletak di Prigen, Jawa Timur.', 250000, 'Prigen'),
(28, 6, 'Safari Marine', '324.jpg', ' Bali Safari Marine Park adalah taman safari terletak di Bali.', 500000, 'Bali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_destinasi`
--

CREATE TABLE `detail_destinasi` (
  `ID_Detail` int(11) NOT NULL,
  `ID_Destinasi` int(11) NOT NULL,
  `Deskripsi` text NOT NULL,
  `Fasilitas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_destinasi`
--

INSERT INTO `detail_destinasi` (`ID_Detail`, `ID_Destinasi`, `Deskripsi`, `Fasilitas`) VALUES
(1, 1, 'Taman Nasional Komodo adalah sebuah taman nasional yang terletak di provinsi Nusa Tenggara Timur, Indonesia. Taman nasional ini didirikan pada tahun 1980 dan merupakan rumah bagi spesies endemik yang terkenal, yaitu komodo (Varanus komodoensis), yang juga menjadi ikon taman nasional ini.  Taman Nasional Komodo meliputi tiga pulau utama, yaitu Pulau Komodo, Pulau Rinca, dan Pulau Padar, serta puluhan pulau kecil lainnya. Wilayah taman nasional ini mencakup lahan darat dan perairan, dengan ekosistem yang kaya dan beragam.', 'Pusat Informasi, Jalur Pendakian dan Trekking, Area Pemandian, Spot Snorkeling dan Diving, Akomodasi, Pemandu Wisata.'),
(2, 2, 'Taman Nasional Gunung Bromo mencakup wilayah seluas sekitar 800 kilometer persegi dan terletak di kawasan pegunungan Bromo-Tengger-Semeru. Lanskapnya sangat menakjubkan, dengan ciri khasnya berupa gunung berapi aktif, lautan pasir yang luas, serta lembah hijau yang mempesona. Pemandangan matahari terbit di Gunung Bromo sangat terkenal, dengan langit yang cerah dan panorama alam yang menakjubkan.', 'Aksesibilitas, Penginapan, Jeep Wisata, Tempat Beribadah, Trekking,  Spot Fotografi, Restoran dan Warung Makan.'),
(3, 3, 'Taman Nasional Lorentz merupakan salah satu daerah konservasi dengan tingkat keanekaragaman hayati yang sangat tinggi. Taman nasional ini mencakup berbagai ekosistem, termasuk pegunungan bersalju, hutan hujan tropis, rawa-rawa, dan padang rumput alpin. Di dalamnya terdapat beragam flora dan fauna langka, termasuk burung cendrawasih, kanguru pohon, dan trenggiling.', 'Pusat Informasi, Pemandu Wisata, Akomodasi, Area Camping, dan Jalur Pendakian.'),
(4, 4, 'Taman Nasional Way Kambas terdiri dari hutan dataran rendah, rawa-rawa, sungai, dan pantai yang membentang sepanjang pesisir Teluk Lampung. Kawasan ini memiliki keanekaragaman hayati yang tinggi, termasuk lebih dari 400 spesies burung, sekitar 50 spesies mamalia, dan ratusan spesies tumbuhan. Selain gajah Sumatera, taman nasional ini juga menjadi tempat hidup bagi spesies seperti harimau Sumatera, badak bercula satu, monyet ekor panjang, dan banyak lagi.', 'Pusat Informasi, Penginapan, Area Camping, Jalur Wisata, Pemandu Wisata, Jeep Safari dan Trekking.'),
(5, 5, 'Taman Nasional Ujung Kulon adalah salah satu destinasi wisata alam yang terletak di Provinsi Banten, Indonesia. Taman nasional ini terkenal karena keindahan alamnya yang masih alami dan keberadaan hewan langka seperti badak bercula satu.', 'Penginapan, Sarana Makan, Pusat Informasi, Area Camping, Guide Lokal.'),
(6, 13, 'Pantai Tanjung Bira adalah destinasi pantai yang populer di Sulawesi Selatan. Pantai ini menawarkan pesona alam yang menakjubkan dengan pemandangan indah, pasir putih yang halus, dan air laut yang biru kehijauan. Pantai ini terletak di Desa Tanjung Bira, sekitar 200 kilometer dari Kota Makassar.', 'Warung-warung makan, Penginapan, Penyewaan peralatan snorkeling dan diving.'),
(7, 14, 'Wisata pantai ini ternyata menyimpan daya tarik selain keindahan panorama pantainya. Daya tarik ini adalah memiliki sebuah makam kuno yang bersejarah. Bagi Anda yang sangat menyukai akan sejarah kuno, maka berlibur ke Pantai Popoh merupakan salah satu pilihan yang tepat.', 'Kamar Mandi, Penjual Makanan dan Minuman, Perahu atau Cano, Toko Souvenir.'),
(8, 11, 'Pantai Kuta menawarkan pesona alam yang menakjubkan dengan pasir putih yang lembut dan ombak yang ideal untuk berselancar. Pantai ini terkenal karena keindahannya yang luar biasa dan suasana pantai yang hidup. Dengan luas yang mencapai beberapa kilometer, pantai ini memberikan ruang yang luas untuk pengunjung menikmati kegiatan pantai seperti berjemur, berenang, dan bermain pasir. Pemandangan matahari terbenam di Pantai Kuta juga sangat memukau, menjadikannya tempat yang populer untuk menikmati momen indah ini.', 'Warung dan Restoran, Penyewaan Peralatan Selancar, Tempat Spa dan Pijat, Toko , Fasilitas Publik dan Pasar Souvenir.'),
(9, 12, 'Pantai Pink adalah sebuah perpaduan alam yang menakjubkan antara laut biru yang jernih dan pasir berwarna merah muda yang memukau. Pasir berwarna merah muda ini disebabkan oleh pecahan koral dan organisme mikroskopis bernama foraminifera yang hidup di perairan pantai ini. Keindahan unik Pantai Pink menjadikannya salah satu destinasi wisata yang sangat populer di Indonesia.', 'Area Parkir, Warung Makan, Pemandu Lokal, Tempat Istirahat, Perlengkapan Snorkeling.'),
(10, 15, 'Pantai Parangtritis adalah sebuah pantai yang memiliki pesona alam yang memikat dengan garis pantai yang panjang, pasir putih yang bersih, dan ombak yang kuat. Pantai ini terletak sekitar 27 kilometer dari pusat kota Yogyakarta, dan merupakan salah satu tujuan wisata yang populer di daerah ini. Keindahan pantai ini tidak hanya terletak pada pemandangan alamnya, tetapi juga pada kegiatan-kegiatan yang dapat dilakukan di sana.', 'Warung Makan, Sewa Perlengkapan Pantai, Aktivitas Olahraga Air, Penyewaan ATV dan Jeep, Penginapan.'),
(11, 6, 'Bali Treetop Adventure Park adalah taman petualangan yang terletak di tengah hutan tropis di dekat Pantai Bedugul, Bali. Taman ini menawarkan pengalaman seru dan menyenangkan dengan berbagai wahana petualangan seperti tali gantung, jembatan gantung, dan flying fox yang terletak di antara pohon-pohon tinggi.', 'Kafe dan Area Makan, Area Parkir, Area Istirahat, Kamar Mandi, Layanan Penyewaan.'),
(12, 7, 'Jatim Park 3 merupakan salah satu destinasi wisata petualangan populer di kawasan Batu, Jawa Timur. Taman hiburan ini menawarkan pengalaman seru dan edukatif bagi pengunjung segala usia. Dengan tema edukasi dan lingkungan, Jatim Park 3 menyediakan berbagai atraksi dan wahana yang menggabungkan hiburan dengan pengetahuan.', 'Area Makan, Area Istirahat, Toko Suvenir, Parkir, Toilet dan Fasilitas Umum.'),
(13, 8, 'Jungleland Adventure Theme Park adalah destinasi wisata petualangan yang menyajikan pengalaman seru di tengah alam liar. Taman ini memiliki tema hutan tropis yang menghadirkan nuansa eksotis dan menarik bagi pengunjung. Jungleland Adventure Theme Park menawarkan berbagai wahana dan atraksi yang menantang, mulai dari tali gantung, flying fox, panjat tebing, hingga wahana air yang menyegarkan.', 'Restoran dan Kafe, Area Makan Picnic, Penyewaan Loker, Area Istirahat dan Ruang Keluarga, Tempat Penitipan Barang.'),
(14, 9, 'Secret Garden Village adalah destinasi wisata petualangan yang memadukan keindahan alam pegunungan Bedugul dengan konsep taman yang menawan dan pemandangan spektakuler. Ketika Anda mengunjungi Secret Garden Village, Anda akan disambut oleh suasana yang tenang dan sejuk dengan panorama sawah, danau, dan gunung di sekitarnya.', 'Restoran dan Kafe, Galeri Seni dan Kerajinan, Area Bermain Anak, Ruang Pertemuan dan Acara, Area Parkir.'),
(15, 10, 'Flying Fox Bukit Kasih adalah tempat wisata petualangan yang populer di Sulawesi Utara. Terletak di Bukit Kasih yang dikenal sebagai tempat ziarah multikultural, flying fox ini memberikan pengalaman yang menarik dan menegangkan bagi pengunjung yang suka tantangan. Wahana flying fox di sini melintasi lembah yang hijau dan menawarkan pemandangan spektakuler dari atas.', 'Flying Fox Lines, Pemandu dan Alat Keselamatan, Area Penonton, Toilet dan Area Istirahat, Warung Makan.'),
(16, 16, 'Candi Prambanan, juga dikenal sebagai Roro Jonggrang, adalah kompleks candi Hindu terbesar di Indonesia. Terletak sekitar 17 kilometer timur laut Yogyakarta, candi ini merupakan salah satu situs warisan dunia UNESCO dan menjadi salah satu tujuan wisata budaya yang populer di Indonesia.', 'Pusat Informasi, Area Parkir, Warung dan Restoran, Souvenir dan Toko Oleh-oleh, Area Istirahat.'),
(17, 17, 'Candi Borobudur merupakan sebuah kompleks candi yang dibangun pada abad ke-8 oleh Dinasti Syailendra. Candi ini merupakan contoh arsitektur Buddha Mahayana yang megah dan kompleks. Terdiri dari sembilan tingkat, candi ini memiliki struktur piramida dengan lebih dari 2.000 relief dan 500 stupa yang indah.', 'Area Parkir, Area Informasi, Area Wisatawan, Area Restoran dan Warung Makan, Toko Suvenir, Toilet dan Area Istirahat.'),
(18, 18, 'Benteng Rotterdam, juga dikenal sebagai Benteng Ujung Pandang, adalah sebuah kompleks benteng peninggalan kolonial Belanda yang terletak di tepi pantai Makassar. Benteng ini didirikan pada abad ke-17 sebagai bagian dari sistem pertahanan Belanda untuk mengamankan kota dan pelabuhan Makassar. Benteng Rotterdam menggambarkan gaya arsitektur Eropa klasik dengan pengaruh arsitektur Belanda.', 'Pusat Informasi, Museum, Area Rekreasi, Toko Suvenir, Area Parkir.'),
(19, 19, 'Museum Nasional, juga dikenal sebagai Museum Gajah, merupakan salah satu museum terbesar dan terpenting di Indonesia. Terletak di Jalan Medan Merdeka Barat, Jakarta Pusat, museum ini memiliki koleksi yang luas dan beragam yang mencakup berbagai aspek sejarah, budaya, arkeologi, etnografi, dan seni di Indonesia.', 'Pusat Informasi, Ruang Pamer, Auditorium dan Teater, Toko Souvenir, Kafe dan Ruang Istirahat.'),
(20, 20, 'Istana Maimun adalah sebuah kompleks istana yang dibangun pada abad ke-19 oleh Sultan Deli, yaitu Sultan Mamun Al Rashid Perkasa Alam. Istana ini memiliki arsitektur yang khas dengan pengaruh gaya Melayu, Islam, dan Eropa. Bangunan ini menampilkan perpaduan antara elemen-elemen tradisional dan kemewahan kolonial pada masanya.', 'Pusat Informasi, Tur dan Pemandu, Area Istirahat, Toko Suvenir, Tempat Parkir.'),
(21, 21, 'Taman Mekarsari adalah destinasi wisata yang cocok untuk keluarga dan pecinta alam. Dengan luas sekitar 264 hektar, taman ini menawarkan berbagai kebun buah-buahan yang subur dan indah. Taman ini memiliki lebih dari 500 jenis buah yang berasal dari berbagai daerah di Indonesia. Pengunjung dapat menjelajahi taman ini dan menikmati pemandangan yang menakjubkan sambil merasakan kelezatan buah-buahan segar.', 'Taman Bermain, Taman Bunga, Restoran dan Warung Makan, Area Piknik, Area Olahraga, Peternakan.'),
(22, 22, 'Dunia Fantasi, atau yang lebih dikenal dengan sebutan Dufan, adalah taman hiburan yang terletak di Ancol, Jakarta Utara. Dufan merupakan destinasi populer bagi wisatawan lokal maupun mancanegara yang mencari hiburan dan keseruan. Taman ini menawarkan berbagai macam wahana, permainan, pertunjukan, dan atraksi yang dirancang untuk memberikan pengalaman tak terlupakan.', 'Food Court, Restoran dan Kafe, Souvenir Shops, Area Istirahat, Toilet dan Area Beristirahat.'),
(23, 23, 'Trans Studio Bandung adalah tempat di mana pengunjung dapat menemukan hiburan tanpa henti. Taman hiburan ini didesain dengan konsep dalam ruangan yang luas dan menampilkan berbagai atraksi yang spektakuler. Dengan luas lebih dari 4,2 hektar, Trans Studio Bandung menawarkan pengalaman hiburan yang lengkap bagi pengunjung dari segala usia.', 'Wahana Hiburan, Pertunjukan, Area Makan dan Minum, Toko Suvenir, Area Parkir.'),
(24, 24, 'Jatim Park 1 adalah destinasi wisata hiburan yang menawarkan pengalaman seru dan edukatif bagi seluruh keluarga. Taman ini memiliki berbagai wahana permainan yang menarik, atraksi menarik, serta fasilitas edukasi yang menghibur dan memberikan wawasan baru. Jatim Park 1 bertujuan untuk menggabungkan hiburan dan pendidikan sehingga pengunjung dapat belajar sambil bersenang-senang.', 'Restoran dan Kafe,Area , Area Istirahat, Toilet Umum, Souvenir Shop.'),
(25, 25, 'Ancol Dreamland adalah kompleks wisata hiburan yang mencakup area seluas 552 hektar di tepi pantai Jakarta Utara. Tempat ini menawarkan beragam hiburan dan rekreasi bagi pengunjung dari segala usia. Kompleks Ancol Dreamland juga memiliki Atlantis Water Adventure, sebuah taman air yang menawarkan kolam renang, seluncuran air, dan atraksi air lainnya.', 'Wahana Hiburan, Sea World, Pantai, Fasilitas Makan, Penginapan, Area Parkir.'),
(26, 26, 'Taman Safari Indonesia Bogor adalah taman hiburan yang menawarkan pengalaman mendebarkan dengan menjelajahi kehidupan liar hewan-hewan di habitat mereka yang mirip dengan alam asli. Pengunjung dapat mengelilingi taman dengan menggunakan mobil pribadi atau menggunakan bus khusus yang disediakan oleh taman. Selama perjalanan, pengunjung akan melihat berbagai macam hewan, termasuk singa, harimau, jerapah, gajah, zebra, dan masih banyak lagi.', 'Restoran dan Kafe, Area Bermain dan Wahana, Souvenir dan Toko Cenderamata, Toilet dan Area Istirahat, Area Parkir.'),
(27, 27, 'Taman Safari Prigen merupakan taman safari terbesar di Jawa Timur yang menyediakan pengalaman mendebarkan dengan mengamati dan berinteraksi dengan berbagai hewan liar. Taman Safari Prigen memberikan kesempatan kepada pengunjung untuk melihat hewan-hewan tersebut secara langsung dan dalam habitat yang mirip dengan aslinya.', 'Restoran dan Kafe, Area Istirahat dan Picnic, Souvenir Shop, Area Parkir, Toilet dan Fasilitas Umum.'),
(28, 28, 'Taman Safari Marine Park merupakan destinasi wisata safari yang menawarkan pengalaman menyenangkan dengan memadukan pertunjukan satwa, atraksi air, dan interaksi langsung dengan hewan-hewan yang menarik. Terletak di tengah alam yang indah, taman ini memungkinkan pengunjung untuk mengeksplorasi dunia satwa liar dan juga menikmati berbagai wahana air yang seru.', 'Restoran dan Kafe, Area Parkir, Penyewaan Pelampung, Toilet dan Fasilitas Kebersihan, Toko Suvenir.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `ID_Gambar` int(11) NOT NULL,
  `ID_Detail` int(11) NOT NULL,
  `Nama_File` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`ID_Gambar`, `ID_Detail`, `Nama_File`) VALUES
(1, 1, '537.jpg'),
(2, 1, '858.jpg'),
(3, 1, '27.jpg'),
(4, 1, '300.jpeg'),
(11, 2, '308.jpeg'),
(12, 2, '63.png'),
(13, 2, '859.jpeg'),
(14, 2, '239.jpeg'),
(15, 3, '187.jpg'),
(16, 3, '947.jpg'),
(17, 3, '530.jpg'),
(18, 3, '471.jpg'),
(19, 4, '940.jpg'),
(20, 4, '8.jpg'),
(21, 4, '723.jpg'),
(22, 4, '707.jpg'),
(23, 5, '505.jpg'),
(24, 5, '253.jpg'),
(25, 5, '319.jpg'),
(26, 5, '170.jpg'),
(27, 8, '972.jpg'),
(28, 8, '720.jpg'),
(29, 8, '289.jpeg'),
(30, 8, '67.jpg'),
(31, 9, '517.jpg'),
(32, 9, '561.jpg'),
(33, 9, '799.jpeg'),
(34, 9, '126.png'),
(35, 6, '291.jpg'),
(36, 6, '851.jpg'),
(37, 6, '183.jpg'),
(38, 6, '349.jpg'),
(39, 7, '683.jpg'),
(40, 7, '765.jpeg'),
(41, 7, '477.jpg'),
(42, 7, '91.jpg'),
(43, 10, '199.jpg'),
(44, 10, '7.jpg'),
(45, 10, '745.jpg'),
(46, 10, '362.png'),
(47, 16, '495.jpg'),
(48, 16, '330.jpg'),
(49, 16, '806.jpg'),
(50, 16, '842.jpg'),
(51, 17, '964.jpg'),
(52, 17, '663.jpg'),
(53, 17, '580.jpg'),
(54, 17, '952.jpeg'),
(55, 18, '802.jpg'),
(56, 18, '766.jpg'),
(57, 18, '323.jpg'),
(58, 18, '506.jpg'),
(59, 19, '661.jpg'),
(60, 19, '111.jpeg'),
(61, 19, '616.png'),
(62, 19, '804.jpg'),
(63, 20, '818.jpg'),
(64, 20, '735.jpg'),
(65, 20, '192.png'),
(66, 20, '269.jpg'),
(67, 21, '501.jpg'),
(68, 21, '257.jpg'),
(69, 21, '782.jpg'),
(70, 21, '717.jpg'),
(71, 22, '698.jpeg'),
(72, 22, '965.jpg'),
(73, 22, '160.jpg'),
(74, 22, '897.jpg'),
(75, 23, '518.jpg'),
(76, 23, '516.jpeg'),
(77, 23, '983.jpg'),
(78, 23, '294.jpg'),
(79, 24, '755.jpg'),
(80, 24, '534.png'),
(81, 24, '834.jpg'),
(82, 24, '443.jpg'),
(83, 25, '987.jpg'),
(84, 25, '960.jpg'),
(85, 25, '125.jpg'),
(86, 25, '166.jpg'),
(87, 26, '639.jpeg'),
(88, 26, '796.jpg'),
(89, 26, '840.jpeg'),
(90, 26, '919.jpg'),
(91, 27, '370.jpg'),
(92, 27, '359.jpg'),
(93, 27, '515.jpg'),
(94, 27, '497.jpg'),
(95, 28, '920.jpg'),
(96, 28, '535.jpg'),
(97, 28, '410.jpg'),
(98, 28, '807.jpg'),
(99, 11, '344.jpg'),
(100, 11, '159.jpg'),
(101, 11, '938.jpg'),
(102, 11, '945.jpg'),
(103, 12, '803.jpeg'),
(104, 12, '227.jpg'),
(105, 12, '333.jpg'),
(106, 12, '108.jpg'),
(107, 13, '298.png'),
(108, 13, '279.jpg'),
(109, 13, '273.png'),
(110, 13, '493.png'),
(111, 14, '990.jpg'),
(112, 14, '791.jpg'),
(113, 14, '689.jpg'),
(114, 14, '977.jpg'),
(115, 15, '343.jpg'),
(116, 15, '14.jpg'),
(117, 15, '255.jpg'),
(118, 15, '937.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_destinasi`
--

CREATE TABLE `kategori_destinasi` (
  `ID_Kategori` int(11) NOT NULL,
  `Nama_Kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_destinasi`
--

INSERT INTO `kategori_destinasi` (`ID_Kategori`, `Nama_Kategori`) VALUES
(1, 'Wisata Alam'),
(2, 'Wisata Petualangan'),
(3, 'Wisata Pantai'),
(4, 'Wisata Sejarah'),
(5, 'Wisata Hiburan'),
(6, 'Wisata Safari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `ID_Pemesanan` int(11) NOT NULL,
  `ID_Admin` int(11) NOT NULL,
  `ID_Destinasi` int(11) DEFAULT NULL,
  `Nama_Pemesan` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Tanggal_Pemesanan` date DEFAULT NULL,
  `Jumlah_Tiket` int(100) DEFAULT NULL,
  `Total_Harga` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`ID_Pemesanan`, `ID_Admin`, `ID_Destinasi`, `Nama_Pemesan`, `Email`, `Tanggal_Pemesanan`, `Jumlah_Tiket`, `Total_Harga`) VALUES
(60, 3, 8, 'Dani', 'fitridesiana76@gmail.com', '2023-06-16', 4, 1400000),
(61, 4, 7, 'Anggita', 'fitridesiana76@gmail.com', '2023-06-07', 3, 900000),
(62, 1, 13, 'Densi', 'fitridesiana093@gmail.com', '2023-06-15', 6, 120000),
(63, 3, 7, 'Anggita', 'fitridesiana093@gmail.com', '2023-06-15', 3, 900000),
(64, 3, 5, 'Anggita', 'fitridesiana093@gmail.com', '2023-06-13', 3, 210000),
(65, 2, 2, 'Dani', 'fitridesiana093@gmail.com', '2023-06-07', 5, 500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasan`
--

CREATE TABLE `ulasan` (
  `ID_Ulasan` int(11) NOT NULL,
  `ID_Detail` int(11) DEFAULT NULL,
  `Nama_User` varchar(255) NOT NULL,
  `Ulasan` varchar(255) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ulasan`
--

INSERT INTO `ulasan` (`ID_Ulasan`, `ID_Detail`, `Nama_User`, `Ulasan`, `Rating`) VALUES
(1, 1, 'Fitri', 'Bagus banget destinasi nya', 3),
(2, 1, 'Ranti', 'Yang ape lah', 5),
(3, 2, 'Anaf', 'Bagus banget pemandangannya :)', 5),
(4, 2, 'Yanti', 'Good ', 5),
(5, 1, 'Tati', 'Keren banget', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_Admin`);

--
-- Indeks untuk tabel `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`ID_Destinasi`),
  ADD KEY `ID_Kategori` (`ID_Kategori`);

--
-- Indeks untuk tabel `detail_destinasi`
--
ALTER TABLE `detail_destinasi`
  ADD PRIMARY KEY (`ID_Detail`),
  ADD KEY `ID_Destinasi` (`ID_Destinasi`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`ID_Gambar`),
  ADD KEY `ID_Detail` (`ID_Detail`);

--
-- Indeks untuk tabel `kategori_destinasi`
--
ALTER TABLE `kategori_destinasi`
  ADD PRIMARY KEY (`ID_Kategori`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`ID_Pemesanan`),
  ADD KEY `ID_Destinasi` (`ID_Destinasi`),
  ADD KEY `ID_Admin` (`ID_Admin`);

--
-- Indeks untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`ID_Ulasan`),
  ADD KEY `ID_Destinasi` (`ID_Detail`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_Admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `ID_Destinasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `detail_destinasi`
--
ALTER TABLE `detail_destinasi`
  MODIFY `ID_Detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
  MODIFY `ID_Gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT untuk tabel `kategori_destinasi`
--
ALTER TABLE `kategori_destinasi`
  MODIFY `ID_Kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `ID_Pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `ID_Ulasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `destinasi`
--
ALTER TABLE `destinasi`
  ADD CONSTRAINT `destinasi_ibfk_1` FOREIGN KEY (`ID_Kategori`) REFERENCES `kategori_destinasi` (`ID_Kategori`);

--
-- Ketidakleluasaan untuk tabel `detail_destinasi`
--
ALTER TABLE `detail_destinasi`
  ADD CONSTRAINT `detail_destinasi_ibfk_3` FOREIGN KEY (`ID_Destinasi`) REFERENCES `destinasi` (`ID_Destinasi`);

--
-- Ketidakleluasaan untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD CONSTRAINT `gambar_ibfk_1` FOREIGN KEY (`ID_Detail`) REFERENCES `detail_destinasi` (`ID_Detail`);

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`ID_Destinasi`) REFERENCES `destinasi` (`ID_Destinasi`),
  ADD CONSTRAINT `pemesanan_ibfk_3` FOREIGN KEY (`ID_Admin`) REFERENCES `admin` (`ID_Admin`);

--
-- Ketidakleluasaan untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `ulasan_ibfk_1` FOREIGN KEY (`ID_Detail`) REFERENCES `detail_destinasi` (`ID_Detail`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
