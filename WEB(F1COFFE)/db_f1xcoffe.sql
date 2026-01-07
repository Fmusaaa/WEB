-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Waktu pembuatan: 07 Jan 2026 pada 10.47
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_f1xcoffe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`) VALUES
(1, 'zayn', 'zqayn@gmail.com', '08958937964', 'tgwgyds', '2025-12-27 08:57:55'),
(2, 'zayn', 'zayn@gmail.com', '08976643667367', 'yeashh', '2025-12-27 13:05:31'),
(3, 'ygv', 'ygygyu@gmail.com', '797696689087', 'yesgdy', '2026-01-05 13:20:14'),
(4, 'isa', 'isa@gmail.com', '083044802740', 'enak banget', '2026-01-07 16:31:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `nama`, `alamat`, `password_hash`, `hp`, `created_at`) VALUES
(1, 'uu', 'uihbchbhj4', 'shbshuasbu', '$2y$10$j45hytH/sIoDFoawrrtzfurUSgdazg7IAqpzvXFiTEIxitCWSJbJ.', '82737388271881', '2025-12-26 20:26:32'),
(2, 'AZK', 'ISIDBI', 'OIHDIUBEIU', '$2y$10$Wrw5UmowgZbtqkec0R8xme7MvFr11J73q4guSECWOxb/V6ueyLvw2', '7848738277429', '2025-12-26 20:27:01'),
(3, 'ZAYN', 'VGYFTUUFYYJ', 'SGUYSV', '$2y$10$wdakU/wE1o/OqofT.4VKtuVTgkPQuYVif7bKFT7dLOseLxC0VZete', '098479597389', '2025-12-27 08:15:13'),
(4, 'adit', 'adit', 'batang', '$2y$10$H5MbTF/C.Dsej0QINNmY9u0K5p/BH8NAHi6971Mn7fObqo8RBM3dO', '0897254862763975', '2025-12-29 21:31:27'),
(5, 'MUSA16', 'FADH MUSA', 'JEPARA', '$2y$10$E59ZfrdWcF4r7tsb/xlKKuZRi6XBnVO1zqDyUQxLXvy4pxQN4efG6', '089603589346', '2026-01-05 12:48:33'),
(6, 'FMUSA16', 'FADHLILLAH MUSA ULIL ALBAB', 'JEPARA', '$2y$10$z62t.elyGdffpCJAh8RVaeT4Kp80UiSY5ddTSKF0FhM9ppdWdGovm', '08383082739', '2026-01-05 13:01:05'),
(7, 'isazyy16', 'ISA', 'Jepara', '$2y$10$8giqVNXQe8TD9ExLVGALYOj1V4izczJUbv1jK3rct4J5JQZgWdAki', '08393972682', '2026-01-07 16:30:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
