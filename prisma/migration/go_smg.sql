-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Des 2023 pada 16.05
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go_smg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_us`
--

CREATE TABLE `contact_us` (
  `id_contact` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `create_user`
--

CREATE TABLE `create_user` (
  `id_user` int(12) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `destination`
--

CREATE TABLE `destination` (
  `id_destination` int(12) NOT NULL,
  `name_destination` varchar(50) NOT NULL,
  `loc_destination` varchar(255) NOT NULL,
  `desc_destinatiom` longtext NOT NULL,
  `open_hours` time NOT NULL,
  `close_hours` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `destination`
--

INSERT INTO `destination` (`id_destination`, `name_destination`, `loc_destination`, `desc_destinatiom`, `open_hours`, `close_hours`) VALUES
(1, 'Lawang Sewu', 'Jl MT. Haryono, Bubakan', 'Lawang Sewu is an office building located opposite Tugu Muda, Semarang City, Central Java, Indonesia, which was built as the headquarters of the Nederlandsch-Indische Spoorweg Maatschappij.', '07:00:00', '21:00:00'),
(2, 'Kuil Sam Poo Kong', 'Jl. Simongan No.129, Bongsari', 'Sam Poo Kong Temple is a historical temple that was built as a place of worship for the followers of the Confucian religion and is also a historical tourist destination. Sam Poo Kong Temple is located near Tugu Muda, which serves as an important landmark in the history of Semarang.', '08:00:00', '20:00:00'),
(3, 'Candi Gedong Songo', 'Jl. Ke Candi Gedong Songo, Candi, Krajan', 'Gedong Songo Temple is a temple complex located in the highlands on the slopes of Mount Ungaran, Central Java, Indonesia, which was built as a place of Hindu worship. The temple complex consists of nine temples scattered around the mountainous area.', '06:30:00', '18:00:00'),
(4, 'Taman Bunga Celosia', 'Jl. Wisata Candi Gedong Songo Km 0,5, Bandungan', 'Celosia Flower Park is a flower garden filled with the beauty of celosia flowers that bloom all year round and offers a mesmerising experience for visitors looking for natural tranquillity in the middle of the city', '08:00:00', '17:00:00'),
(5, 'Curug Lawe Benowo', 'Desa Kalisidi, Ungaran Barat', 'Curug Lawe Benowo is a waterfall known for its natural beauty. Surrounded by tropical forest, the waterfall offers an interesting journey through a winding path. The clarity of the water and the sound of its gurgling create a calming atmosphere.', '08:00:00', '14:00:00'),
(6, 'Dusun Semilir', 'Jl. Soekarno Hatta No.49, Ngemple', 'Dusun Semilir is a village located near Tugu Muda, Semarang City, Central Java, Indonesia. It was originally the place where the Dutch East Indies Railway Compan (Nederlandsch-Indische Spoorweg Maatschappij) established an office building known as \"Dusun Semilir\" in the early 20th century.', '08:00:00', '19:00:00'),
(7, 'Kopeng Treetop Adventure', 'Jl. Raya Kopeng, Getasan', 'Kopeng Treetop Adventure is an adventure park located in Kopeng, Central Java, Indonesia. The park is located in the middle of the forest and offers various adventure activities such as treetop walking, flying fox, and various other challenges at high altitude.\', '08:30:00', '17:00:00'),
(8, 'Museum Ambarawa', 'Jl. Stasiun No.1, Ambarawa', 'Museum Ambarawa is a building that was originally used as a railway depot by the Nederlandsch-Indische Spoorwe Maatschappij. The building was later converted into a museum that displays a collection of trains, railway equipment, and the history of railways in Indonesia.', '08:00:00', '16:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indeks untuk tabel `create_user`
--
ALTER TABLE `create_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id_destination`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `destination`
--
ALTER TABLE `destination`
  MODIFY `id_destination` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
