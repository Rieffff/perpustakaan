-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Apr 2023 pada 11.19
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smpn1sit_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(225) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `header` varchar(225) NOT NULL,
  `isi` text NOT NULL,
  `status` enum('on','off') NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `slug`, `judul`, `header`, `isi`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'asdtrvsvgdef', 'coba', 'header.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'on', 1, '2023-01-31 06:40:52', '2023-03-20 07:42:48'),
(12, 'plZQksdhDi', 'quibusdam-nisi-non-velit-repellat-itaque', 'header.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.', 'on', 1, '2023-04-03 08:39:09', '2023-04-03 08:39:09'),
(13, 'xRGKWJl9e7', 'consequatur-amet-dolorem-quam-voluptas-voluptas-illum', 'header.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.', 'on', 1, '2023-04-03 08:39:09', '2023-04-03 08:39:09'),
(14, 'Scmhg6vlk7', 'eum-tempore-corporis-necessitatibus-quos-atque', 'header.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.', 'on', 1, '2023-04-03 08:39:09', '2023-04-03 08:39:09'),
(15, 'QHo6WmnZvg', 'eos-eos-necessitatibus-qui-quia-quo', 'header.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.', 'on', 1, '2023-04-03 08:39:09', '2023-04-03 08:39:09'),
(16, 'zfOjXsvKeD', 'aut-iste-non-quia-quas', 'header.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.', 'on', 1, '2023-04-03 08:39:09', '2023-04-03 08:39:09'),
(17, 'vGNhIo8Lhr', 'et-fugit-eos-numquam-quo', 'header.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.', 'on', 1, '2023-04-03 08:39:09', '2023-04-03 08:39:09'),
(18, 'HQetNf5kUs', 'ut-explicabo-quasi-repellendus', 'header.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.', 'on', 1, '2023-04-03 08:39:09', '2023-04-03 08:39:09'),
(19, 'Ktg571b9st', 'fugit-inventore-facere-sed-fugit-maiores-qui', 'header.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.', 'on', 1, '2023-04-03 08:39:09', '2023-04-03 08:39:09'),
(20, 'yU8OrCDqrF', 'veniam-et-consequatur-id-laudantium', 'header.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.', 'on', 1, '2023-04-03 08:39:09', '2023-04-03 08:39:09'),
(21, 'fjOX7IegOM', 'sit-aliquid-sit-doloremque-et-reprehenderit-dolorem-et', 'header.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.', 'on', 1, '2023-04-03 08:39:09', '2023-04-03 08:39:09'),
(22, 'consequatur-aut-totam-eius-officia-molestiae-rerum-in-quia', 'perspiciatis-veniam-animi-amet-vel-sed-quis', 'header.jpg', 'Alice, seriously, \'I\'ll have nothing more to be done, I wonder?\' And here Alice began to feel very uneasy: to be a great hurry. \'You did!\' said the voice. \'Fetch me my gloves this moment!\' Then came.', 'on', 1, '2023-04-03 08:42:30', '2023-04-03 08:42:30'),
(23, 'possimus-quod-quo-eum-sed-ratione-quidem-iusto', 'quae-repellendus-vitae-repellat-voluptas-maxime', 'header.jpg', 'Queen till she was going to be, from one end to the other paw, \'lives a Hatter: and in his turn; and both creatures hid their faces in their mouths. So they had to sing \"Twinkle, twinkle, little.', 'on', 1, '2023-04-03 08:42:30', '2023-04-03 08:42:30'),
(24, 'sit-aspernatur-veritatis-voluptatibus-dolorem-facilis', 'voluptates-enim-sit-et-consectetur', 'header.jpg', 'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she heard a voice she had never been in.', 'on', 1, '2023-04-03 08:42:30', '2023-04-03 08:42:30'),
(25, 'sit-dolorem-quia-est-earum-veniam-et-in', 'odit-earum-dolorem-modi-quo', 'header.jpg', 'But they HAVE their tails in their proper places--ALL,\' he repeated with great curiosity. \'Soles and eels, of course,\' he said to the dance. Would not, could not make out what she was ready to talk.', 'on', 1, '2023-04-03 08:42:30', '2023-04-03 08:42:30'),
(26, 'beatae-omnis-aut-dolorum-aut-dolorem', 'deleniti-consequatur-ullam-dolores-quam-autem', 'header.jpg', 'Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never went to school in the lap of her knowledge. \'Just think of nothing better to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it was.', 'on', 1, '2023-04-03 08:42:31', '2023-04-03 08:42:31'),
(27, 'repudiandae-voluptatem-consequuntur-quia-consequatur-enim-fuga-excepturi-illo', 'assumenda-recusandae-accusantium-est-qui-molestiae', 'header.jpg', 'I think--\' (for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the door of the accident, all except the Lizard, who seemed too much frightened to say which), and they.', 'on', 1, '2023-04-03 08:42:31', '2023-04-03 08:42:31'),
(28, 'quis-eum-illum-sit-expedita-nobis', 'non-magnam-est-consequatur-aliquid', 'header.jpg', 'BOOTS AND SHOES.\' the Gryphon replied very gravely. \'What else had you to get out again. That\'s all.\' \'Thank you,\' said Alice, seriously, \'I\'ll have nothing more to be two people. \'But it\'s no use.', 'on', 1, '2023-04-03 08:42:31', '2023-04-03 08:42:31'),
(29, 'non-est-aut-consequatur', 'minima-cum-nostrum-ipsa-minus-quis-quis', 'header.jpg', 'Alice. \'It must have got altered.\' \'It is a long hookah, and taking not the smallest idea how confusing it is all the children she knew, who might do very well to say when I got up very sulkily and.', 'on', 1, '2023-04-03 08:42:31', '2023-04-03 08:42:31'),
(30, 'ad-amet-praesentium-at-ea-sapiente-est-excepturi', 'est-libero-ratione-autem-delectus', 'header.jpg', 'ARE a simpleton.\' Alice did not notice this last remark. \'Of course it is,\' said the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how she would gather about her any more if you\'d rather.', 'on', 1, '2023-04-03 08:42:31', '2023-04-03 08:42:31'),
(31, 'laudantium-doloremque-a-dolorem-nam-voluptate-quaerat-delectus-nesciunt', 'quisquam-iusto-similique-facilis-est-eveniet-dolores-facere', 'header.jpg', 'NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, as she could have been changed several times since then.\' \'What do you call him Tortoise, if he had a vague sort of mixed.', 'on', 1, '2023-04-03 08:42:31', '2023-04-03 08:42:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(6) NOT NULL,
  `ISBN` varchar(25) DEFAULT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `thn_terbit` varchar(5) DEFAULT NULL,
  `stok` int(5) DEFAULT NULL,
  `di_pinjam` int(5) DEFAULT NULL,
  `id_ketegori` int(6) DEFAULT NULL,
  `id_rak` int(16) DEFAULT NULL,
  `id_kolom` int(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `ISBN`, `judul`, `pengarang`, `penerbit`, `thn_terbit`, `stok`, `di_pinjam`, `id_ketegori`, `id_rak`, `id_kolom`, `created_at`, `updated_at`) VALUES
(1249, '9786022422105', 'FantasTeen', 'Ditta Nakka Soleha', 'PT Mizan Pustaka', '2013', 0, 0, 4, 2, 1, NULL, '2020-09-24 12:50:38'),
(1250, '9792277937', 'City Of The Beasts', 'Isabell Allenda', 'PT Gramedia Pustaka Utama', '2014', 0, 0, 4, 2, 1, NULL, '2020-09-24 12:51:30'),
(1251, '0', 'Tereliye(Pulang)', 'Tereliye', 'Republika Penerbit', '2015', 0, 0, 4, 2, 1, NULL, '2020-09-24 12:52:34'),
(1252, '9793600292', 'Lovely Luna', 'Upi Avianto', 'Gagas Media', '2004', 1, 0, 4, 2, 1, NULL, '2020-09-24 12:54:05'),
(1253, '9786021306482', 'Rumah Seribu Malaikat', 'Yuli Badawi', 'PT Mizan Publika', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1254, '9789792278132', 'Sunshine Becomes You', 'Ilana Tan', 'PT Gramedia Pustaka Utama', '2012', 1, 0, 4, 2, 1, NULL, '2020-09-24 12:54:57'),
(1255, '9786020213859', 'Lee Child One Shot', 'Jack Reacher', 'PT Elex Media Komputindo', '2013', 1, 0, 4, 2, 1, NULL, '2020-09-24 12:57:42'),
(1256, '9789792777499', 'Yotsuba', 'Kiyohiko Azuma', 'PT Elex Media Komputindo', '2007', 0, 0, 4, 2, 1, NULL, '2020-09-24 12:59:08'),
(1257, '9786022910787', 'Gelandangan Dikampung Sendiri', 'Emha Ainun Nadjib', 'PT Bentang Pustaka', '2015', 0, 0, 4, 1, 1, NULL, '2020-09-24 12:59:56'),
(1258, '97860208062', 'Senja Yang Mendadak Bisu', 'Lugina W.G.dkk', 'De Teens', '2015', 0, 0, 4, 2, 1, NULL, '2020-09-24 12:58:23'),
(1259, '9786020254487', '10 Tahun Lagi Lo Mau Jadi Apa?', 'Rendi Santoso', 'PT  Elex Media Komputindo', '2014', 1, 0, 4, 2, 1, NULL, '2020-09-24 13:01:22'),
(1260, '9797803538', 'Moonlight Waltz', 'Venny Wong', 'Gagas Media', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1261, '8178764390', 'As You Like It', 'William Shake Speare', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1262, '-', 'Musim Baru', 'Roidah', 'Erlangga', '2012', 0, 0, 4, NULL, NULL, NULL, NULL),
(1263, '9797800598', 'Cinta Brontosaurus', 'Raditya Dika', 'Gagas Media', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1264, '9786020284859', 'Betapa Rasullah Merindukanmu', 'Abdilah.F Hasan', 'PT Elex Media Komputindo', '2013', 0, 0, 4, NULL, NULL, NULL, NULL),
(1265, '9792618031', 'Humor Van Java', ' Aziz Megap-Megap', 'Citra Media', '2011', 0, 0, 4, NULL, NULL, NULL, NULL),
(1266, '-', 'Fatimah Az-Zahza', 'Sibel Eraslon', 'Kaysa Media', '2012', 0, 0, 4, NULL, NULL, NULL, NULL),
(1267, '-', 'Morbito', 'Nahoko Uehashi', 'PT Matahari', '20090', 0, 0, 4, NULL, NULL, NULL, NULL),
(1268, '979752213x', 'Hari-Hari Di Rainnesthood', ' Sri Izzati', 'PT Mizan Bunaya Kreativa', '2005', 0, 0, 4, NULL, NULL, NULL, NULL),
(1269, '9786029633856', 'Genk Brodol', 'Hapie Joseph Aloysia', 'Second Hope', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1270, '9799731295', 'Sekali Peristiwa DiBanten Selatan', ' Pramoedya Ananta  Toer', ' Lentera Dipantara', ' 2014', 0, 0, 4, NULL, NULL, NULL, NULL),
(1271, '9797444638', 'Boneka Kuntilanak', 'Ghost Penchake', ' PT Transmedia', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1272, '9789792282078', 'Misteri Pondok Terbakar', 'Enid  Blyto', 'PT Gramedia Pustaka Utama', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1273, '9786020298115', 'Assasination Classroom', 'Yusimastsui', 'PT Elex Media Komputindo', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1274, '-', 'Misteri DNA Manusia', 'Abdul Kahfi Syahtra', 'Flashbooks', '2011', 0, 0, 4, NULL, NULL, NULL, NULL),
(1275, '-', 'Aline s Sky', 'Rina Lubis', 'De Teens', '2013', 0, 0, 4, NULL, NULL, NULL, NULL),
(1276, '9789790636095', 'Misteri Topeng Petaka', 'Rasyid Akbari', 'Zikrul Hakim', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1277, '-', 'Toilet 150', 'Eni Martini', 'Najah', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1278, '-', 'Negeri Linatasan Petir', 'Gerson Poyk', 'Erlangga', '2009', 0, 0, 4, NULL, NULL, NULL, NULL),
(1279, '9789799107374', 'Crush or Crash', 'Iruka Danishwara', 'PT Gramedia', '2024', 0, 0, 4, NULL, NULL, NULL, NULL),
(1280, '6022201705', 'Surat Kecil Untuk Ayah', 'Becandra', 'Bukune', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1281, '9789799107088', 'Perjalanan Sang Waktu', 'Leni Siti Hamidah', 'PT Sindur Prees', '2008', 0, 0, 4, NULL, NULL, NULL, NULL),
(1282, '9789798098439', 'Rumah Tina Kebanjiran', 'Agus Marioto', 'CV.Pamularsih', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1283, '-', 'Rainbow Prismatic Girl', 'Nahakara', 'PT Gramedia', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1284, '-', 'Putri Cinderella', 'Tika Ikranegara', 'CV. Pustaka Agung Harapan', '2007', 0, 0, 4, NULL, NULL, NULL, NULL),
(1285, '6022200784', 'Sherlock  Begeins a Study In Scarlet', 'Sir Arthur Conan Dyle', 'Bukune', '2012', 0, 0, 4, NULL, NULL, NULL, NULL),
(1286, '9789796857388', 'Janji Nyai Undang', 'Menuk Hordaniwati', 'Badan Pengembangan & Pembinaan Bahasa Kementrian P', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1287, '9794193402', 'Masyitoh', 'Ajib Rosidi', 'Pustaka Jaya', '2006', 3, 0, 4, NULL, NULL, NULL, NULL),
(1288, '-', 'Siapa Takut Jatuh Cinta', 'Maria Cecilia', 'Sinar Matahari', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1289, '9786028092559', 'Belajar Naik Sepeda', 'Asrori', 'CV.Pamularsih', '-', 2, 0, 4, NULL, NULL, NULL, NULL),
(1290, '978979955047', 'Anugrah Itu Bernama Wahyu', 'H.A. Asionto', 'CV.Menara Mega Perkasa', '2015', 0, 0, 4, NULL, NULL, NULL, NULL),
(1291, '9786021710609', 'Menjadi Milyader Lewat Dunia Game', 'Candra Zebeh Aji', 'Bounabooks', '2012', 0, 0, 4, NULL, NULL, NULL, NULL),
(1292, '-', 'Kumpulan Cerita Mancanegara', 'Tjutjuk.WB', 'Karya Gemilang Utama', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1293, '-', 'Pernikahan Kakakku', 'Cynthia Marshall Rich', 'Mitra Utama', '1993', 3, 0, 4, NULL, NULL, NULL, NULL),
(1294, '97860298222144', 'Dalam Mihrab Cinta', 'Habiburrahman El Shirazy', 'Ihwah Publishing', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1295, '-', 'Me and You Versus The World', 'Stanley Meulen', 'PT Wahyu Media', '2012', 0, 0, 4, NULL, NULL, NULL, NULL),
(1296, '9786029442052', 'Bawang Merah & Bawang Putih', 'Berta', 'Arawana Sungai Kapuas', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1297, '9792601058', 'Lingkar Tanah Lingkar Air', 'Ahmad Tohari', 'Hikayat Publishing', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1298, '-', 'Sebuah Cinta Sekolah Rakyat', 'Tati Tjitrawasita', 'CV.Indocamp', '1976', 1, 0, 4, NULL, NULL, NULL, NULL),
(1299, '9786029397031', 'Lampu Minyak Lintang', 'Saniya Millatina', 'PT Bentang Pustaka', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1300, '9789791493048', 'Kaos Kaki Ajaib', 'Jenta Puspariki', 'PT Sindur Prees', '2008', 3, 0, 4, NULL, NULL, NULL, NULL),
(1301, '9879791906005', 'Quo Vadis Hari Jadi Kabupaten Situbondo', 'Drs.Edy Burhan Arifin S.U dkk', 'Bappekab Situbondo', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1302, '9786029432954', 'My Rival Is a Village Girl', 'Kinkin.M.pd', 'CV.Abdi Zam Zam', '2015', 2, 0, 4, NULL, NULL, NULL, NULL),
(1303, '9786028567138', 'Jangan Gantungin Gue', 'Rizka Chika', 'Jaring Pena', '2010', 2, 0, 4, NULL, NULL, NULL, NULL),
(1304, '9780629899108', 'Beauty and The Bus', 'M.Faizi', 'Amper Media', '2013', 2, 0, 4, NULL, NULL, NULL, NULL),
(1305, '9791087024', 'Iblis', 'Mohammad Diponegoro', 'CV.Moutindo Mitra Abadi', '2006', 2, 0, 4, NULL, NULL, NULL, NULL),
(1306, '-', 'Demikian Pada Mulanya', 'Yusakh Ananda', 'PT Dunia Pustaka Jaya', '1980', 4, 0, 4, NULL, NULL, NULL, NULL),
(1307, '9794180637', 'Dibawah Lindungan Kabah', 'Hamkah', 'PT Bulan Bintang', '2005', 4, 0, 4, NULL, NULL, NULL, NULL),
(1308, '979221519x', 'Dokter Pelukis  dan Sicwle Plin Plan', 'Ken Terate', ' PT Gramedia Pustaka Utama', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1309, '9799190047', 'Ballada Orang-Orang Tercinta', 'Rendra', 'PT Dunia Pustaka Jaya', '1957', 4, 0, 4, NULL, NULL, NULL, NULL),
(1310, '9792015035', 'Lord Baden Powell', ' Animik World', ' PT Elex Media Komputindo', '2000', 1, 0, 4, NULL, NULL, NULL, NULL),
(1311, '9789796658196', 'Hendra Pahlawan Cilik', 'Tunggara', 'Angkasa Bandung', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1312, '9786373602', 'Marie Curie', 'Wan Ie So', 'Newton Publishing', '1995', 1, 0, 4, NULL, NULL, NULL, NULL),
(1313, '9789790632844', 'Tuduhan Yang Tidak Terbukti', 'Gol A Gong & Tias Tatanka', 'Bestari Kids', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1314, '9789790633643', 'Senyuman Istana Bunga', 'Bambang Joko Susilo', 'Bestari Kids', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1315, '9789796857265', 'Langit Kelabu Diatas Kali Kuto', 'Alem Savero Reyhan', 'Badan Pengembangan & Pembinaan Bahasa Kementrian P', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1316, '97910870401', 'Sebuah Episode', 'Hanum Safnans', 'Tifa Publishing House', '2000', 1, 0, 4, NULL, NULL, NULL, NULL),
(1317, '9799585775', 'Si Jalu', 'Santosa', 'PT Dian Arienta', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1318, '9789790669543', 'Dhea s Nightmare', 'Ardelia Parcihita Faza', 'PT Mizan Pustaka', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1319, '9789790482081', 'Kegigihan Anak Beruang', 'Abdul Majid', 'CV.Aneka Ilmu', '2008', 2, 0, 4, NULL, NULL, NULL, NULL),
(1320, '8175264625', 'Twafth Night', 'William Shake Speare', 'Rohan Book Company', '-', 2, 0, 4, NULL, NULL, NULL, NULL),
(1321, '8178264587', 'The Merchant Of Venice', 'William Shake Speare', 'Rohan Book Comapany', '2004', 2, 0, 4, NULL, NULL, NULL, NULL),
(1322, '8178264560', 'Romeo and Juliet', 'William Shake Speare', 'Rohan Book Company', '2004', 2, 0, 4, NULL, NULL, NULL, NULL),
(1323, '8178264595', 'The Tempest', 'william ShaKe Speare', 'Rohan Book Company', '2004', 2, 0, 4, NULL, NULL, NULL, NULL),
(1324, '8178264501', 'Measure For Measure', 'William Shake Speare', 'Rohan Book Company', '2004', 2, 0, 4, NULL, NULL, NULL, NULL),
(1325, '8178263823', 'Silas Marnei', 'George Eliot', 'Rohan Book Company', '2004', 2, 0, 4, NULL, NULL, NULL, NULL),
(1326, '8178263726', 'Hard Times', 'Charles Dleken', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1327, '8178263882', 'Sense and Sensibility', 'jane Austen', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1328, '8178264382', 'Anthony and Cleopatra', 'William Shake Speare', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1329, '8178264412', 'Hamlet', 'William Shake Speare', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1330, '8183412026', 'The Swiss Family Robinen', 'Johann Rudolf Wyss', ' Rohan Book Company', '2004', 2, 0, 4, NULL, NULL, NULL, NULL),
(1331, '817826384x', 'King Salomon s Mines', 'H. Rider Haggard', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1332, '818341205x', 'Herdi', 'Johanna Spyri', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1333, '8178264455', 'Julius Caesar', 'William Shake Speare', 'Rohan Book Compan', '2004', 2, 0, 4, NULL, NULL, NULL, NULL),
(1334, '8178264498', 'Macabeth', 'William Shake Speare', 'Rohan Book Speare', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1335, '8183412009', 'The Adventure of Hucklberry Finn', 'Mark Twain', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1336, '9792231528', 'Lotta', ' Listiana Srisanti', 'PT Gramedia Pustaka Utama', '1983', 1, 0, 4, NULL, NULL, NULL, NULL),
(1337, '9796028236898', 'Catatan Hati Oki Setiana Dewi', 'Oki Setiana Dewi', 'PT Mizan Pustaka', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1338, '9793092424', 'Sepasang Mata Indah', 'Kirjdomuljo', 'Gama Media', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1339, '9789790633773', 'Dompet Membawa Nikmat', 'Gol A Gong dkk', ' Lestari', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1340, '9784193380', 'Dari Hari Ke Hari', 'H. Mahbud Djunaidi', 'PT Dunia Pustaka Jaya', '1975', 2, 0, 4, NULL, NULL, NULL, NULL),
(1341, '6022496543', 'Santri Bertanya', 'Ustadz Ahmad Zahrudin M Nafis', ' PT Buana Ilmu Populer', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1342, '978-6022502913', 'Dari Lembah Cita-Cita', 'Prof.Dr.Hamka', 'Gema Insani', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1343, '979620309040', 'Catatan Orang Gila', 'Han Gagas', 'PT Gramedia Pustaka Utama', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1344, '9786029159462', 'Assasins Creed Brotherhood', 'Oliver Bowden', 'PT Ufuk Publishing House', '2011', 2, 0, 4, NULL, NULL, NULL, NULL),
(1345, '9786021306260', 'Mahkota Cahaya Untuk Bunda Ayah', 'Fifa Dila', 'PT Mizan Publika', '2014', 2, 0, 4, NULL, NULL, NULL, NULL),
(1346, '9786027538922', 'Taubat Para Pendosa', 'Jubair Tablig Wahid', 'Cable Book', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1347, '9789792293593', 'Berjalan Diatas Cahaya', 'Hanum Salsabila Rais dkk', 'PT Gramedia Pustaka Utama', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1348, '9789790661455', 'Jejawar Mawar Hilang', 'Herlian Tina Utomo', 'PT Mizan Pustaka', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1349, '978602874755', 'Cinta Monyet Never Forget', 'Bayu Insani Triani Retro dkk', 'Leutika', '2016', 1, 0, 4, NULL, NULL, NULL, NULL),
(1350, '97960269122151', 'Ily From 38.000 ft', 'Tisa Ts', 'Loveable', '2016', 1, 0, 4, NULL, NULL, NULL, NULL),
(1351, '9789797094338', 'Nagara Krtagama', 'Uthawi', 'PT Kompas Media Nusantara', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1352, '9794070653', 'Layar Berkembang', 'St Takdir Alisyah Bana', 'Balai Pustaka', '1936', 3, 0, 4, NULL, NULL, NULL, NULL),
(1353, '9786028811071', 'Cerita Sepanjang Musim', 'Lusy M. Montgomery', 'PT Bentang Pustaka', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1354, '978602949840', 'Sepatu Dahlan', 'Khirsna Pabichara', 'PT Mizan Publika', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1355, '8178264102', 'Kid Nepped', 'Robert Louis Stevenson', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1356, '9791087009', 'Sampah Bulan Desember', 'Hamsad Rangkuti', 'Tifa Publishing House', '2000', 4, 0, 4, NULL, NULL, NULL, NULL),
(1357, '9786029602692', 'Menggapai Mimpi', 'Herlina P Dewi dkk', 'Stiletto Book', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1358, '6027702001', 'True Love', 'Vivie Hardika', 'Eazy Book', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1359, '9795619489', 'Nurani Rina', 'Dian Yasmina Fajri', 'Gema Insani', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1360, '9789792732382', 'Muhammad Sebagai Pedagang', 'Ippo Santosa Andelus Kholifah', 'PT Elex Media KomputIndo', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1361, '9786029442076', 'Kumis Tipis Denis', 'Berta', 'CV.ArwanaSungai Kapuas', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1362, '9786029441130', 'Si Pitung', 'Neny Anggraeni', 'CV Telaga Tirta Bening', '2015', 2, 0, 4, NULL, NULL, NULL, NULL),
(1363, '9786029455175', 'From a Hobby To a Library', 'Berthindara S.R', 'CV.Potensi Titian Siswa', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1364, '9786021389225', 'Kumpulan Cerita Remaja', 'Mohammad Isrul dkk', 'Kementrian Pendidikan & Kebudayaan Direktorat Jend', '2016', 6, 0, 4, NULL, NULL, NULL, NULL),
(1365, '9789791738507', 'Bulan sabit Diatas Eiffel', 'Abd.Al Manik', 'PT Mizan Pustaka', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1366, '9789790212497', 'Peradaban Jepang', 'Suparti', 'PT Bengawan Ilmu', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1367, '9799566002', 'Derai-Derai Cemara', 'Chairil Anwar', 'PT Cakrawala Budaya Indonesia', '1999', 3, 0, 4, NULL, NULL, NULL, NULL),
(1368, '9794033960', 'Langit dan Bumi Sahabat Kami', 'Nh.Dini', 'PT Dunia Pustaka Jaya', '1979', 1, 0, 4, NULL, NULL, NULL, NULL),
(1369, '9786020202204', 'Gelombang Lautan Jiwa', 'Anta Samsara', 'PT Elex Media Komputindo', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1370, '9792601015', 'Domba-Domba Revolusi', 'B.Soelarto', 'Hikayat Publishing', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1371, '9789792622706', 'Aku Sadar Aku Gila', 'Bohril Hidayat Lubis', 'Zikrul Hakim', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1372, '9786027999176', 'Kakek Penjaga Palang Kereta', 'Sherina Salsabila', 'Zettu', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1373, '9793604026', 'Ayat-Ayat Cinta', 'Habiburrahman EL Shirazy', 'Republika', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1374, '9794193399', 'Petualangan Tom Sawyer', 'Djoko Lelono', 'PT Dunia Pustaka Jaya', '1973', 4, 0, 4, NULL, NULL, NULL, NULL),
(1375, '9795862751', 'Sukses Melakukan Prestasi', 'Rhenald Kasali', 'PT Gramedia Pustaka Utama', '2001', 1, 0, 4, NULL, NULL, NULL, NULL),
(1376, '9797808041', 'Bitter Winner', 'Mita Miranti', 'Gagas Media', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1377, '9792559892', 'Odah dan Cerita Lainnya', 'Mohammad Diponegoro', 'Hikayat Publishing', '2006', 5, 0, 4, NULL, NULL, NULL, NULL),
(1379, '9786022670360', 'Hari Demi Hari', 'Yuli Sartika', 'Jogja Great Publisher', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1380, '9789790638143', 'Cinta Dan Harapan Dimasa Tua', 'Naqiyyah Syam', 'Jendela', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1381, '979228829', 'Menggapai Karier', 'Jacke Confield dkk', 'PT Gramedia Pustaka Utama', '2007', 2, 0, 4, NULL, NULL, NULL, NULL),
(1382, '9786021945698', 'Kotak Ajaib Pantai', 'Susmini Indriani', 'CV Juara Asia Utama', '2015', 0, 0, 4, NULL, NULL, NULL, NULL),
(1383, '9789790667501', 'The Math Lover', 'Muhammad alif Aasha', 'PT Mizan Pustaka', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1384, '9794191310', 'Pulang', 'Toha Mohtar', 'PT Dunia Pustaka Utama', '1957', 1, 0, 4, NULL, NULL, NULL, NULL),
(1385, '9789790633681', 'Pucuk Dicinta Ulam Pun Tiba', 'Gol A Gong', 'Bestari', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1386, '9789797529000', 'La Ahzan For Teens Love', ' Sabil El-Maruf Fie', 'PT Mizan Pustaka', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1387, '9789791493055', 'Kugapai Impianku', ' Rizka Nurul Amanah H', 'PT Sindur Press', '2008', 2, 0, 4, NULL, NULL, NULL, NULL),
(1388, '978602788178', 'Dont Worry We Are Ghost', 'Jasmine Asyahida', 'Buku Pintar', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1389, '9789791706120', 'Kendedes', 'Wiwie Widyawati R', 'Pura Pustaka', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1390, '978979226806', 'Love Lies', 'Christina Juzwar', 'PT Gramedia Pustaka Utama', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1391, '9789790664029', 'Kecil-Kecil Punya Karya', 'Kirana Mahdiah', 'PT Mizan Pustaka', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1393, '9797494875', 'Catatan Pendek Untuk Cinta Yang Panjang', 'Boy Candra', 'Media Kita', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1395, '97897929337008', '100 Kisah Kocak Yang Membuat Bijak', 'Xavier Auentin Pranata', 'ANDI', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1397, '8178264528', 'Othello', 'William Shake Speare', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1398, '9789790482067', 'Kisah Hidup Di Perbatasan', 'Alvin Majid', 'CV Aneka Ilmu', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1399, '9792224068', 'Lupus ABG', 'Hilma dan Baim Lebon', 'PT Gramedia Pustaka Utama', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1400, '9786027888', 'Edensor', 'Andrea Kirata', 'Mizan Media Utama', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1401, '9786027975422', 'Perjalanan Sihir', 'Bintang Belia', 'PT Bentang Pustaka', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1402, '9793391081', 'Titip Rindu Buat Ibu', 'Novia Syahidah', 'PT Mizan Pustaka', '2003', 1, 0, 4, NULL, NULL, NULL, NULL),
(1403, '3083700510', 'Membangun Karakter Siswa', 'Drs Hudiyono MSI', 'Erlangga', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1404, '9786028851350', 'Faquella Girls', 'Annisa R Arigataya', 'PT Lingkar Pena Kreativa', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1405, '9792059806', 'H2', 'Adekhi Mikyusu', 'PT Elex Media Komputindo', '1993', 1, 0, 4, NULL, NULL, NULL, NULL),
(1406, '9789792589481', 'Sarjana Universitas Syebon', 'Muhammad Masur', 'Pustaka', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1407, '9789797094911', 'Sukses Finensial Lewat Astrologi dan Meta Kehidupa', 'Ophelie', 'PT Kompas Media Nusantara', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1408, '9789792758948', 'Hanneh Montane Tree Blue', 'Haru biru', 'PT Gramedia', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1409, '9789790846616', 'Mini Police Story', 'Izzatul Fitriyah', 'PT Serangkai Pustaka Mandiri', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1410, '9794203408', 'Teori Pengkajian Fiksi', 'Burhan Nurgiyantoro', 'Gadjah Mada University', '1995', 2, 0, 4, NULL, NULL, NULL, NULL),
(1411, '9789780637986', 'Undang Saya Allah', 'Ust Yusuf Mansur', 'Lini Zikru Media Intelektual', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1412, '9786029602630', 'Winter To Summer', 'Icha Ayu', 'Siletto Book', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1413, '979413256x', 'Bila Suami Istri Bekerja', 'G Wade Rowatt Jr dan Mary Jo Rowatt', 'Kanisius', '1990', 0, 0, 4, NULL, NULL, NULL, NULL),
(1414, '9786022422471', 'Rumah Cokelat', 'Hasna Haura Taqiyyah', 'PT Mizan', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1415, '9797363988', 'Kancil Sang Penolong', 'Soedjarwo', 'Cv Aneka Ilmu', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1416, '9789790636514', 'Si Roda Jalanan', 'Gol Agong  dan Tiyas Tutanko', 'Zikrul Kids', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1417, '9789790212305', 'Menjaga Kesehatan Gigi dan Mulut', 'Dwi Setia Tyaningsih', 'Cv Sinar Cemerlang Abadi', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1418, '9792494204', 'The Secret Of Heart', 'Khalil Gibran', 'Cupid Media Group', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1419, '9786029895438', 'Manggis Ratu Buah', 'Tjuhjaningtyas', 'Stomata', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1420, '9791536864', 'Kisah Kepahlawanan', '-', 'Hikmah Anak Sholih', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1421, '9789790481558', 'Cerita Anak Jalanan', 'Fahmi Mubarok', 'Cv Aneka Ilmu', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1423, '9786029845594', 'Bait Surau', 'Rahta Wahyu', 'Two Syinergy Publisher', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1424, '9794444391', 'aa-ii-uu', '-', 'PT Pustaka Utama', '2006', 4, 0, 4, NULL, NULL, NULL, NULL),
(1425, '9789790666139', 'Gone', 'Dini Ochtarina', 'PT Gramedia Pustaka Utama', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1426, '979605907x', 'Chicken Soup For The Teenage Soul', 'Jack Canfield dkk', 'PT Gramedia Pustaka Utama', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1427, '8178263777', 'Robinson Crusoe', 'Daniel Defoe', 'Rohan Book Company', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1428, '9794192678', 'Sebelum Tidur', 'Sudiman S Hurtoyo', 'Pustaka Jaya', '1997', 2, 0, 4, NULL, NULL, NULL, NULL),
(1429, '9789797094546', 'Doorstootnaar Djokja', 'Jullius Pour', 'Buku Kompas', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1430, '8178263742', 'A Take of Two Cities', 'Charles Dichen', 'Rohan Book Company', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1431, '978979069025', 'Saputangan Cinta', 'Dwi Pratiwi', 'Badan Pengembangan & Pembinaan Bahasa Kementrian P', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1432, '9794071772', 'Bentrokan dalam Asrama', 'Aah Diat K.M', 'Balai Pustaka', '1952', 6, 0, 4, NULL, NULL, NULL, NULL),
(1433, '8178263939', 'Arround The World in Might Days & Swedes', 'Julies Verne', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1434, '817826451x', 'Manch a Do About Nothing', 'William Shake Speare', 'Rohsn Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1435, '978979227913', 'Kau & Aku Sepucuk Angpao Merah', 'Tereliye', 'PT Gramedia Pustaka Utama', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1436, '9786029776300', 'Tarantula', 'Niken Anggraini', 'Pustaka Kaiswaran', '2016', 1, 0, 4, NULL, NULL, NULL, NULL),
(1437, '9789792504309', 'Sayap-Sayap Cinta', 'Khakim dkk', 'Sayap Mas NUQTHON', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1438, '9786022792475', 'Berburu Surga Bersama Nabi', 'Ahmad Salim SPD.I', 'Safirah', '2017', 1, 0, 4, NULL, NULL, NULL, NULL),
(1439, '9789790667716', 'My Lovely Nanny', 'Diliviva Venesia', 'PT Mizan Pustaka', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1440, '9781709173', 'Awas Ada Ufo', 'Steven M.Greet M.D', 'SIGNAL', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1441, '9786029397000', 'The Lonely Hearts Club', 'Elizabeth Fulbery', 'Point an Imprint of Scholastic Inc. USA', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1442, '9786028042239', 'Untaian Tasbih Cinta', 'Roidah', 'Khazanah Sulaiman', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1443, '9780307021106', 'Gajah Dodur Kecil', 'K.& B.Jackson', 'Kid classic Publication', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1444, '9786028094740', 'Aku Dimarahin Ayahkku', 'Muh Sibaweh', 'CV Pamularsih', '2008', 2, 0, 4, NULL, NULL, NULL, NULL),
(1445, '-', 'Penjara', 'Sori Serigar', 'Balai Pustaka', '2006', 2, 0, 4, NULL, NULL, NULL, NULL),
(1446, '9786021462515', 'Prabowo Untuk Indonesia Raya', 'Khalilur A Abdulah Sahlawiy', 'Sejahtera Kita', '2014', 2, 0, 4, NULL, NULL, NULL, NULL),
(1447, '-', 'Anak Kost Dodol Tamat', 'Dewi Dedew Riska', 'Gradien Media Tama', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1448, '9792047581', 'One Piece', 'Ellichiro Oda', 'PT Elex Komputindo', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1449, '9789792239836', 'Winter In Tokyo', 'Ilana Tun', 'PT Gramedia Pustaka Utama', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1450, '9794071781', 'Salah Pilih', 'Nur St Iskandar', 'PT Persero Balai Pustaka', '1928', 1, 0, 4, NULL, NULL, NULL, NULL),
(1451, '9789790244719', 'Suddenly Super Natural', 'Elizabeth Cody Kimmel', 'PT Setambi Ilmu Semesta', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1452, '9786020270562', 'If Love Room', 'Sunao Nagoe', 'PT Elex Media Komputindo', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1453, '-', 'The Grand Old Man', 'Haris Priyatna', 'Bitread Publishing', '2017', 1, 0, 4, NULL, NULL, NULL, NULL),
(1454, '-', 'Akulah Malaikat Hatimu', 'Ratna Oks', 'Euthenia', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1455, '-', 'Secuil Hati Wanita di Teluka Eden', 'Vanny Chrisma W', 'Berlian', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1456, '9786020011813', 'Dua Tangis Dan Ribuan Tawa', 'Dahlan Iskan', 'Pt Elex Media Komputindo', '2011', 2, 0, 4, NULL, NULL, NULL, NULL),
(1457, '817826416', 'The Adventure of Sherlock Homes', 'Sir Arthur Conan Doyle', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1458, '9786022420453', 'Gomawoyo Chef', 'Dian Onasis', 'PT Mizan Pustaka', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1459, '9792097333', 'Detektif Conan', 'Aoyeme Gosho', 'PT Elex Media Komputindo', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1460, '-', 'Kisah Ajaib 1001 Malam', 'MB.Rahimsyah', 'Karya Gemilang Utama', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1461, '9793307129', 'Gajah Mada', 'Lengit Kresno Heriadi', 'Tiga Serangkai', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1462, '9786020445939', 'Battle Gamet In 5 Second', 'Hamsed Rangkuti', 'PT Elex Media Komputindo', '2017', 1, 0, 4, NULL, NULL, NULL, NULL),
(1463, '9789799413307', 'Berjuang Menyelamatkan Orang Utan', 'Zahra', 'Satubuku', '2015', 2, 0, 4, NULL, NULL, NULL, NULL),
(1464, '9786027665279', 'Terpesona Bacaan Al Quran', 'Ibnu Ahmani', 'Safirah', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1465, '9786028997652', 'Moga Bunda DiSayang Allah', 'Tereliye', 'PT Pustaka Abdi Bangsa', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1466, '9786027212978', 'Kesatria Kuda Putih', 'Ahmad Sufiatur Rahman', 'Tinta Medina', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1467, '9786023360789', 'She (fianer)', 'Alvika Doe', 'Diandra Creative', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1468, '9786023620260', 'Double Walker', 'Kessy Vanessa dkk', 'PT Mizan Pustaka', '2015', 2, 0, 4, NULL, NULL, NULL, NULL),
(1469, '9789792912869', 'The White Tiger', 'Ara Vind Adiya', 'Sheila', '2008', 3, 0, 4, NULL, NULL, NULL, NULL),
(1470, '9789794336236', 'Gadis Jeruk', 'Jostein Gaarder', 'PT Mizan Pustaka', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1471, '9789792759839', 'Naruto', 'Masashi Kishimo', 'PT Elex Media Komputindo', '1993', 3, 0, 4, NULL, NULL, NULL, NULL),
(1472, '-', 'AOHA RIDE', 'Lo Sakisaka', 'PT Gramedia', '2016', 1, 0, 4, NULL, NULL, NULL, NULL),
(1473, '-', 'Pedang Teratai Merah', 'P Mahardika', 'Penerbit Alam Budaya', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1474, '9789792239072', '8 9 10 Udah Belom?!', 'Laurentina Dermeran', 'PT Gramedia Pustaka Utama', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1475, '9799833728', 'Terpesona di Sidratul Muntaha', 'Agus Mustofa', 'PADMA PRESS', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1476, '9799968208', 'Maka Tersenyumlah Cantik', 'Indra Mastuti', 'Khansa', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1477, '-', 'Lembah Membara', 'Moerwanto', 'CV Indocamp', '1984', 2, 0, 4, NULL, NULL, NULL, NULL),
(1478, '9786020331584', 'Ayahku (Bukan) Pembohong', 'Tereliye', 'PT Gramedia Pustaka Utama', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1479, '-', 'Nganu', 'Edi Akhiles', 'DIVA Press', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1480, '97860218741485', 'Segalanya Tentang One Direction', 'Elyssa Gisel', '-', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1481, '9786027975057', 'Snow White Merebut Kembali Kerajaan Kasper', 'Wylvera W', 'Mizan Media Utama', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1483, '9789793065519', 'Azalea Cewek Penggila Bola', 'Isna K', 'Nevilla', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1484, '9789791493017', 'Kumpulan Cerita Negeri Impian', 'Qurota Ayen', 'PT Sindur Press', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1485, '-', 'Dalam Perjamuan Cinta', 'Dr Taufiq EL Hakim', 'Republika', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1486, '9792071255', 'The Lonesome Miss Holmen', 'Aki Morino', 'PT Elex Media Komputindo', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1487, '9792040514', 'Rave', 'Hiro Moshime', 'PT Elex Media Komputindo', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1488, '9786020008599', 'Bey Blade', 'Adachi Takefumi', 'PT Elex Media Komputindo', '2010', 2, 0, 4, NULL, NULL, NULL, NULL),
(1489, '9799731232', 'Bumi Manusia', 'Pramoedya Anant Toer', 'Lentera Dipantara', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1490, '9792090533', 'I Hate You But I Love You', 'Fujiwara Yoshika', 'PT Elex Media Komputindo', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1491, '9786029602685', 'Black Angel', 'Indah Hanaco', 'Stiletto Book', '2011', 2, 0, 4, NULL, NULL, NULL, NULL),
(1492, '9786028174657', 'Bunga Tabur Terakhir', ' G.M.Sudarta', 'Gedung Galangpress Center', '2011', 2, 0, 4, NULL, NULL, NULL, NULL),
(1493, '-', 'Ratusan Mata Dimana-Mana', 'Martin Aleida dkk', 'AKAR Indonesia', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1494, '9789790665897', 'Me & My Two Worlds', 'Tasnima Ranti Weningtyas', 'PT Mizan Pustaka', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1495, '9790297270', 'Dokter Hewan', 'Ya Zahra', 'Salang', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1496, '978444085x', 'Bulan Bugil Bulat', 'Yanusa Nugroho', 'Kreatumin Sapta Manunggal', '1990', 2, 0, 4, NULL, NULL, NULL, NULL),
(1497, '6022200350', 'Long Distance Hearts', 'Long Distance_R', 'Bukune', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1499, '9799110777', 'Monyet Jadi Kepala Sekolah', 'Iffah Nor Azizah', 'Medpress', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1500, '9786029597714', 'How To Gets IDEAS', 'Larry Corby', 'Portico', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1501, '9789792248975', 'Ramadhan di Musim Gugur', 'Elie Mulyadi', 'PT Gramedia Pustaka Utama', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1502, '9792069895', 'Mini 4WD Fighter V Vol 4', 'AOKI Takao', 'Shogakukan', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1503, '9791604447', 'Senandung Suara Cinta', 'Kahlil Gibran', 'Panji Pustaka Yogyakarta', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1504, '9786028814256', 'Tears in Heaven', 'Kim Chonji', 'Hi-Fest', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1505, '-', 'Renungan Motivasi', 'Muhammad Effendi', ' Pustaka AZM', '2016', 1, 0, 4, NULL, NULL, NULL, NULL),
(1506, '9786022910381', 'MA YAN', 'Sanie B.Kuncoro', 'PT Bentang Pustaka', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1507, '9792040994', 'Rave 22', 'Hiro Mashima', 'Kodansha ltd', '2003', 1, 0, 4, NULL, NULL, NULL, NULL),
(1508, '9789792310429', 'Lets Volley Ball', 'SAKISAKA Mea', 'PT Gramedia', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1510, '9789790154643', 'The Power of Mindful Learning', 'Ellen J.Langer', 'Erlangga', '1977', 1, 0, 4, NULL, NULL, NULL, NULL),
(1511, '9786029225563', 'A Love at First Sight', 'Jenniper E.Smith', 'PT Mizan Pustaka', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1512, '9786020221380', 'Otakku Cess Pleng', 'Gisongi', 'PT Elex Media Komputindo', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1513, '9789792754520', 'Dinosaurus Menghilang', 'Yoichi Takachi', 'PT Elex Media KomputIndo', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1514, '9789791677127', 'Kembang Cinta DiTaman Surga', 'Sugiyo', 'Azzam Publishing', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1515, '9789794336748', 'Radiance', 'Alyson Noel', 'Mizan Fantasi', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1517, '9786021442123', 'Spiritualis Cinta', 'Dr.K.H.Nawawi M.Ag', 'Genius Media', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1518, '9789790846715', 'Belajar Puasa', 'Anna Mazida', 'Tiga Ananda', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1519, '9789790668409', 'Tawa Annisa', 'Nabila Ulamy Alya', 'PT Mizan Pustaka', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1521, '9789792546118', 'Mencintai dan Menididik Secara Islami', 'Abdullah Nashih Ulwan', 'DARUL HIKMAH', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1522, '9786020251066', 'Mutiara-Mutiara Istimewa', 'Erni Misian dkk', 'PT Elex Media Komputindo', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1523, '9797883159', 'Gajah Mada Pemersatu Bangsa', 'Nurul Asmayani', 'Cerdas Interaktif', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1524, '9789790633131', 'Kebanggan Yang Hilang', 'Gol A Gong dkk', 'Bestari Kids', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1525, '9786028299770', 'ONG TIEN', 'Reiki Dyah Pitaloka', 'Pustaka Kaiswaran', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1526, '9799713250', 'Genderang Baratayuda', 'Sri Murtono', 'NAVILLA', '2006', 3, 0, 4, NULL, NULL, NULL, NULL),
(1527, '-', 'Kita Kan Selalu Saling Menyayangi', 'Maria Cecilia', 'SINAR MATAHARI', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1528, '9792214798', 'Galau Putri Calon Arang', 'Femmy Syahrani dan Yulyana', 'PT Gramedia Pustaka Utama', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1529, '9789796857463', 'Dewi Anggraeni Si Putri Karandan', 'Tirto Suwondo', 'Badan Pengembangan dan Pembinaan Bahasa Kementrian', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1530, '9786029764895', 'Air Mata Surga', 'E Rokajat Asura', 'Imania', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1531, '-', 'Crayon Sinchan', 'Yoshito Usui', '-', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1532, '9789792933192', 'Bienveneue Amor', 'Ernawati', 'Sheila', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1533, '9786023397655', 'Kurokos Basketball', 'Tadatoshi Fujimaki', 'PT Gramedia', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1534, '9789792288711', 'London Dalam Sepekan', 'Rizka Maydita', 'PT Gramedia Pustaka Utama', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1535, '9786028042055', 'Saat Bedug Cinta Berkumandang', 'Roidah', 'Khanzanah Sulaiman', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1536, '9789791943123', 'Buku Harian Dewi', 'Nenden Nilla Aristina  S.Sos', ' PT Sindur Press', '2010', 2, 0, 4, NULL, NULL, NULL, NULL),
(1537, '9789790242708', 'Pesantren Dongeng', 'Awang Surya', 'ZAMAN', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1538, '9786022422853', 'Teman Keren', 'Salsabila Auky Putri', 'PT Mizan Pustaka', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1539, '-', 'Amerika dan Penggulingan Soekarno 1965-1957', 'Peter Dale Scott', 'PT Visi Gagas Media Komunika', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1540, '9789118018', 'Disana Jalan Semakin Terbuka', 'Anggraeni', 'CV Jaya Abadi', '1996', 1, 0, 4, NULL, NULL, NULL, NULL),
(1541, '9786024204747', 'Perjalan Sang Juara', 'Azzela Maulidya Hardiansyah', 'PT Mizan Pustaka', '2017', 1, 0, 4, NULL, NULL, NULL, NULL),
(1542, '9786022429289', 'Liburan Kreatif', 'Najwa Auly dkk', 'PT Mizan Pustaka', '2016', 1, 0, 4, NULL, NULL, NULL, NULL),
(1543, '9789790661424', ' Laboratorium Liana', 'Fatimah Sersasila', 'PT Mizan Pustaka', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1544, '9787990213395', 'Petualangan Si Kancil Yang Cerdik', 'Drs.Sumirin M.Pd', 'PT Bengawan Ilmu', '2008', 2, 0, 4, NULL, NULL, NULL, NULL),
(1545, '-', 'Angin Laut Tawar', 'L.K.Are', 'Balai Pustaka', '-', 2, 0, 4, NULL, NULL, NULL, NULL),
(1546, '9786022420217', 'Karakter Cilik', 'Thifal Kherida Mutnia', 'PT Mizan Psutaka', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1547, '9789790666122', 'Loe Lebay', 'Rizky Nurfajri', 'PT Mizan Pustaka', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1549, '9786021128312', 'Batu Tua Angker', 'Fatima A dkk', 'Muffin Grapichs', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1550, '9786022514244', 'Koma Titik', 'Bisma Dwi Bangga', 'PT Grasindo', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1551, '9786022421450', 'The Golden Graffiti', 'Mesine Savira', 'PT Mizan Pustaka', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1552, '9786022880059', 'All For Me', 'Farica', 'Buku Pintar', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1553, '978602208924', 'See You Ka Lovely Voice', 'Meki Minami', 'PT Gramedia', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1554, '9786021389041', 'Tarian Salju Karaban', 'Aulel Muna', 'Kementrian Pendidikan & Kebudayaan Direktorat Jend', '2015', 6, 0, 4, NULL, NULL, NULL, NULL),
(1555, '9789790214194', 'Pengabdian Bu Guru Tatik', 'Wahyu F', 'PT Bengawan Ilmu', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1556, '9789790483019', 'Mengenal Berbagai Macam Uang (Alat Tukar)', 'Siti Sulastri', 'Aneka Ilmu', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1557, '978979021393', 'Nilai Sebuah Kejujuran', 'M.Barsowi', 'PT Bengawan Ilmu', '-', 2, 0, 4, NULL, NULL, NULL, NULL),
(1558, '9786028282215', 'Jadi Juragan Sapi', 'Lani', 'Arcay Media Utama', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1559, '9789790214071', 'Aku Ingin Ayah dan Ibuku Tersenyum', 'Hadziq Jauhary', 'PT Bengawan Ilmu', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1560, '9789799108869', 'Seri 3', 'Benedicta Hanna', 'CV.Ghyyah Putra', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1561, '9789790482104', 'Meneladani Kedisiplinan Lebah', 'Abdul Majid', 'CV.Aneka Ilmu', '2008', 3, 0, 4, NULL, NULL, NULL, NULL),
(1562, '9793955783', 'Kegoncangan Hari Kiamat dan Kehidupan Akhirat', 'Imam Abdurrahim Bin Ahmad', 'AMELIA', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1563, '9794192643', 'Priangan Si Jelita', 'Ramadhan K.H', 'PT Dunia Pustaka Jaya', '1958', 2, 0, 4, NULL, NULL, NULL, NULL),
(1564, '9789790213920', 'Arti Sebuah Cita-Cita', 'Dwi Widiyanti', 'PT Bengawan Ilmu', '-', 2, 0, 4, NULL, NULL, NULL, NULL),
(1565, '9789792498981', 'Menggapai Cita-Cita', 'Tuwun Trisnayadi', 'Pustaka Insan Madani', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1566, '9789797369980', 'Penantian Yang Berakhir', 'Tri Mulyono Edi Saputro', 'Aneka Ilmu', '2008', 2, 0, 4, NULL, NULL, NULL, NULL),
(1567, '9789790482333', 'Ibuku Tersayang', 'Budi Setiawan', 'Aneka Ilmu', '-', 2, 0, 4, NULL, NULL, NULL, NULL),
(1568, '9786020208183', 'Sket Dance', 'Kenta Sinohara', 'PT Elex Media Komputindo', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1569, '-', 'Boling Loly', 'Tarang Ay', 'PT Elex Media Komputindo', '1999', 1, 0, 4, NULL, NULL, NULL, NULL),
(1570, '-', 'Tirani dan Benteng', 'Taufiq Ismail', 'PT Cakrawala Budaya Indonesia', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1571, '-', 'Moon Loves Secret', 'Tarimo', 'PT Gramedia', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1572, '9789791745406', 'Diujung Waktu', 'Fransiska Irana', 'Homerian Pustaka', '2008', 2, 0, 4, NULL, NULL, NULL, NULL),
(1573, '9794443727', 'GERHANA', 'Muhammad Ali', 'PT Pustaka Utama Grafiti', '1996', 2, 0, 4, NULL, NULL, NULL, NULL),
(1574, '9796555867', 'Pada Sebuah Kapal', 'Nh Dini', 'PT Dian Pustaka Jaya', '1988', 1, 0, 4, NULL, NULL, NULL, NULL),
(1575, '9789792274790', 'The Petch', 'Chris Humphreys', 'PT Gramedia Pustaka Utama', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1576, '9786029783100', 'Aeromatical', 'Zhaena Fanari', 'Laksana', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1577, '9789790213821', 'Baju Batik Buat Pak Guru', 'Wahyu F', 'PT Bengawan Ilmu', '-', 4, 0, 4, NULL, NULL, NULL, NULL),
(1578, '9797564908', 'Cinta Tawa dan Air Mata', 'Kahlil Gibran', 'Narasi', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1579, '9786028004368', 'Bukan Pencuri', 'Asrori', 'CV.Pamularsih', '-', 3, 0, 4, NULL, NULL, NULL, NULL),
(1580, '-', 'Melacak Sang Waktu', 'Yuladi', 'PT Musi Perkasa Utama', '1997', 2, 0, 4, NULL, NULL, NULL, NULL),
(1581, '-', 'Monster Battle', 'Ahmad Sufiatur R', 'Media Kita', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1582, '-', 'Alice in Wonderland', 'Lewis Carrol', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1583, '-', 'Chairul Tanjung Si Anak Singkong', 'Tjahja Gunawan Diregja', 'PT Kompas Media Nusantara', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1584, '-', 'Claymore', 'Allyjane', 'De Teens', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1585, '-', 'The Jungle Books', 'Rudyard Kipling', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1586, '-', 'Reaching For a Star', 'Sayori Sakamoto', 'PT Gramedia', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1588, '-', 'Cowok Cantik Itu', 'Adra P.Daniel', '-', '1991', 1, 0, 4, NULL, NULL, NULL, NULL),
(1589, '-', 'Cooking Battle', 'Dias Nuryamsih dkk', 'PT Nisan Publika', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1590, '', 'Kariagen Kun', 'Masoshi Ueda', 'PT Elex Media Komputindo', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1591, '-', 'Majalah Dinidng', 'Bakdi Soemanto', 'Gama Media', '2016', 1, 0, 4, NULL, NULL, NULL, NULL),
(1592, '-', 'Kastalia', 'Rendra', 'PT Dunia Pustaka Jaya', '1997', 1, 0, 4, NULL, NULL, NULL, NULL),
(1593, '-', 'Komunikasi Jenaka', 'Dr.Dedi Mulyana M.A', 'PT Remaja Rosdaharya', '2002', 1, 0, 4, NULL, NULL, NULL, NULL),
(1595, '-', 'Gombal Van Java', 'Joe_Gombals', 'Cakrawala', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1596, '-', 'Batavia', 'Frieda Amran', 'Buku Kompas', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1597, '-', 'Teman-Teman Adikku Yang Nakal', 'Dorothy Edwards', 'PT Gramedia Pustaka Utama', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1598, '-', 'Switch', 'Chip Heath and Dan Heath', 'PT Gramedia Pustaka Utama', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1599, '-', 'Little Chef Competition', 'Zayyan Zhafirah Arafia Susanto', 'PT Mizan Pustaka', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1600, '-', 'Mempelai Jiwa', 'Kahlil Gibran', 'Dolphin Books', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1601, '-', 'Fakta Unik One Direction', 'Chiara D.Wilasita', 'Galmas Publisher', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1602, '-', 'Asy-Syarif Al-Idrisi', 'Risma Dewi', 'Pelangi Mizan', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1603, '-', 'Mahabbah Cinta', 'Kahlil  Gibran', 'Pustaka Anggrek', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1604, '-', 'Anes Gadis Berpenciuman Emas', 'Kenzie Deni Wibisono', 'ZETTU', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1605, '-', 'Kasih Seribu Satu Malam', 'Muhsin Mahdi', 'Mizan Media Utama', '1993', 1, 0, 4, NULL, NULL, NULL, NULL),
(1606, '-', '1001 Virus Cinta Sekeluarga', 'Mathilda Awm Birowo', 'Grameedia Widiasarana Indo', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1607, '-', 'Pesulap Kecil', '-', 'PT Penerbitan Sarana Bobo', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1608, '-', 'Joko Kendil danSeruling Sakti', 'TIRA IKRANegara', 'Greisindo Press', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1609, '-', '30 Dongeng Sebelum Tidur E & I', 'Kidh Hidayat', 'Mitra Ummat Surabaya', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1611, '-', 'Dr White', 'Adipati Sabrang El-Faruq', 'Safirah', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1612, '-', 'Orang Miskin Dilarang Sekolah', 'Wiwid Prasetyo', 'Diva Press', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1613, '-', 'Teka-Teki Petualangan Dr.Ecco', 'Dennis E Shasha', 'Erlangga', '1995', 1, 0, 4, NULL, NULL, NULL, NULL),
(1614, '-', 'Batu-Batu Setan', 'M.Fudoli Zaini', 'PT Pustaka Firdaus', '1994', 1, 0, 4, NULL, NULL, NULL, NULL),
(1615, '-', 'Bait-Bait Cinta', 'Beidurrahman El Mishry', 'Grafindo', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1616, '-', 'Kisah 25 nabi dan Rasul', 'Mb Rahimsyon AR dkk', 'Nidya Pustaka', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1617, '-', 'Kisah Perjuangan Walisongo Generasi Pertama Hingga', 'Mb Rahimsyah AR', 'Giri Utama', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1618, '-', 'ABG Keren Abis', 'Maria Cicilia', 'Sinar Matahari', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1619, '-', 'Bahtera Nabi Nuh', 'Abu Ummat Ibruhim', 'Hikmah Anak Sholih', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1620, '-', 'Sebuah Naskah Sandiwara', 'Arifin C Noer', 'Grafiti', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1621, '-', 'Rahasia Kupu-Kupu Kristal', 'Imron Loha', '-', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1622, '-', 'Cerita Rakyat Nusantara', 'MB Rahimsyah', 'Giri Utama', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1623, '-', 'Silent  Love', 'Dien Ilmi', 'Rohan Book Company', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1624, '-', ' Eagle', 'Kawaguchi Keiji', 'PT Glex Media Komputindo', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1625, '-', 'Tinton Sandiwara Anak Anak', 'Noorca Maranda Massardi', 'Budaya Jaya', '1979', 1, 0, 4, NULL, NULL, NULL, NULL),
(1626, '-', 'Akal Bulus Scapin', 'Noliere', 'PT dunia Pustaka Jaya', '1979', 1, 0, 4, NULL, NULL, NULL, NULL),
(1627, '-', 'Berkarya Demi Mencapai Demi Mencapai Cita Cita', 'M.Amin Hasan B.A', 'Griya Wiyata', '1998', 1, 0, 4, NULL, NULL, NULL, NULL),
(1628, '-', 'La Tahzan', 'Dr.Aidh Abdillah Al-Gorni', 'Al-Mu Assah Ar-Rayyaan Beirut', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1629, '-', 'Jejak Langkah', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1630, '-', 'Cokelat', 'Niken Supriyanto', 'Lelile Publishing', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1631, '-', 'Dunia Kecil', 'Yoyan Indra Joni', 'Diva Press', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1632, '-', 'The Impeccable Twin', 'Gu Long', 'PT Gramedia', '2001', 1, 0, 4, NULL, NULL, NULL, NULL),
(1633, '-', 'Pavo Pada Festival Tahunan', 'Erna Fitrini', 'Indria Pustaka', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1634, '-', 'Cara Cepat Mengusai Tenses dan Grammer', 'Risa Agustin.S.pd.dkk', 'Serba Jaya', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1635, '9797301680', 'Berbalas Pantun Remaja', 'Darwin S.Chaniago.S.pd', 'CV.Pustaka Setia', '1997', 2, 0, 4, NULL, NULL, NULL, NULL),
(1636, '9799193591', 'Bibir', 'Krishna Mihardja', 'Drama Media', '2001', 1, 0, 4, NULL, NULL, NULL, NULL),
(1637, '-', 'Oliver Twist', 'Charles Dickens', 'Rohan Book Company', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1638, '-', 'Humor Gokil Abis Coy', 'Benyamin F', 'Agogos Publishing', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1639, '-', 'Ben 10 (Keberuntungan Yang Sulit) Season 2', 'Duncan Rouleau dkk', 'Komik Warna', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1640, '-', 'Selepas Panen Rumput Laut', 'Setiawati', 'PT Musi Perkasa Utama', '1997', 1, 0, 4, NULL, NULL, NULL, NULL),
(1641, '-', 'Perjalanan Ke Negeri Damai', 'Korrie Layun Rampan', 'Gramedia Widiasarana', '2003', 1, 0, 4, NULL, NULL, NULL, NULL),
(1642, '-', 'I Am You', 'Ty SakuMoto', 'Grasindo', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1643, '-', 'Gus Dur Hanya Kalah Dengan Orang Madura', 'M Mas ud Adnan', 'Harian Bangsa', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1644, '-', 'Putri Salju', 'Tira Ikranegara', 'Serba Jaya', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1645, '-', 'Kelas Olimpiade', 'Komik Sains', 'PT Kuarh Internasional', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1646, '-', '7 malam Pertama Di Alam Kubur', 'Lukman Hakim S.Ag', 'Dua Media', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1647, '-', 'Petualangan Sinbad', '-', 'Pinus Book', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1648, '-', 'Kumpulan Dongeng Pengantar Tidur', 'MB.Rahimsyah', 'INDAH', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1649, '-', 'La Grande Borne', 'Nh Dini', 'PT Gramedia Pustaka Utama', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1650, '-', 'Rara Beruk', 'Suyuno Suyotno', 'Badan Pengembangan dan Pembinaan Bahasa Kementrian', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1651, '-', 'Kunci Orang-Orang Masuk Sorga dan Segala Kenikmata', 'Ustd.Abu Izzah Al-Qura SAG', 'Al-Hikmah ', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1652, '-', 'Mohammad Sebagai Pedagang', 'Ippho Santosa-Andalus-Khalifah', 'PT Elex Media Komputindo', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1653, '-', 'Pesan Cinta Rahasia', 'Kahlil Gibran', 'NARASI', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1654, '9789790140523', 'Mas & Mbak', 'Endah Nur Rohmi', 'Pacu Minat Baca', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1655, '9789790482166', 'Perpusakaan Sekolah Anak-Anak Rusa', 'Abdul Majid', 'Aneka Ilmu', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1656, '9794444375', 'Ayat-Ayat Api Kumpulan Sajak', 'Sapardi Djoko Damono', 'PT Pustaka Utama Grafiti', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1657, '9786028042482', 'Peppito', 'Suzze', 'Pustaka Salomon', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1658, '9789792217858', 'Laki-Laki Yang Salah', 'Lan Fang', 'PT Gramedia Pustaka Utama', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1659, '9789796949014', 'You Can Do It', 'Maria Shriver', 'PT.Bhuana Ilmu Populer', '2000', 1, 0, 4, NULL, NULL, NULL, NULL),
(1660, '9789793778396', 'Melangkah Dengan Bismillah', 'Wlkan Satriadi', 'Kata Kita', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1661, '9799799888869', 'Dibalik Kisah Sukses Spongebob Squarpants', 'Rita Chaniago', 'PT Buku Kita', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1662, '9789792267662', '9 Summers 10 Autumns', 'Iwan Setyawan', 'PT Gramedia Pustaka Utama', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1663, '-', 'Cinta Elisa', 'Fredy.S', 'Bintang Indonesia', '1973', 1, 0, 4, NULL, NULL, NULL, NULL),
(1664, '9789799638304', 'Sup Tujuh Semudra', 'Pramudya Tohari dkk', 'DIVA Press', '2003', 2, 0, 4, NULL, NULL, NULL, NULL),
(1665, '9789792285628', 'The Rainbow', 'Jessica Chandra', 'Glitzy', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1666, '9789791840521', 'Cermin', 'H.A.Mustofa Bisri', 'Yayasan Mata Air Jakarta', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1667, '9789790669550', 'The Sound of Fira', 'Fasya Adisa Raspati', 'PT Mizan Pustaka', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1668, '9786021944325', 'Matematikawan Pendek Usia', 'James Gregory', 'CV PYRAMID EMAS PUTIH', '2015', 2, 0, 4, NULL, NULL, NULL, NULL),
(1669, '9793862173', 'Senandung Cinta', 'Ust Jefry Al-Bukhori', 'PUSTAKA AL-MAWARDI', '2006', 1, 0, 4, NULL, NULL, NULL, NULL);
INSERT INTO `buku` (`id_buku`, `ISBN`, `judul`, `pengarang`, `penerbit`, `thn_terbit`, `stok`, `di_pinjam`, `id_ketegori`, `id_rak`, `id_kolom`, `created_at`, `updated_at`) VALUES
(1670, '-', 'Meneladani Generasi Muda Sahabat', 'Muhammad Abdullah Ad-Duwaisy', '-', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1671, '9786026358264', 'Cinta diSujud Terakhir', '@Cinta.Mulai', 'Wahyu Qolbu', '2017', 1, 0, 4, NULL, NULL, NULL, NULL),
(1672, '9789792593587', 'To Have and Have Not', 'ERNEST HEMINGWAY', 'Selasar Surabaya Publishing', '1973', 1, 0, 4, NULL, NULL, NULL, NULL),
(1674, '9789791283267', 'Soulmate 4-Ever', 'Camilia Chisni', 'MATAPENA', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1675, '9789799551238', 'Mengejar Kebahagiaan', 'B.Hindar SE', 'Menara Mega Perkasa', '2015', 2, 0, 4, NULL, NULL, NULL, NULL),
(1676, '9789799414014', 'Marlin Si Anak Pantai', 'Winny M.Si', 'Puspa Inti Mandiri', '2015', 2, 0, 4, NULL, NULL, NULL, NULL),
(1677, '9789799414014', 'Ruang Rindu', 'Andi Eriawan', 'Gagas Media', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1678, '9794078646', 'Liku-Liku Jalan Kehidupan', 'Matiah Madjiah', 'Balai Pustaka', '1982', 1, 0, 4, NULL, NULL, NULL, NULL),
(1679, '9786029442168', 'Bangkit Dari Keterpurukan', 'Bertahindara', 'CV Arwana Sungai Kapuas', '2015', 2, 0, 4, NULL, NULL, NULL, NULL),
(1680, '9786029432336', 'Asyiknya Mempelajari Kata Depan', 'Armada.A', 'Abdi Zam-Zam', '2015', 2, 0, 4, NULL, NULL, NULL, NULL),
(1681, '9786029427400', 'Membuat Parasut Sederhana', 'W.Elfiati', 'Citra Cendrawasih Cerdas', '2015', 2, 0, 4, NULL, NULL, NULL, NULL),
(1682, '9789790272309', 'Bondan Si Penyelam', 'Niek Adie', 'Angkasa Bandung', '2014', 2, 0, 4, NULL, NULL, NULL, NULL),
(1683, '9786023398379', 'Blue Spring Ride', 'Sakisaka', 'Shuesha', '2016', 1, 0, 4, NULL, NULL, NULL, NULL),
(1684, '979934137x', 'Dilarang Menyanyi di Kamar Mandi', 'Seno Gumira Ajidarma', 'Galang Press', '1995', 1, 0, 4, NULL, NULL, NULL, NULL),
(1685, '9789792247084', 'Massage in Bottle', 'Jahnna N.Maklcolm', 'PT Gramedia Pustaka Utama', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1686, '9789791495271', 'Ayo!! Giat Menabung', 'Agus Maryoto', 'CV.Ghyyas Putra', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1687, '9789790213586', 'Tangkuban Perahu', 'Anton Sadewa', 'PT Bengawan Ilmu', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1688, '9789790214316', 'Pendekar Dari Aceh (Cut Nyak Dien)', 'Endah Fitriyah', 'PT Bengawan Ilmu', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1689, '9789790481909', 'Temanku Juara Kelas', 'Endah Fitriyah', 'Aneka Ilmu', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1690, '9789790481633', 'Aku Terluka Karena Nakal', 'Widyawati', 'Aneka Ilmu', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1691, '9789790481749', 'Mengejar Cita-Cita', 'Agus Riyadi', 'Aneka Ilmu', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1692, '97897904881976', 'Tikus Yang Pemalu', 'Fahmi Mubarok', 'Aneka Ilmu', '2008', 2, 0, 4, NULL, NULL, NULL, NULL),
(1693, '9789790481565', 'Kisah Pengembala Jahil dan Serigala', 'Fahmi Mubarok', 'Aneka Ilmu', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1694, '9789790482908', 'Bertamasya Ke Planetarium', 'Dwi Widiyanti', 'Aneka Ilmu', '2008', 2, 0, 4, NULL, NULL, NULL, NULL),
(1695, '9789790481640', 'Petualanganku', 'Widyawati', 'Aneka Ilmu', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1696, '9789790531024', 'If You Believe', 'Dwi Supriyono', 'CV.Pamularsih', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1697, '9789790591000', 'My Theacher Is My Hero', 'Sriwiyati', 'CV.Pamularsih', '2008', 2, 0, 4, NULL, NULL, NULL, NULL),
(1698, '9789799412898', 'Senyum Membawa Berkah', 'Armada', 'PT.TropicaSurya IntiCipta', '2015', 3, 0, 4, NULL, NULL, NULL, NULL),
(1700, '-', 'Bung Santri Gagal', 'Zaenal Hakim', 'Pusat Bahasa Departemen Pendidikan Nasional', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1701, '9786027888920', 'The Blackside', 'Wenny Artha Lugine', 'PT.Bintang Pustaka', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1702, '9786029430356', 'Iam The Champion', 'M.Permata', 'Mata Pedang Ilmu', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1703, '9794444383', 'Harmoni', 'Ras Siregar', 'PT.Utama Grafiti', '2006', 2, 0, 4, NULL, NULL, NULL, NULL),
(1704, '-', 'KHR.AS AD Syamsul Arifin Riwayat Hidup Dan Perjuan', 'KHR.Ach Fawaid AS AD', 'CV.Sahabat Ilmu', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1705, '9786029430356', 'I Am The Champion', 'M Pemete', 'Mata Pedang Ilmu', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1706, '9794077887', 'Bromo Sang Primadona', 'Barmin', 'Balai Pustaka', '1995', 1, 0, 4, NULL, NULL, NULL, NULL),
(1707, '9786028123358', 'Remaja Membangun Kepribadian', 'Anne Windyartini S', 'Nobel Edumedia', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1708, '97950923', 'Senja Di Veno Koen', 'Rahmadiyanti Rusdi dkk', 'Gema Insani', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1709, '97879796856435', 'Si Jujur Mendapat Mujur', 'Widodo Djati', 'Pusat Departemen Pendidikan Nasional', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1710, '9794078468', 'Antara Soputen dan Buneka', 'Pilemon Guneka', 'Balai Pustaka', '1995', 1, 0, 4, NULL, NULL, NULL, NULL),
(1711, '9799132002', 'Tekad Mengentaskan Kemiskinan', 'Yandianto', 'CV.Mekar Sari', '1995', 1, 0, 4, NULL, NULL, NULL, NULL),
(1712, '-', 'Kisah Nyata 25 Nabi dan Rasul', 'MB Rahimsyah AR', 'Brian Publishing', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1713, '9791273286', 'Women Of Heaven', 'Evi Ni Matuzzakiyah', 'Pro U Media', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1714, '9794073601', 'Sengsara Membawa Nikmat', 'Tulis Sutan Bati', 'Balai Pustaka', '1929', 1, 0, 4, NULL, NULL, NULL, NULL),
(1715, '9797952576', 'Teka Teki Kocak Junior', 'Ajen Djanawati', 'PT Wahyu Media', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1716, '9786028135292', 'Anak Pasir', '-', 'Gazza Media', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1717, '9789790481985', 'Di Balik Tembok', 'Sri Hartati S Pd', 'Cv Aneka Ilmu', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1718, '9786020305455', 'Bulan Terbelah di Langit Amerika', 'Salsabiela Rais dkk', 'PT Gramedia Pustaka Utama', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1719, '9786029786767', 'Permasuri Malamku', 'M Faizi', 'DIVA Press', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1720, '9786022422273', 'Sayang Bunda Selamanya', 'Rifa dkk', 'PT Mizan Pustaka', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1721, '9786022910381', 'Mayan', 'Sania B Kuncono', 'Bentang', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1722, '989790758805', 'Pelarian Romantis', 'Sarah Monk', 'Erlangga', '2008', 1, 0, 4, NULL, NULL, NULL, NULL),
(1723, '9789796856510', 'Tombak Si Bagas Marshuror', 'Buha Aritonang', 'Pusat Departemen Nasional', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1724, '9786869934', 'Mereka Bilang Saya Monyet', 'Djenar Moesa Ayu', 'Gramedia Pustaka Utama', '2004', 1, 0, 4, NULL, NULL, NULL, NULL),
(1725, '-', 'Batu Batu Setan', 'M Fudoli Zaini', 'PT Pustaka Firdaus', '1994', 1, 0, 4, NULL, NULL, NULL, NULL),
(1726, '97860298221414', 'Habiburrahman El Shirazy', 'Habiburrahman El Shirazy', 'IHWAN PUBLISHING', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1727, '9786028436281', 'Jangan Mau Jadi Muslim Dodol', 'Agung Satriawan', 'PT Lingkar Pena Kreativa', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1728, '9789792278026', 'Heist Society', 'Ally Carter', 'Gramedia Pustaka Utama', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1729, '9795114441', 'Lupas Kecil : Rumpu Kala Hujan', 'Hilma & Baim', 'Gramedia Pustaka Utama', '1997', 1, 0, 4, NULL, NULL, NULL, NULL),
(1730, '9786021922309', 'My Scary Adventure', 'Ads.Editor', 'Rumah Ide', '2011', 1, 0, 4, NULL, NULL, NULL, NULL),
(1731, '9789792287011', 'The Princes In Me', 'Donna Rosamayna', 'Gramedia Pustaka Utama', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1732, '9786028328579', 'SMS Motivasi Pembangkit Semangat', 'Dwi Herlina', 'Pustaka Anggrek', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1733, '979382820x', 'Winnetou', 'Karl May', 'Read! Publishing House', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1734, '9789792299168', 'Kisah Kim Hee Chul Super Junior', 'Kim Hwan Kee', 'Gramedia Pustaka Utama', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1735, '9789790661523', 'Reporter Cilik', 'Vanda Amyra Mayshara', 'PT Mizan Pustaka', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1736, '97922125225', 'Confenssiond Of A Not IT Girl', 'Melissa Kantor', 'PT Gramedia Pustaka Utama', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1737, '9786029481716', 'Raksasa Dari Jogja', 'Dwitasari', 'PT Bentang Pustaka', '2006', 1, 0, 4, NULL, NULL, NULL, NULL),
(1738, '9789791681667', 'Sherlock Holmes : Tragedi Kapal Gloria Scott', 'Sir Arthur Conan Doyle', 'NARASI', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1739, '9786029786231', 'Dandelion', 'Santi Wulandari', 'Laksana', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1740, '9786029726632', 'Lima Perangai Dan Raksasa Baik Hati', 'Sony Ristanta Aksari', 'CV Buku Bercahaya', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1741, '9786021262115', 'Gadis Kecilku', 'Syaihul Hady', 'Pena Salsabila', '2014', 1, 0, 4, NULL, NULL, NULL, NULL),
(1742, '9791680141', 'Great Expectation : Teman Istimewa', 'Charles Dickens', 'NARASI', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1743, '9789792233032', 'Rumahku Istanaku', 'Jack Canfield dkk', 'PT Gramedia Pustaka Utama', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1744, '9786022503057', 'Lupakan Mantanmu', 'O.Solihin', 'GEMA INSANI', '2016', 1, 0, 4, NULL, NULL, NULL, NULL),
(1745, '9786029519006', 'SMS Teka Teki Lucu Abis', 'Benny Asmara', 'Java Media Netwark', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1746, '9796661861', 'Cinta Tanah Air', 'Nur St Iskandar', 'Balai Pustaka', '1945', 1, 0, 4, NULL, NULL, NULL, NULL),
(1747, '9786027933811', 'Melipat Kenangan', 'Adrinda Ryan Disza', 'PING!!!', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1748, '9789790635593', 'Lukisan Aini', 'Gola Gong dkk', 'Zikrul Hakim', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1749, '9789796370214', 'Doraemon', 'Fujiko F.Fujio', 'PT Elex Media Komputindo', '1994', 1, 0, 4, NULL, NULL, NULL, NULL),
(1750, '9789797956967', 'Aku Jujur The Stories 2', 'Ricky Susanto', 'PT Wahyu Media', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1751, '9789792278514', 'Lima Sekawan : SIRKUS MISTERIUS', 'Enid Blyton', 'PT Gramedia Pustaka Utama', '1982', 1, 0, 4, NULL, NULL, NULL, NULL),
(1752, '-', 'Indahnya Surga Pahitnya Siksa Neraka', 'Rahimsyah', 'Sinduraya', '0', 1, 0, 4, NULL, NULL, NULL, NULL),
(1753, '9789790831544', 'Gapleh', 'Ustadz Evie Effendie', 'Tangga Pustaka & Singa Pustaka', '2018', 1, 0, 4, NULL, NULL, NULL, NULL),
(1754, '9789797883119', 'Jendral Sudirman', 'Nunik Utami', 'Penebar Cif', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1755, '9786027558212', 'Mutiara Cinta', 'Kahlil Gibran', 'Cable Book', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1756, '9789799731210', 'Cerita Calon Arang', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '2003', 1, 0, 4, NULL, NULL, NULL, NULL),
(1757, '9786020222165', 'Travellers Kamboja', 'Andrew Forbes & David Henley', 'PT Elex Media Komputindo', '2013', 1, 0, 4, NULL, NULL, NULL, NULL),
(1758, '9789790257719', 'Perdamaian Ala JK', 'Hamid Awaludin', 'PT Grasindo', '2009', 1, 0, 4, NULL, NULL, NULL, NULL),
(1759, '9786029649901', 'My First Islam', 'Muhammad Abdul Ghaffan', 'Tifelmahira', '2010', 1, 0, 4, NULL, NULL, NULL, NULL),
(1760, '-', 'Tragedi Pangeran Yang Terbuang', 'Joko Kussuharto SM', 'Pengelola Dekranasa Kabupaten Situbondo', '2015', 1, 0, 4, NULL, NULL, NULL, NULL),
(1761, '9789792313772', 'Death Note', 'Tsugami Ohba & Takeshi Obata', 'PT Gramedia', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1762, '9786029430332', 'Sultan Agung Tirtagasa Sang Raja Banten', 'Bertahindara', 'CV Mata Pedang Ilmu', '2015', 2, 0, 4, NULL, NULL, NULL, NULL),
(1763, '9786028214872', 'Ibnu Batutha', 'Maulana Syamsuri', 'Pustaka Media', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(1764, '9791087022', 'Diterbangkan Kata Kata', 'Agus R Sarjono', 'Tifa Publishing Media', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1765, '9791121176', 'Gimana Sih Rasanya Kerja Bareng', 'Kartika', 'PT Java Pustaka Media Utama', '2007', 1, 0, 4, NULL, NULL, NULL, NULL),
(1766, '9794071676', 'Sitti Nurbaya', 'Marah Rusli', 'Balai Pustaka', '1922', 1, 0, 4, NULL, NULL, NULL, NULL),
(1767, '9797656025', 'Aku Jujur : Perasaan Hati No 1', '@Aku_Jujur', 'PT Wahyu Media', '2012', 1, 0, 4, NULL, NULL, NULL, NULL),
(1768, '-', 'Dongeng Pengantar Tidur : Joko Kendil', 'TIRA IKRANEGARA', 'Karya Agung Surabaya', '2005', 1, 0, 4, NULL, NULL, NULL, NULL),
(1769, '036000291452', 'Be Calm Be Strong Be Grateful', 'Wirda Mansur', 'Kata Depan', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1770, '615151002', 'Heart Ling', 'Indah Hanaco', 'PT.Gramedia Pustaka Umum', '2015', 15, 0, 4, NULL, NULL, NULL, NULL),
(1772, '9786026940766', 'Mora Dan Megan', 'DewiSavtr', 'Coconut Books', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1773, '9786026940124', 'Ipa Dan Ips', 'Chacaii', 'Coconut Books', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1774, '036000291452', 'Milea SuaraDariDilan', 'Pidi Baiq', 'Pastel Books', '2016', 15, 0, 4, NULL, NULL, NULL, NULL),
(1775, '619153001', 'Koment Minor', 'Tere Liye', 'PT.Gramedia Pustaka Umum', '2019', 15, 0, 4, NULL, NULL, NULL, NULL),
(1776, '9786022081555', 'Kala', 'Stefani Bella dkk', 'Gradien Mediatama', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1777, '9786026475879', 'Surat Kecil Untuk Tuhan', 'Agnes Davonar', 'Nauli Media', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1778, '9786025884962', 'Haifa', 'Ariska Khurnia', 'Aksara Plus', '2019', 15, 0, 4, NULL, NULL, NULL, NULL),
(1779, '615171014', 'Sunshine Becomes You', 'Ilana Tan', 'PT Gramedia Pustaka Utama', '2012', 15, 0, 4, NULL, NULL, NULL, NULL),
(1780, '9786025508653', 'Einstein', 'Yourkidlee', 'Coconut Books', '2018', 15, 0, 4, NULL, NULL, NULL, NULL),
(1781, '9786027870994', 'Dilan Dia Adalah Dilanku 1991', 'Pidi Baiq', 'Pastel Books', '2015', 15, 0, 4, NULL, NULL, NULL, NULL),
(1782, '9789797809058', 'Matt dan Mou', 'Wulanfadi', 'Gagas Media', '2016', 15, 0, 4, NULL, NULL, NULL, NULL),
(1783, '9786024301620', 'Perfect Couple', 'Asri Aci', 'PT.Bintang Belia', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1784, '9789797945206', 'Sebuah Usaha Melupakan', 'Boy Candra', 'Mediakita', '2016', 15, 0, 4, NULL, NULL, NULL, NULL),
(1785, '9786026940674', 'Melodylan', 'Asriaci', 'Coconut Books', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1786, '9786025257605', 'Fatamorgana', 'Prilly Latuconsina', 'The PanasDalam Publishing', '2018', 15, 0, 4, NULL, NULL, NULL, NULL),
(1787, '9786022914785', 'Hijrah Itu Cinta', 'Abay Adhitya', 'PT.Bentang Pustaka', '2018', 15, 0, 4, NULL, NULL, NULL, NULL),
(1788, '615221005', 'Tuhan Untuk Jemina', 'Indah Hanaco', 'PT.Gramedia Pustaka Utama', '-', 15, 0, 4, NULL, NULL, NULL, NULL),
(1789, '9786021036563', 'Cinta Yang Tak Biasa', 'Natta Reza dkk', 'Trans Media Pustaka', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1790, '9786020315669', 'You Are Not My Best Friend', 'Esi Lahur', 'PT.Gramedia Pustaka Utama', '2015', 20, 0, 4, NULL, NULL, NULL, NULL),
(1791, '9786020331584', 'Ayahku (Bukan) Pembohong', 'Tereliye', 'PT Gramedia Pustaka Utama', '2011', 15, 0, 4, NULL, NULL, NULL, NULL),
(1792, '9786026940063', 'Pacar Halal', 'Mia Elvira', 'Bintang Media', '2017', 30, 0, 4, NULL, NULL, NULL, NULL),
(1793, '9786024802981', 'Complicated', 'Deasy Serviana', 'PT Gramedia Pustaka Utama', '2019', 15, 0, 4, NULL, NULL, NULL, NULL),
(1794, '036000291452', 'Stalker In Love', 'Della Hiariej', 'Coconut Book', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1795, '9786020384760', 'Daun Yang Jatuh Tak Pernah Membenci Angin', 'Tereliye', 'PT Gramedia Pustaka Utama', '2010', 15, 0, 4, NULL, NULL, NULL, NULL),
(1796, '9786026716460', 'Gustira', 'Eko Ivano Winata', 'DAR! Mizan', '019', 15, 0, 4, NULL, NULL, NULL, NULL),
(1797, '9786025884986', 'Pangeran Surgaku', 'Ryani Amelia', 'Askara Plus', '2019', 15, 0, 4, NULL, NULL, NULL, NULL),
(1798, '9786237211006', 'Senja dan Pagi', 'Alffy Rev dkk', 'Loveable x Bhumi Anoma', '2019', 15, 0, 4, NULL, NULL, NULL, NULL),
(1799, '9786025508387', 'Tsani dan Athaya', 'Susan Arisanti', 'Coconut Books', '2018', 15, 0, 4, NULL, NULL, NULL, NULL),
(1800, '9786024304720', 'Raya', 'Inge Shafa', 'Bentang Belia', '2019', 15, 0, 4, NULL, NULL, NULL, NULL),
(1801, '9786027396074', 'Alexa Robinson', 'Dy', 'Kubus Media', '2016', 15, 0, 4, NULL, NULL, NULL, NULL),
(1802, '9786025508455', 'Galaksi', 'Poppi Pertiwi', 'Coconut Books', '2018', 15, 0, 4, NULL, NULL, NULL, NULL),
(1803, '9786020822129', 'Pulang', 'Tereliye', 'Republika Penerbit', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1804, '9786026714350', 'Jeda dan Spasi', 'Nisa Rahmah', 'Jeda dan Spasi', '2018', 15, 0, 4, NULL, NULL, NULL, NULL),
(1805, '9789797945251', 'Garis Waktu', 'Fiersa Besari', 'Media Kita', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1806, '9786025406577', 'Hidden', 'Asabell Audida', 'Romancious', '2018', 15, 0, 4, NULL, NULL, NULL, NULL),
(1807, '9786024300005', 'Friend Zone', 'Vanesa Marcella', 'Bentang Belia', '2016', 15, 0, 4, NULL, NULL, NULL, NULL),
(1808, '9789797809232', 'Pada Senja Yang Membawa Pergi', 'By Candra', 'Gagas Media', '2016', 15, 0, 4, NULL, NULL, NULL, NULL),
(1809, '9786020324784', 'Hujan', 'Tereliye', 'Republika Penerbit', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1810, '9789797945671', 'Malik dan Elsa', 'Boy Candra', 'Media Kita', '2018', 15, 0, 4, NULL, NULL, NULL, NULL),
(1811, '9786020318103', 'Coppelia', 'Novellina A', 'PT Gramedia Pustaka Utama', '2015', 15, 0, 4, NULL, NULL, NULL, NULL),
(1812, '9786020318578', 'At The Park', 'Kristi Jo', 'PT Gramedia Pustaka Utama', '2015', 15, 0, 4, NULL, NULL, NULL, NULL),
(1813, '9786027870864', 'Dilan Dia Adalah Dilanku 1990', 'Pidi Baiq', 'Pastel Books', '2018', 15, 0, 4, NULL, NULL, NULL, NULL),
(1814, '9786025508516', 'Dear Allah', 'Diana Febriantria', 'Coconut Books', '2018', 15, 0, 4, NULL, NULL, NULL, NULL),
(1815, '9786024302399', 'My Ice Girl', 'Pit Sansi', 'Bentang Belia', '2018', 15, 0, 4, NULL, NULL, NULL, NULL),
(1816, '9786025734427', 'Si Anak Kuat', 'Tereliye', 'Republika', '2019', 15, 0, 4, NULL, NULL, NULL, NULL),
(1817, '9786020321455', 'Mimpi Asa Cinta', 'Maizan Khairun Nissa', 'Gramedia Pustaka', '-', 15, 0, 4, NULL, NULL, NULL, NULL),
(1818, '9786022150336', 'Aminah', 'Nuriye Celegen', 'Kaysa Media', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1819, '9789790998353', 'Asmara Diatas Haram', 'Zulkifli L Muchdi', 'Erlangga', '2012', 15, 0, 4, NULL, NULL, NULL, NULL),
(1820, '9786024200220', 'Teman Chatting Misterius', 'Wanda Amyra Mayshara', 'DAR! Mizan', '2016', 1, 0, 4, NULL, NULL, NULL, NULL),
(1821, '9786022428978', 'From Hater To Lover', 'Aisyah Aulia Sudrajat', 'DAR! Mizan', '2016', 1, 0, 4, NULL, NULL, NULL, NULL),
(1822, '9786024204747', 'Perjalanan Sang Juara', 'Azzelia Maulidya Hardiansyah', 'DAR! Mizan', '2017', 1, 0, 4, NULL, NULL, NULL, NULL),
(1823, '9786024204273', 'Sekolah Alam Seru', 'Safina Zahra Ayesha', 'DAR! Mizan', '2017', 2, 0, 4, NULL, NULL, NULL, NULL),
(1824, '9786024204730', 'Menjelajah Dunia Ajaib', 'Aisyah Alifya Azzahra', 'DAR! Mizan', '2012', 2, 0, 4, NULL, NULL, NULL, NULL),
(1825, '9786024200022', 'Pink Cupcake', 'Ramya Hayasrestha Sukardi', 'DAR! Mizan', '2016', 4, 0, 4, NULL, NULL, NULL, NULL),
(1826, '9786024200381', 'Senyum Manis Reisya', 'Meila Riski Azzahra', 'DAR! Mizan', '2016', 3, 0, 4, NULL, NULL, NULL, NULL),
(1827, '9786024203726', 'Me And Mermaid', 'Balkis Shafira', 'DAR! Mizan', '2017', 4, 0, 4, NULL, NULL, NULL, NULL),
(1828, '9786024204846', '25 Beautiful Friendship', 'Annisa Zharotushama Balqis', 'DAR! Mizan', '2017', 4, 0, 4, NULL, NULL, NULL, NULL),
(1829, '9789790338371', 'Cinta Bertabur Dilangit Mekkah', 'Roidah', 'Esensi', '2009', 15, 0, 4, NULL, NULL, NULL, NULL),
(1830, '9789790999725', 'Pelabuhan Terakhir', 'Roidah', 'Erlanga', '2012', 15, 0, 4, NULL, NULL, NULL, NULL),
(1831, '9789790999732', 'Musim Baru', 'Roidah', 'Erlangga', '2012', 15, 0, 4, NULL, NULL, NULL, NULL),
(1832, '9789790999718', 'Berwisata Ke Surga', 'Roidah', 'Erlangga', '2012', 15, 0, 4, NULL, NULL, NULL, NULL),
(1833, '9786020935676', 'Miqat Kemerdekaan', 'Roidah', 'Erlangga', '2017', 15, 0, 4, NULL, NULL, NULL, NULL),
(1834, '9786027031944', 'Rindu Tanah Jeruk : Palestina', 'M.Thoha Anwar', 'Emir', '2014', 15, 0, 4, NULL, NULL, NULL, NULL),
(1835, '9789790998360', 'Kesempatan Hidup Kedua', 'Roidah', 'Erlangga', '2012', 15, 0, 4, NULL, NULL, NULL, NULL),
(1836, '9789790332669', 'Kunang - Kunang & Bidadari', 'Sri Hayati Asri', 'Erlangga', '2008', 15, 0, 4, NULL, NULL, NULL, NULL),
(1837, '9786022501718', '7 Menit Mengenal Islam Tasmara', 'K.H. Totok', 'Gema Insani', '2019', 4, 0, 5, NULL, NULL, NULL, NULL),
(1838, '9789791986373', 'My First Islam', 'Muhammad Abdul Ghaffar', 'Tifel Mahira', '2010', 1, 0, 5, NULL, NULL, NULL, NULL),
(1839, '9786027733206', '35 Kisah Inspiratif', 'M. Irfan& Laila Aisya', 'Pinang Merah Publisher', '2010', 1, 0, 5, NULL, NULL, NULL, NULL),
(1840, '9789793653242', '24 Jam Bersama Allah', 'Muhammad Hasan Yusuf', 'Aqwam', '2012', 1, 0, 5, NULL, NULL, NULL, NULL),
(1841, '9786027641587', 'Kesalahan-Kesalahan Yang Membuat Doamu Tidak Musta', 'Abdul Wahid', 'DIVA Press', '2012', 1, 0, 5, NULL, NULL, NULL, NULL),
(1844, '9786027663930', 'Orang-orang Yang Di Doakan Malaikat', 'D.A. Pakih SatiCa', 'DIVA Press', '2013', 1, 0, 5, NULL, NULL, NULL, NULL),
(1845, '9786027558885', 'Menjadi Perempuan Yang Dirindukan Syurga', 'Maria Hidayah', 'ABATA Press', '2013', 1, 0, 5, NULL, NULL, NULL, NULL),
(1846, '9786027665545', 'Akibat-akibat Fatal Meremehkan Shadaqah', 'Furqan al-Azizy', 'DIVA Press', '2013', 1, 0, 5, NULL, NULL, NULL, NULL),
(1847, '9789790771642', 'Sakit Membawa Nikmat', 'Prof.Dr.K.H. Didin Hafidhuddin', 'Gema Insani', '2010', 1, 0, 5, NULL, NULL, NULL, NULL),
(1848, '-', 'Menjadi Muslim Presetatif', 'Abdullah Gymnastian', 'Qolbunsalim Press', '2002', 1, 0, 5, NULL, NULL, NULL, NULL),
(1849, '9789791490368', 'Menciptakan Keajaiban Hidup', 'Akhmad Arqom', 'JP Books', '2008', 1, 0, 5, NULL, NULL, NULL, NULL),
(1850, '9789791650113', 'Menjadi Muslim Yang Gaul', 'Abu al-Barakat Badruddin Muhammad al-Ghazzi', 'Ramadhan Press', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1851, '9786021112014', 'Nabi Muhammad SAW (Lahirnya Sang Pencerah)', 'Gerdi Wiratakusuma', 'PT. Maleo Creative', '2004', 1, 0, 5, NULL, NULL, NULL, NULL),
(1852, '9789791803519', 'Susah Itu Mudah', 'Ustadz Yusuf Mansyur', 'Salamadani', '2008', 2, 0, 5, NULL, NULL, NULL, NULL),
(1853, '9789791803526', 'Kaya Lewat Jalan Tol', 'Ustadz Yusuf Mansur', 'Salamadani', '2008', 1, 0, 5, NULL, NULL, NULL, NULL),
(1854, '9789791803502', 'Buat Apa Susah', 'Ustadz Yusuf Mansur', 'Salamadani', '2008', 1, 0, 5, NULL, NULL, NULL, NULL),
(1855, '9789791803540', 'Kado Panjang Umur', 'Ustadz Yusuf Mansur', 'Salamadani', '2008', 2, 0, 5, NULL, NULL, NULL, NULL),
(1856, '9789791803533', 'Kado Ingat Mati', 'Ustadz Yususf Mansur', 'Salamadani', '2008', 1, 0, 5, NULL, NULL, NULL, NULL),
(1857, '-', 'Juz Amma', 'Drs. Abu Hanifah', 'PT. Karya Yoha Putra', '1981', 1, 0, 5, NULL, NULL, NULL, NULL),
(1859, '9789790670419', 'Tafsir Surah Ayat-Ayat Doa', 'Drs.M Durri Annaim M.Pd.I', 'PT Sindur Press', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1863, '9789790489862', 'Adab Dalam Beribadah', 'M. Basuki M.S.I', 'Aneka Ilmu', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1865, '9789790483286', 'Kerukunan Dalam Perbedaan', 'Khusnil Khotimah S.Pd', 'CV. Pamularsih', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1866, '9789790530560', 'Toleransi Beragama', 'Dwi Ananta Devi', 'CV Pamularsih', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1867, '9789790701236', 'Menjadi Pribadi Yang Selalu Bersyukur', 'Iwan Wibowo', 'Aneka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1868, '9789790510333', 'Kerukunan Umat Beragama', 'Heliarta', 'CV.Ghyyas Putra', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1869, '9789790510180', 'Akhlak Siswa Terhadap Teman', 'Drs Loso', 'CV Ghyyas Putra', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1870, '978979067042', 'Tafsir Surah Yasin', 'Drs.M.Durri Annaim M.Pd.I', 'PT Sindur Press', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1871, '9789790530836', 'Tanya Jawab Seputar Rukun Islam', 'Drs. Hj. Sri. Mulyati', 'CV. Pamularsih', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1872, '9789790530850', 'Doa Seputar Ibadah', 'Sarjun', 'CV Pamularsih', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1873, '9789790216044', 'Terapi Anak Korban Bencana', 'Lilik BS', 'PT Bengawan Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1874, '-', 'Allah Maha Penolong', 'Ust Yusuf Mansur', 'Salamadani', '2008', 1, 0, 5, NULL, NULL, NULL, NULL),
(1875, '-', 'Khitan dan Kesehatan', 'Ihsanuddin', 'CV Pamularsih', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1877, '-', 'Teori Dan Praktek Ekonomi Islam', 'Prof.M.Abdul Maman M.A.Ph.D', 'PT. Dhana Bhakti', '1997', 2, 0, 5, NULL, NULL, NULL, NULL),
(1878, '9789791583649', '101 Jejak Tokoh Islam Indonesia', 'Badiatul Roziqi Dkk', 'CV-Nurjannah', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1879, '9789790536', 'Menggapai Maisnya Iman', 'Syaikh Shalah', 'Pustaka Azzan', '1998', 1, 0, 5, NULL, NULL, NULL, NULL),
(1880, '-', 'Panduan Shalat & Doa', 'Ust.Umar Er', 'Lingkar Media', '2012', 1, 0, 5, NULL, NULL, NULL, NULL),
(1881, '-', 'Dahsyatnya Sedekah & Shalat Dhuha', 'Imam Turmudzi', 'Dua Media', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1882, '979964564', 'Aku Anak Shaleh', 'Ust Hambali', 'Tawadhu', '2015', 3, 0, 5, NULL, NULL, NULL, NULL),
(1883, '-', 'Misteri 7 Malam Pertama Di Alam Kubur', 'Lukman Hakim S.Ag', 'Media Pustaka', '2014', 1, 0, 5, NULL, NULL, NULL, NULL),
(1884, '-', ' Dahsyatnya 25 Kisah Nabi & Rasul', 'Ust. Ahmad Filyan al- Hazza', 'PJ Surabaya', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1885, '9789790700691', 'Jilbab Wanita Muslimah', 'Al-Imam Muhammad Nashirudin Al-Albani', 'Pustaka Samayyah', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1886, '9789790700697', 'Muhammad Pemimpin Yang Amanah Akidah Akhlak', 'Muhammad Saad Ramadhan Al-Buti', 'Aneka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1887, '9789790700758', 'Kiat Membersihkan Ucapan', 'Syaikh Nawari Ibnu Umar Al Jawi', 'Aneka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1888, '978979070076', 'Wasiat Orang Tua Kepada Anak', 'Muhammad Syakir', 'Aneka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1889, '-', 'Pedoman Puasa', 'Prof.Dr.Teungku Muhammad Hasbi Ash Shiddieqy', 'PT Pustaka Riski Putra', '2005', 1, 0, 5, NULL, NULL, NULL, NULL),
(1890, '-', 'Mutiara Kisah Teladan & Humor Sufi', 'Abu Khalid Ma', 'Penerbit Amelia Surabaya', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1891, '978602822843', 'Pedoman Lengkap Shalat Shalat Sunah', 'Ust.M Munir Azhar', 'Sangkala', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1892, '-', 'Kisah Perjuangan Walisongo', 'Mb Rahimsyah.AR', 'Dua Media', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1893, '9789792498981', 'Bimbingan Karier Untuk Remaja Muslim', 'Drs Tuwuh Trisnayadi', 'PT Pustaka Insan Mandiri', '2007', 1, 0, 5, NULL, NULL, NULL, NULL),
(1894, '9796260530', 'Esei-Esei Intelektual Muslim Pendidikan Islam', 'Prof.Dr.Azyumardi Azra.MA', 'PT Logas Wacana Ilmu', '1999', 1, 0, 5, NULL, NULL, NULL, NULL),
(1895, '-', 'Shalat & Berdoa di Sertai Juz Amma', 'Ust.Labib Mz', 'Bintang Usaha Jaya', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1896, '9799791122312', 'Meraih Indahnya Khusyu', 'Ibnu Abbas As Salim', 'Alita Media', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1897, '9789792623444', 'The Miracle of Givina', 'Ust Yusuf Mansur', 'Zikrul Hakim', '2008', 1, 0, 5, NULL, NULL, NULL, NULL),
(1898, '9789792923815', '25 Nabi dan Rasul', 'Chandra Kurniawan', 'Jabal', '2017', 1, 0, 5, NULL, NULL, NULL, NULL),
(1899, '9789790489752', 'Tata Cara Bersuci Dari Hadis & Najifi', 'Dewi Quratul Aeni S.Ag', 'Aneka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1900, '9789790489882', 'Zakat Fitrah dan Zakat Mal', 'Abdul Jalil', 'Aneka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1901, '9789796670311', 'Yuk Belajar Wudu dan Tayamum', 'M.Basuki M.S.I', 'PT Sindur Press', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1902, '9789790510876', 'Sains Dalam AlQuran', 'Agus Monif S.P.D', 'CV.Ghyyas Putra', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1903, '9789790700420', 'Mengenal Huruf Jar', 'M.Syarif Hidayatullah S.Ag', 'Aneka Ilmu', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1904, '9789790489844', 'Amalan Dihari Raya', 'Marfuah S.Ag', 'Aneka Ilmu', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1905, '9789790510869', 'Tekhnik Menghafal Al-Quran', 'Sabit Alfatoni', 'CV.Ghyyas Putra', '-', 2, 0, 5, NULL, NULL, NULL, NULL),
(1906, '9789790489851', 'Amalan - Amalan diBulan Ramadhan', 'Marufah S.Ag', 'Aneka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1907, '9789790215740', 'Nama - Nama Neraka dan Penghuninya', 'Ulfa Qamariah', 'PT Bengawan Ilmu', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1908, '9789799107725', 'Adab Anak Berbakti Pada Orang Tua', 'Sunarno', 'PT Sindur Press', '2010', 1, 0, 5, NULL, NULL, NULL, NULL),
(1909, '9789790510920', 'Kebersamaan dan Shalat Berjamaah', 'Subkhi', 'CV.Ghyyas Putra', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1910, '9789790510951', 'Keutamaan Memberi dan Menyayangi Anak Yatim', 'Afifah Suparti', 'CV.Ghyyas Putra', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1911, '9789790510968', 'Amal Saleh dan Orang - Orang Munafik', 'M.Ghozali', 'CV.Ghyyas Putra', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1912, '9789790510944', 'Takwa Niat dan Keikhlasan', 'Muthohirin', 'CV.Ghyyas Putra', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1913, '9789790510937', 'Birul Walidain', 'Muthohirin', 'CV.Ghyyas Putra', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1914, '9786022550938', 'Amalan - Amalan Ringan Berfadhilah Sangat Dahsyat', 'Syaiful Bahri S.I', 'DIVA Press', '2003', 1, 0, 5, NULL, NULL, NULL, NULL),
(1915, '9789799633262', 'Menyingkap Mukjizat Shalat Dhuha', 'Muhammad Makhdlori', 'DIVA Press', '2007', 2, 0, 5, NULL, NULL, NULL, NULL),
(1916, '97860296985956', 'Menjawab Kontroversi Seputar Islam', 'Dr Soeed Ismaeel Sieny', 'Tartil Institute', '2015', 1, 0, 5, NULL, NULL, NULL, NULL),
(1917, '9786027558168', 'Menguak Misteri Kemuliaan Shalat Subuh', 'Jubair Tablig Syahid', 'Cable Book', '2012', 1, 0, 5, NULL, NULL, NULL, NULL),
(1918, '-', ' Tutunan Berpidato & Pembawa Acara', 'Ust LABIB Mz', 'Bintang Usaha Jaya', '2002', 1, 0, 5, NULL, NULL, NULL, NULL),
(1919, '-', 'Modul Pelatihan Auditor Internal Halal', '-', '-', '2003', 1, 0, 5, NULL, NULL, NULL, NULL),
(1920, '9879799392626', 'Wanita Berjilbab VS Wanita Bersolek', 'Ibrahim BinFathi Bin Abdul Al-Muqtadim', 'Dar Aqidah', '2003', 1, 0, 5, NULL, NULL, NULL, NULL),
(1922, '-', '25 Kisah Nabi Dan Rasul', 'MB Rahimsyah AR dkk', 'Nidya Pustaka', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1923, '9789790771189', 'Anakku Cintailah Al-Quran', 'Dr. Saad Riyadh', 'GEMA IBNSANI', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1924, '9786029922363', 'Doa Penenang Hati', 'Neti Suriana', 'Rumah Ide', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(1925, '-', 'Hidup Bahagia Tanpa Riba', 'Abu Abdirrahman', '-', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1926, '9793862173', 'Senandung Cinta', 'Ust Jefri Al-Bukhari', 'Pustaka AL-Mawardi', '2006', 1, 0, 5, NULL, NULL, NULL, NULL),
(1927, '9786022881605', 'Panduan Menghafal Bacaan & Gerakan Shalat', 'H. Muhammad', 'Buku Pintar', '2015', 1, 0, 5, NULL, NULL, NULL, NULL),
(1929, '-', 'Sholawat Seribu Hajat', 'Zainul Mu ien Husni', 'Pustaka Amaliyah', '2012', 1, 0, 5, NULL, NULL, NULL, NULL),
(1930, '-', 'Ngefriend Sama Islam', 'Teguh Iman Perdana', 'DAR! Mizan', '2006', 1, 0, 5, NULL, NULL, NULL, NULL),
(1931, '-', 'Bengkel Ahklak', 'Fariq bin Gasim Anuz', 'Darul Faleh', '2002', 1, 0, 5, NULL, NULL, NULL, NULL),
(1932, '-', 'Happy With Zikir', 'M.Rojaya', 'PT Mizan Bunaya Kreativa', '2006', 1, 0, 5, NULL, NULL, NULL, NULL),
(1933, '-', '25 Sukses Pengusaha Muslim', 'Eep Khuneefi', 'PT Variasari Malindo', '2015', 1, 0, 5, NULL, NULL, NULL, NULL),
(1934, '-', 'Kemana Larinya RUH?', 'KHA Zaenuri Al - Yusak', 'Mutiara Ilmu', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1935, '-', 'Mukjizat Nabiku Muhammad', 'Muhammad Ash-Shayyim', 'Gema Insani', '2003', 2, 0, 5, NULL, NULL, NULL, NULL),
(1936, '-', '38 Sifat Generasi Unggulan', 'Dr.Majdi Al-Hilali', 'Buku Langganan', '1999', 1, 0, 5, NULL, NULL, NULL, NULL),
(1937, '-', 'Adab Dalam Agama', 'Imam Ghazali', 'Gema Insani Press', '1991', 2, 0, 5, NULL, NULL, NULL, NULL),
(1938, '-', 'Seni Dalam  Pandangan Islam', 'Abdurahmman Al Baghdadi', 'Gema Insani Press', '1991', 2, 0, 5, NULL, NULL, NULL, NULL),
(1939, '-', 'Pergilah Kejalan Islam', 'Ust Husni Adham Jarror', 'Gema Insani Press', '1989', 1, 0, 5, NULL, NULL, NULL, NULL),
(1940, '-', 'Khutbah Arafah', 'Kh Abdullah Gymnaster', 'Pustaka Grafika', '2002', 1, 0, 5, NULL, NULL, NULL, NULL),
(1941, '-', 'Kisah-Kisah Dalam Surat Al - Kahfi', 'Prof.Dr.M.Mutawalli Asy Syarawi', 'Gema Insani Press', '1990', 1, 0, 5, NULL, NULL, NULL, NULL),
(1942, '-', 'Saat Birahi Menhampiri Dirimu', 'Muhammad bin Abdullah Ad Duwaisy', 'Khazanah Ilmu', '1996', 1, 0, 5, NULL, NULL, NULL, NULL),
(1943, '-', 'Bukti Nyata Adanya Allah', 'Prof.Dr.M.Mutawalli Asy Syarawi', 'Gema Insani Press', '1990', 1, 0, 5, NULL, NULL, NULL, NULL),
(1944, '9799795615131', 'Keutamaan Istigfar', 'Helmy Laksono', 'Gema Insani', '1998', 1, 0, 5, NULL, NULL, NULL, NULL),
(1945, '-', 'Hikmah Ramadhan', 'A.T Mundzir', '-', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1946, '9789790530874', 'Salat Dalam Keadaan Darurat', 'Muharom', 'CV.Pamularsih', '-', 2, 0, 5, NULL, NULL, NULL, NULL),
(1947, '9789790489325', 'Garib dan Musykilat Dalam Bacaan Al Quran', 'Sokibul Maarif', 'Aneka Ilmu', '-', 2, 0, 5, NULL, NULL, NULL, NULL),
(1948, '9789790489325', 'Islam Itu Indah', 'Dewi Quratul Aeni S.Ag', 'CV Pamularsih', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1949, '9789790489844', 'Amalan Dihari Raya', 'Harfuah S.Ag', 'Aneka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1950, '9789790670396', 'Mengenal Mandi Wajib & Sunah', 'Dewi Quratul Aeni S.Ag', 'PT Sindur Press', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1951, '9789790700437', 'Al-Mubtada Wal-Khabar', 'Mahruz S.Pd.I', 'Aneka Ilmu', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1952, '9789790489646', 'Meneladani Perilaku Kanak - Kanak Nabi Muhammad', 'Siti Aesyah', 'Anka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1953, '-', 'Islam Agama Dakwah Bukan Revolusi', 'Dr.Muhammad Al-Bahy', 'Kalammulia', '1997', 1, 0, 5, NULL, NULL, NULL, NULL),
(1954, '-', 'Doa - Doa', 'Al Ustadz Abu Umamah Abdurrahman', 'Hikmah Anak Sholih', '2003', 1, 0, 5, NULL, NULL, NULL, NULL),
(1955, '9789790670389', 'Tata Cara Pengurusan Jenazah', 'Abdul Jalil S.Pd.I', 'PT Sindur Press', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1957, '9789790489807', 'Bentuk - Bentuk Muamalah Dalam Islam', ' Nur Afifah S.H.I', 'Aneka Ilmu', '-', 2, 0, 5, NULL, NULL, NULL, NULL),
(1958, '9789790530904', 'Mengenal Puasa Wajib dan Sunah', 'Marfuah.S.Pd.i', 'CV Pamularsih', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1959, '9789790215665', '7 Dosa Besar Yang Membahayakan', 'Siti Aesyah', 'PT Bengawan Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1960, '-', 'Manisnya Buah Keimanan', 'Syaikh Abdurrahman bin Nashir As-Sa Di', 'Adhwa Us Salaf', '2004', 1, 0, 5, NULL, NULL, NULL, NULL),
(1961, '9789790530935', 'Ketentuan Shalat Jamaah & Shalat Jumat', 'M.Basuki', 'CV.Pamularsih', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1962, '9789790530935', 'Mengenal Hari Besar Islam', 'Marfuah S.Pd.I', 'CV.Pamularsih', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1963, '9789790489875', 'Zikir dan Berdoa', 'Nur Afifah S.H.I', 'Aneka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1964, '9789790489622', 'Meneladani Keimanan Bilal bin Rabah', 'Sulistyawati', 'Aneka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1965, '9789790489615', 'Meneladani Keimanan Siti Masyitoh', 'Sulistyawati', 'Aneka Ilmu', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1966, '9789790489899', 'Mengenal Pemberian Dalam Agama Islam', 'Siti Aesyah', 'Aneka Ilmu', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1967, '9780700932', 'Mengenal Allah Melalui Sifat-Sifatnya', 'Siti Aesyah', 'PT Bengawan Ilmu', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1968, '9784000108', 'Fiqih Sunnah (7)', 'Sayyid Sabiq', 'PT Al-Maarif Bandung', '1990', 1, 0, 5, NULL, NULL, NULL, NULL),
(1969, '9794000302', 'Fiqih Sunnah (6)', 'Sayyid Sabiq', 'PT Al-Maarif Bandung', '1980', 3, 0, 5, NULL, NULL, NULL, NULL),
(1970, '9784000310', 'Fiqih Sunnah (7)', 'Sayyid Sabiq', 'PT Al-Maarif Bandung', '1981', 1, 0, 5, NULL, NULL, NULL, NULL),
(1971, '9794000108', 'Fiqih Sunnah (10)', 'Sayyid Sabiq', 'PT Al-Maarif Bandung', '1990', 1, 0, 5, NULL, NULL, NULL, NULL),
(1972, '9786029555042', '7 Cara Agar Rezeki Semakin Bertambah', 'Akhmad Muhaiman Azzet', 'DIVA Press', '2010', 3, 0, 5, NULL, NULL, NULL, NULL),
(1973, '978602955504', 'Mengenal Huruf Hijaiyah Sifat dan Makhrajnya', 'Sokibul Maarif', 'Aneka Ilmu', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1974, '9789790530911', 'Mengenal Rukun Islam', 'Marfuah S.Pd.I', 'CV Pamularsih', '2009', 2, 0, 5, NULL, NULL, NULL, NULL),
(1975, '9789790489905', 'Bahaya Khamar & Obat Terlarang', 'M.Basuki M.S.I', 'Aneka Ilmu', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1976, '9789799107732', 'Siswa Berakhlak Mulia', 'Siti Sulastri S.H', 'PT Sindur Press', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1977, '9789793653570', 'Sedekah Tanpa Uang', 'Fahrur Muis', 'Aqwam', '2007', 1, 0, 5, NULL, NULL, NULL, NULL),
(1978, '978602255320', 'Ketika Mulut Terkunci', 'H.Muhammad Yusuf bin Abdurrahman', 'Sabil', '2013', 1, 0, 5, NULL, NULL, NULL, NULL),
(1979, '-', 'Islam Agama Fitrah', 'Prof. Syekh Abdul Aziz Syawisy', 'Bumi Aksara', '1996', 1, 0, 5, NULL, NULL, NULL, NULL),
(1980, '-', 'Dahsyatnya Doa Coy', 'Solikhin Abu Izzuddin', 'Pro Media', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1981, '-', 'Nikmatnya Bersyukur', 'Achmad Sunarto', 'Menara Suci', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1982, '-', 'Fiqih Galak Gembil', 'Santri Madrasah Diniyah Muallimin Muallimat Darut ', 'Santri Madrasah Diniyah Muallimin Muallimat', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1983, '9789791651318', 'Jalan Pintas Menghapus Dosa', 'Syaikh Shalih Al-Munajid', 'Aurath', '2008', 1, 0, 5, NULL, NULL, NULL, NULL),
(1985, '9786024244542', 'Guru Ngaji', 'Drs. H. A. Bashori Shanhaji M. Si', 'Muara Progresif', '2016', 1, 0, 5, NULL, NULL, NULL, NULL),
(1986, '9789791254083', 'Menangis', 'Shalih Bin Shawalih Al-Hasawi', 'Darul Haq', '2007', 1, 0, 5, NULL, NULL, NULL, NULL),
(1987, '9786029628913', 'Jurus Jitu Melawan Hawa Nafsu', 'Mufti Mubarak', 'PT. Java Pustaka Media Utama', '2010', 1, 0, 5, NULL, NULL, NULL, NULL),
(1988, '97879790392908', 'Risalah Ramadhan', 'Syaikh Abdulah Al-Jarullah', 'Aqwam', '2013', 1, 0, 5, NULL, NULL, NULL, NULL),
(1989, '9789791367707', 'La Tahzan For Mothers', 'Asma Nadia dkk', 'PT Lingkar Pena Kreativa', '2008', 1, 0, 5, NULL, NULL, NULL, NULL),
(1990, '9786029910933', 'Pesan-Pesan Terakhir Rasulullah', 'Said bin Ali Wahfal Qahthani', 'Lentera Keluarga Bahagia', '2013', 1, 0, 5, NULL, NULL, NULL, NULL),
(1991, '9789791943055', 'Membawa 10 Pintu Rizki', 'Ahmad Zacky El Shafa', 'Delta Prima Press', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1992, '9786028214056', 'Sehat & Bertambah Lewat Sedekah', 'Abu Fajar Al-Qalami', 'Pustaka Media', '2008', 1, 0, 5, NULL, NULL, NULL, NULL),
(1993, '-', 'Pegangan Muslim', 'Ahmad bin Muhammad Awwad', 'Dar Ibnu Atsir', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(1994, '9795613081', 'Mendidik Anak Secara Islam', 'Jaudah Muhammad Awwad', 'Gema Insani Press', '1995', 1, 0, 5, NULL, NULL, NULL, NULL),
(1995, '-', 'Ternyata Akhirat Tidak Kekal', 'Agus Mustaf', 'Padma Press', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1996, '-', '30 Hari Berburu Berkah', 'Zaim El Mubarok', 'Mashun', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(1997, '-', 'Pantangan dan Anjuran Shalat Dhuha', 'John Afifi', 'Sabda Media', '2012', 1, 0, 5, NULL, NULL, NULL, NULL),
(1998, '-', 'Kiat-Kiat Sukses', 'K.H.M.Rusli Amin MA', 'Al-Mawardi Prima', '2006', 1, 0, 5, NULL, NULL, NULL, NULL),
(1999, '-', 'Mendulang Rezeki Bermodal Hobi', 'Muhammad Musrofi', 'PT Pustaka Insan Madani', '2008', 1, 0, 5, NULL, NULL, NULL, NULL),
(2000, '-', 'Pendidikan Agama Islam', 'Drs.H.Abu Ahmadi dkk', 'PT Tiga Serangkai Pustaka Mandiri', '1995', 1, 0, 5, NULL, NULL, NULL, NULL),
(2001, '-', 'Tafsir Al-Azhar', 'Prof.Drs Hamka', 'PT Pustaka Panjimas', '2000', 1, 0, 5, NULL, NULL, NULL, NULL),
(2002, '-', 'Akibat-Akibat Fatal Meremehkan Sholat Taubat', 'Rizam Alzid', 'DIVA Press', '2013', 1, 0, 5, NULL, NULL, NULL, NULL),
(2003, '-', 'La Tahzan', 'Dr.Aidh Al-Qarni', 'Pustaka Araska Media Utama', '2012', 2, 0, 5, NULL, NULL, NULL, NULL),
(2004, '-', 'Mayoritas Wanita Masuk Neraka', 'Subhan Nur Lc', 'Tiga Serangkai', '2009', 1, 0, 5, NULL, NULL, NULL, NULL),
(2005, '-', 'Akhlak Mulia', 'Drs.Munawar', 'CV Al Maruf Surabaya', '2002', 1, 0, 5, NULL, NULL, NULL, NULL),
(2006, '9786029785579', 'Doa & Amalan Agar Mendapat Panggilan', 'Khalifi Elyos Bahar', 'DIVA Press', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(2007, '-', 'Ziarah Haji & Umrah', '-', '-', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(2008, '9786027641334', 'Misteri Sobeknya Baju Nabi Yusuf AS', 'Masykur Arif Rohman', 'DIVA Press', '2012', 1, 0, 5, NULL, NULL, NULL, NULL),
(2009, '-', 'Problematika Muslimah Masa Kini diEra Globalisasi', 'Ust.Labib Mz', 'Bintang Usaha Jaya', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(2010, '9786022557128', 'Aktivasi Sholawat Nabi', 'Ustadz Rusdianto', 'Sabil', '2014', 1, 0, 5, NULL, NULL, NULL, NULL),
(2011, '-', 'Panduan Penyelenggaraan Pesantren Kilat', '-', '-', '2009', 0, 0, 5, NULL, NULL, NULL, NULL),
(2012, '-', 'Penuntun Shalat Wajib dan Sunnah', 'Drs.M.Syarifuddin', 'Cetera', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(2013, '-', 'Pedoman Shalat Sunnah', 'Drs.A.Suad MZ', 'CV Al-Ihsan', '1990', 1, 0, 5, NULL, NULL, NULL, NULL),
(2014, '-', 'Tentang Dengki', 'Immun El Blitary', 'Al-Ikhlas', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(2015, '-', 'Hari Kiamat dan Kehidupan Akhirat', 'Imam Abdurahmman bin Ahmad', 'Amelia', '2005', 1, 0, 5, NULL, NULL, NULL, NULL),
(2016, '9786022417965', 'Ya Rabb Aku Belau', 'Aiee Ahmad dkk', 'Erlangga', '2014', 1, 0, 5, NULL, NULL, NULL, NULL),
(2017, '-', 'Untaian Mutiara Islam', 'M Abdul Mudjieb AS', 'Putra Pelajar', '2000', 1, 0, 5, NULL, NULL, NULL, NULL),
(2018, '-', 'Kisah Teladan 25 Nabi dan Rasul', 'Kabib MZ dkk', 'Bintang Usaha Jaya', '1998', 1, 0, 5, NULL, NULL, NULL, NULL),
(2020, '-', 'Al-Quranulkarim Samsia (15 Baris Khat Ustman)', '-', '-', '-', 21, 0, 5, NULL, NULL, NULL, NULL),
(2021, '-', 'Syaamil Al-Quran', '-', '-', '-', 1, 0, 5, NULL, NULL, NULL, NULL),
(2022, '9789793772462', 'Ensiklopedi Islami Ahkamil', 'Muhammad bin Ibrahim bin Abdullah AT-Tuwaijini', 'Team Darus Sunnah', '2012', 1, 0, 5, NULL, NULL, NULL, NULL),
(2025, '9789793535855', 'Ensiklopedia Nabi Muhammad SAW Sebagai Utusan Alla', 'Zaidah Kusumawati MSI dkk', 'PT Lentera Abadi', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(2026, '9789793535869', 'Ensiklopedia Nabi Muhammad SAW Sebagai Keturunan B', 'Zaidah Kusumawati MSI dkk', 'PT Lentera Abadi', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(2027, '9789793535876', 'Ensiklopedia Nabi Muhammad SAW Diantara Para Sahab', 'Zaidah Kusumawati MSI dkk', 'PT Lentera Abadi', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(2028, '9789793535883', 'Ensiklopedia Nabi Muhammad SAW Diantara Para Shaha', 'Zaidah Kusumawati MSI dkk', 'PT Lentera Abadi', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(2029, '9789793535890', 'Ensiklopedia Nabi Muhammad SAW Dalam Ragam Gaya Hi', 'Zadiah Kusumawati MSI dkk', 'PT Lentera Abadi', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(2030, '9789793535906', 'Ensiklopedia Nabi Muhammad SAW dalam Ragam Gaya Hi', 'Zadiah Kusumawati MSI dkk', 'PT Lentera Abadi', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(2031, '9789793535903', 'Ensiklopedia Nabi Muhammad SAW Sebagai Pendidik (J', 'Zaidah Kusumawati MSI dkk', 'PT Lentera Abadi', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(2032, '9789793535920', 'Ensiklopedia Nabi Muhammad SAW Sebagai Wirausahawa', 'Zaidah Kusumawati MSI dkk', 'PT Lentera Abadi', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(2033, '9789793434937', 'Ensiklopedia Nabi Muhammad SAW Sebagai Pemimpin (J', 'Zaidah Kusumawati MSI dkk', 'PT Lentera Abadi', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(2034, '9789793535944', 'Ensiklopedia Nabi Muhammad SAW Dianugrahkan Mukjiz', 'Zaidah Kusumawati MSI dkk', ' PT Lentera Abadi', '2011', 1, 0, 5, NULL, NULL, NULL, NULL),
(2035, '9788276612', 'Suplemen Ensiklopedi Islam 1 A-K', 'Prof.Drs.Azyumardi Azra M.A', 'PT Ikhtiar Baru Van Hoeve', '1996', 1, 0, 5, NULL, NULL, NULL, NULL),
(2036, '9798276620', 'Ensiklopedi Islam 1 Aba-Far', 'Prof.Drs.Azyumardi Azra M.A', 'PT Ikhtiar Baru Van Hoeve', '1997', 3, 0, 5, NULL, NULL, NULL, NULL),
(2037, '979827663', 'Ensiklopedi Islam 2 Fas-Kal', 'Prof.Drs.Azyumardi Azra M.A', 'PT Ikhtiar Baru Van Hoeve', '1997', 3, 0, 5, NULL, NULL, NULL, NULL),
(2038, '9798276647', 'Ensiklopedi Islam 3 Kal-Nah', 'Prof.Drs.Azyumardi Azra M.A', 'PT Ikhtiar Baru Van Hoeve', '1997', 3, 0, 5, NULL, NULL, NULL, NULL),
(2039, '9788276655', 'Ensiklopedi Islam 4 Nah-Sya', 'Prof.Drs.Azyumardi Azra M.A', 'PT Ikhtiar Baru Van Hoeve', '1997', 3, 0, 5, NULL, NULL, NULL, NULL),
(2040, '9788276663', 'Ensiklopedi Islam 5 Sya-Zun', 'Prof.Drs.Azyumardi Azra M.A', 'PT Ikhtiar Baru Van Hoeve', '1997', 3, 0, 5, NULL, NULL, NULL, NULL),
(2041, '9794331392', 'Atlas Budaya Islam', 'Ismail R.Al-Faruqi', 'Penerbit Mizan', '1998', 1, 0, 5, NULL, NULL, NULL, NULL),
(2042, '-', 'Sebuah Naskah Sandiwara', 'Arifin C Noer', 'Grafiti', '-', 1, 0, 4, NULL, NULL, NULL, NULL),
(2045, '9793960080', 'Pelangi Dilangit Nusantara', 'Acep Yonny dkk', 'Empat Pilar', '2005', 22, 0, 6, NULL, NULL, NULL, NULL),
(2046, '97997919412485', 'Kaidah Bahasa dan Sastra Indonesia', 'W.Elfiati', 'Penerbit Tropica', '2005', 44, 0, 6, NULL, NULL, NULL, NULL),
(2047, '9793960140', 'Do It', 'Budi Prawoto dkk', 'Empat Pilar Pendidikan', '2005', 34, 0, 6, NULL, NULL, NULL, NULL),
(2048, '9797453956', 'Integrated English Learning', 'Levita Dwinaya dkk', 'PT Sinergi Pustak Indonesia', '2005', 26, 0, 6, NULL, NULL, NULL, NULL),
(2049, '9797593797', 'Mampu Berbahasa Indonesia', 'Asul Wiyanto dkk', 'PT Grasindo', '2006', 32, 0, 6, NULL, NULL, NULL, NULL),
(2050, '9795342274', 'Lets Talk', 'Bachtiar Bima M dkk', 'Pakar Raya', '2005', 23, 0, 6, NULL, NULL, NULL, NULL),
(2051, '9797593789', 'Mampu Berbahasa Indonesia Kelas 7', 'Asul Wiyanto M dkk', 'PT Grasindo', '2006', 24, 0, 6, NULL, NULL, NULL, NULL),
(2052, '9797593797', 'Mampu Berbahasa Indonesia Kelas 8', 'Asul Wiyanto M dkk', 'PT Grasindo', '2006', 11, 0, 6, NULL, NULL, NULL, NULL),
(2053, '979759380', 'Mampu Berbahasa Indonesia Kelas 9', 'Asul Wiyanto M dkk', 'PT Grasinod', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2054, '9797443191', 'Lunas', 'Dina Juliana dkk', 'Ganeca Exact', '2005', 2, 0, 6, NULL, NULL, NULL, NULL),
(2055, '9789793322360', 'Lembar Kerja Siswa Bahasa Indonesia III', 'Ir Lilik Bani MSC Ph D', 'Pusat Tekhonologi Informasi & Komunikasi Pendidika', '2007', 4, 0, 6, NULL, NULL, NULL, NULL),
(2056, '9793577509', 'Bahasa dan Sastra Indonesia Kelas IX 3', 'Mariati Nugroho dkk', 'Graha Multi Grafika', '2006', 41, 0, 6, NULL, NULL, NULL, NULL),
(2057, '9793577489', 'Bahasa dan Sastra Indonesia Kelas VII 1', 'Mariati Nugroho dkk', 'Graha Multi Grafika', '2006', 22, 0, 6, NULL, NULL, NULL, NULL),
(2058, '9797610551', 'Bahasa dan Sastra Indonesia  Kelas VII', 'Yuwono dkk', 'Teguh Karya', '2005', 6, 0, 6, NULL, NULL, NULL, NULL),
(2059, '9797271595', 'Memahami Bahasa dan Sastra Indonesia 3 IX', 'Etin Sumiatin dkk', 'CV Armico', '2005', 13, 0, 6, NULL, NULL, NULL, NULL),
(2060, '9797271609', 'Memahami Bahasa dan Sastra Indonesia 2 Kelas VIII', 'Etin Sumiatin dkk', 'CV Armico', '2005', 10, 0, 6, NULL, NULL, NULL, NULL),
(2061, '9797271587', 'Memahami Bahsa dan Satra Indonesia 1 Kelas VII', 'Etin Sumiatin dkk', 'CV Armico', '2005', 6, 0, 6, NULL, NULL, NULL, NULL),
(2062, '9797464113', 'Bahasa Inggris SMP 3 Kelas IX', 'Kistono dkk', 'Yudhistira', '2005', 9, 0, 6, NULL, NULL, NULL, NULL),
(2063, '9797464105', 'Bahasa Inggris SMP 2 Kelas VIII', 'Kistono dkk', 'Yudhistira', '2005', 20, 0, 6, NULL, NULL, NULL, NULL),
(2064, '9797610551', 'Bahasa dan Sastra Indonesia Kelas VIII', 'Yuwono dkk', 'Teguh Karya', '2005', 30, 0, 6, NULL, NULL, NULL, NULL),
(2065, '9797610551', 'Bahasa dan Sastra Indonesia Kelas VIII', 'Yuwono dkk', 'Teguh Karya', '2005', 30, 0, 6, NULL, NULL, NULL, NULL),
(2066, '979577495', 'Bahasa dan Sastra Indonesia  Kelas VIII 2', 'Mariati Nugroho dkk', 'Graha Multi Grafika', '2006', 31, 0, 6, NULL, NULL, NULL, NULL),
(2067, '9797362604', 'Bahasa dan Sastra Indonesia 1 Kelas VII', 'Maryati', 'Aneka Ilmu', '2006', 25, 0, 6, NULL, NULL, NULL, NULL),
(2068, '-', 'D3 Doit', 'Budi Prawoto dkk', 'Empat Pilar Pendidikan', '2005', 11, 0, 6, NULL, NULL, NULL, NULL),
(2069, '9793300272', 'Effective English 1', 'Soegeng HS', 'PT Tiga Serangkai Pustaka Mandiri', '2005', 17, 0, 6, NULL, NULL, NULL, NULL),
(2070, '9793300280', 'Effective English 2', 'Soegeng HS', 'PT Tiga Serangkai Pustaka Mandiri', '2005', 72, 0, 6, NULL, NULL, NULL, NULL),
(2071, '97933002646', 'Effective English 3', 'Soegeng HS', 'PT Tiga Serangkai Pustaka Mandiri', '2005', 17, 0, 6, NULL, NULL, NULL, NULL),
(2072, '-', 'Kaidah Bahasa dan Sastra Indonesia 9', 'W.Elfiati', 'Penerbit Tropica', '2005', 0, 0, 6, NULL, NULL, NULL, NULL),
(2073, '-', 'Kamus Lengkap Bahasa Indonesia', 'Drs. Sulahan Yasin', 'Amanah', '1997', 1, 0, 6, NULL, NULL, NULL, NULL),
(2074, '9789793931466', 'Sehari Mahir Berbahasa Jepang', 'Yasin A. Rifail', 'Media Ilmu', '2008', 1, 0, 6, NULL, NULL, NULL, NULL),
(2075, '-', 'Bunga Rampai Peribahasa Dan Pantun', 'M. Syamsul Hidayat S.pd', 'UD. Apollo Surabaya', '2009', 2, 0, 6, NULL, NULL, NULL, NULL),
(2076, '9789791493024', 'Pintar Dengan Membaca', 'R. Deni Muhammad Danial', 'PT. Sindur press', '2008', 1, 0, 6, NULL, NULL, NULL, NULL),
(2077, '9786029128029', 'Cara Menguasai Tata Bahasa Jepang', 'Rani Maharani dkk', 'Cyrillus Publisher', '2012', 2, 0, 6, NULL, NULL, NULL, NULL),
(2078, '9796610302', 'Panggilan Penerjemah', 'Dra. Vero Sudiati', 'Pustaka Widuatama', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2079, '9799289009', 'Panduan Menulis Untuk Pemula', 'Drs. Redi Panaja. M.si', 'Pustaka Pelayan', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2080, '-', 'Kosa Kata Madura', 'Moh. Makhsud Ashadi Dkk', 'Sarana Ilmu', '1992', 2, 0, 6, NULL, NULL, NULL, NULL);
INSERT INTO `buku` (`id_buku`, `ISBN`, `judul`, `pengarang`, `penerbit`, `thn_terbit`, `stok`, `di_pinjam`, `id_ketegori`, `id_rak`, `id_kolom`, `created_at`, `updated_at`) VALUES
(2081, '-', 'Intisari Kata Bahasa Indonesia', 'Moh. Syamsul Hidayat S.pd', 'Apollo Lestari', '2007', 2, 0, 6, NULL, NULL, NULL, NULL),
(2082, '9796853044', 'Buku Praktis Bahasa Indonesia', 'Depdiknas', '-', '2007', 1, 0, 6, NULL, NULL, NULL, NULL),
(2083, '9792585510', 'Kamus Jawa Indonesia & Indonesia Jawa', 'Majendra Maheswara', 'Pustaka Mahardima', '-', 1, 0, 6, NULL, NULL, NULL, NULL),
(2084, '9789790701526', 'Penggunaan Auxiliary Dan Verbbe Dalam Kalimat', 'D. Arini', 'Aneka Ilmu', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2085, '-', 'Keberbahasaan & Kepenulisan Bahasa Indonesia', 'Yos Daniel Parera', 'Pusat Perbukuan Depdiknas', '2000', 53, 0, 6, NULL, NULL, NULL, NULL),
(2086, '9799599174', 'Tata Bahasa Baku Baku Bahasa Indonesia', 'Hasan Alwi Dkk', 'Balai Pustaka', '1998', 1, 0, 6, NULL, NULL, NULL, NULL),
(2087, '9793830123', 'Ngemis  Siapa Takut', 'Yatie Asfan Lubis', 'Cakrawala', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2088, '-', 'Cara Cepat Menguasai Tenses dan Gramer', 'Tina Agustina', 'Serba Jaya', '-', 1, 0, 6, NULL, NULL, NULL, NULL),
(2089, '-', 'Teknik Pidato mc dengan contohnya', 'Drs Muslichudin', 'Karya Ilmu', '-', 1, 0, 6, NULL, NULL, NULL, NULL),
(2090, '-', 'Hati Yang Berjalan', 'Dina Oktaviani', '-', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2091, '-', 'Conversations', 'Mahmud Hunir MA', 'Gita Media Press', '2002', 1, 0, 6, NULL, NULL, NULL, NULL),
(2092, '-', 'Percakapan Praktis Bahasa Korea', 'Jung Yong Hoon dkk', 'Yoshiko Publisher', '2012', 1, 0, 6, NULL, NULL, NULL, NULL),
(2093, '-', 'Tenses 16 Bentuk Waktu', 'Sam S Warb', 'Apollo', '2010', 1, 0, 6, NULL, NULL, NULL, NULL),
(2094, '-', 'Belajar Bahasa Inggris Tanpa Guru Sistem 60 Menit', 'Drs Rudy Hariyono', 'Gita Media Press', '2002', 1, 0, 6, NULL, NULL, NULL, NULL),
(2095, '-', 'Tirani dan Benteng', 'Taufik Ismail', 'PT Cakrawala Budaya Indonesia', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2096, '-', 'Kumpulan Sari Kata Bahasa Indonesia', 'Titik Stya ningsih Spd', 'PT Sindur Press', '2008', 2, 0, 6, NULL, NULL, NULL, NULL),
(2097, '9789791493062', 'Menjadi Penulis Mulai dari Sekarang', 'R Deni Muhammad Danial', 'PT Tangga Pustaka', '2012', 1, 0, 6, NULL, NULL, NULL, NULL),
(2098, '-', 'Cara Cepat Berbahasa Jepang Dengan Baik dan Benar', 'Darjat', 'PT Sindur Press', '2008', 1, 0, 6, NULL, NULL, NULL, NULL),
(2099, '9789791493109', 'Membaca Cepat Banyak Manfaat', 'Yaneu Sulistia Wati Spd', '-', '1997', 2, 0, 6, NULL, NULL, NULL, NULL),
(2100, '9794625469', 'Pokok Pokok  Pengajaran', 'Bambang  Kaswoh Purwo', 'PT Sindur Press', '2008', 1, 0, 6, NULL, NULL, NULL, NULL),
(2101, '-', 'Terampil Menerapkan Kaidah Gocn Bahasa Indonesia', 'Asul Wiyanto', '-', '1997', 1, 0, 6, NULL, NULL, NULL, NULL),
(2102, '-', 'Kamus 2500 Per Bahasa Indonesia', 'Ronald H Siloros', 'PT Grasindo', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2103, '9786627732056', 'Rangkuman Intisari', 'Tim Artesis', 'Pionir Jaya', '1993', 1, 0, 6, NULL, NULL, NULL, NULL),
(2104, '-', 'Tradisi Dalam Struktur Masyarakat Jawa', 'PM Laksono', 'Laskar Aksara', '-', 0, 0, 6, NULL, NULL, NULL, NULL),
(2105, '-', 'Tirani dan Benteng', 'Taufik Ismail', 'PT Cakrawala Budaya Indonesia', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2106, '-', 'Kumpulan Sari Kata Bahasa Indonesia', 'Titik Stya ningsih Spd', 'PT Sindur Press', '2008', 2, 0, 6, NULL, NULL, NULL, NULL),
(2107, '9789791493062', 'Menjadi Penulis Mulai dari Sekarang', 'R Deni Muhammad Danial', 'PT Tangga Pustaka', '2012', 1, 0, 6, NULL, NULL, NULL, NULL),
(2108, '-', 'Cara Cepat Berbahasa Jepang Dengan Baik dan Benar', 'Darjat', 'PT Sindur Press', '2008', 1, 0, 6, NULL, NULL, NULL, NULL),
(2109, '9789791493109', 'Membaca Cepat Banyak Manfaat', 'Yaneu Sulistia Wati Spd', '-', '1997', 2, 0, 6, NULL, NULL, NULL, NULL),
(2110, '9794625469', 'Pokok Pokok  Pengajaran', 'Bambang  Kaswoh Purwo', 'PT Sindur Press', '2008', 1, 0, 6, NULL, NULL, NULL, NULL),
(2111, '-', 'Terampil Menerapkan Kaidah Gocn Bahasa Indonesia', 'Asul Wiyanto', '-', '1997', 1, 0, 6, NULL, NULL, NULL, NULL),
(2112, '-', 'Kamus 2500 Per Bahasa Indonesia', 'Ronald H Siloros', 'PT Grasindo', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2113, '9786627732056', 'Rangkuman Intisari', 'Tim Artesis', 'Pionir Jaya', '1993', 1, 0, 6, NULL, NULL, NULL, NULL),
(2114, '-', 'Tradisi Dalam Struktur Masyarakat Jawa', 'PM Laksono', 'Laskar Aksara', '-', 0, 0, 6, NULL, NULL, NULL, NULL),
(2115, '-', 'Buku Praktis', '-', 'Kopel Press', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2116, '9786029719116', 'Seni Pidato', 'Putra Bahan SS', 'SunshineBooks', '-', 1, 0, 6, NULL, NULL, NULL, NULL),
(2117, '9796853019', 'Pengindonesian Kata dan Uangkapan Asing', 'Deni sugono', 'Badan Pengembamgn dan Pembinaan Bahas Kementrian P', '2012', 1, 0, 6, NULL, NULL, NULL, NULL),
(2118, '-', 'Argumentasi dan Narasi', 'Dr Gorys Heraf', 'PT Gramedia', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2119, '9794974315', 'Bagaimana Meluput dan menulis Berita Umum Massa', 'AsHadi Siregar DKK', 'Kanisius', '1998', 1, 0, 6, NULL, NULL, NULL, NULL),
(2120, '9786027639207', 'Sastra Indonesia Paling Lengkap', 'Redausi Pm', 'Pustaka Maunur', '2012', 1, 0, 6, NULL, NULL, NULL, NULL),
(2121, '9789791495707', 'Jago Debat', 'R deni Muhammad Dainal', 'PT SINDUR PRESS', '2008', 1, 0, 6, NULL, NULL, NULL, NULL),
(2122, '-', 'Kamus Super Elite Bergambar', 'Sam s Warib', 'Putra jaya', '2011', 1, 0, 6, NULL, NULL, NULL, NULL),
(2123, '9786029803815', 'Ngomong Bahasa Inggris Sehari hari Tanpa Takut', 'Puji Purnama', 'Pelangi Indonesia', '1928', 1, 0, 6, NULL, NULL, NULL, NULL),
(2124, '-', 'Fungsi Bahasa dan Sikap Bahasa', 'Hari Murti Uridalaksana', 'Nusa Indah', '1985', 1, 0, 6, NULL, NULL, NULL, NULL),
(2125, '-', 'Menjadi Genius Dengan Menulis', 'Mark Levy', 'PT Mizan Pustaka', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2126, '9789789481565', 'Istana Kardus', 'Sri Hartani S.Pd', 'Aneka Ilmu', '2008', 1, 0, 6, NULL, NULL, NULL, NULL),
(2127, '9789799107756', 'Dokumentasi', 'Drs Nur Sunirin M.Pd', 'PY Sindur Press', '2008', 1, 0, 6, NULL, NULL, NULL, NULL),
(2128, '-', 'panduan Belajar Ke sekolah Menengah Kejuruan Tingk', 'Harsia W Bachtiar', 'Badan Penelitian danengembangan pendidikan Kebuday', '1986', 1, 0, 6, NULL, NULL, NULL, NULL),
(2130, '9789799107756', 'Dokumentasi', 'Drs Nur Sunirin M.Pd', 'PY Sindur Press', '2008', 1, 0, 6, NULL, NULL, NULL, NULL),
(2131, '-', 'Panduan Belajar Ke sekolah Menengah Kejuruan ', 'Harsia W Bachtiar', 'Badan Penelitian dan Pengembangan pendidikan Kebud', '1986', 1, 0, 6, NULL, NULL, NULL, NULL),
(2133, '9797300269', 'Peri Bahasa Indonesia', 'Drs Nur Arikin Chaniago dkk', 'Pustaka Setia', '1998', 2, 0, 6, NULL, NULL, NULL, NULL),
(2134, '9797300250', 'Peri Bahasa Indonesia', 'Drs Nur Arikin Chaniago dkk', 'Pustaka Setia', '1998', 1, 0, 6, NULL, NULL, NULL, NULL),
(2135, '9786028599115', 'English Grammer', 'Drs John S Hartanto dkk', 'Indah Surabaya', '1937', 1, 0, 6, NULL, NULL, NULL, NULL),
(2136, '-', 'Khazanah Lawan Kata', 'Zanta', 'Tiga Serangkai', '1985', 1, 0, 6, NULL, NULL, NULL, NULL),
(2137, '-', 'Bahasa Indonesia Pemakai dan Pemakaiannya', 'Hasan Alwi', 'Badan Pengembangan dan Pembinaan Bahasa', '2011', 1, 0, 6, NULL, NULL, NULL, NULL),
(2139, '-', 'Pintar Bahasa Inggris Untuk SMP Kelas 123', 'Drs Syamsul Arisin', 'Gita Media', '2001', 1, 0, 6, NULL, NULL, NULL, NULL),
(2140, '-', 'Ejaan Yang Disempurnakan', 'As ad Sungguh', 'PT.Bomi Aksara', '1998', 1, 0, 6, NULL, NULL, NULL, NULL),
(2141, '-', 'Panduan Berbahasa Indonesia', 'S.effendi', 'Pustaka Jaya', '2012', 1, 0, 6, NULL, NULL, NULL, NULL),
(2142, '-', 'Buku Praktis Bahasa Indonesia', 'Dendi Sugono dkk', 'Badan Pengembangan dan Pembinaan Kementrian Pendid', '2014', 1, 0, 6, NULL, NULL, NULL, NULL),
(2143, '-', 'Apresiasi Karya Melalui Rusensi', 'Poksis Raharjo', 'PT Sindur Press', '2008', 1, 0, 6, NULL, NULL, NULL, NULL),
(2144, '-', 'Membina Keterampilan Menulis Paragraf dan Menggamb', 'Drs.Djago Tanigan', 'Angkasa Bandung', '1981', 1, 0, 6, NULL, NULL, NULL, NULL),
(2145, '9786028334280', 'Pedoman Umum Ejaan Bahasa Madura yang Disempurnaka', 'Yeyen Maryani dkk', 'Kementrian Pendidikan dan Budaya Badan Pembinaan B', '2012', 1, 0, 6, NULL, NULL, NULL, NULL),
(2146, '9786028334303', 'Pesona Jawa Timur', 'Yeyen Maharani dkk', 'Balai Bahasa Provinsi Jawa Timur', '2012', 1, 0, 6, NULL, NULL, NULL, NULL),
(2147, '9794623899', 'Pokok Pokok Pengajaran dan Kurikulum 1994', 'Kepala Pusat Pembukuan', ' Departemen Pendidikan dan kebudayaan', '1997', 1, 0, 6, NULL, NULL, NULL, NULL),
(2148, '9794623899', 'Pintar Berbahasa Indonesia 1', 'JS badudu', 'Departemen Kebudayaan dan pendidikan', '1993', 1, 0, 6, NULL, NULL, NULL, NULL),
(2149, '9786022418122', 'Mahir Berbahasa Indonesia', 'Tim Edukasi', 'Erlangga', '1900', 1, 0, 6, NULL, NULL, NULL, NULL),
(2150, '9799452198', 'Bergairah Menulis', 'Mary Leonhart', 'Kaifa', '2001', 1, 0, 6, NULL, NULL, NULL, NULL),
(2151, '9789791133611', 'Buku Pintar Peri bahasa Indonesia', 'Endry sulistyo', 'Puspa Edukasi', '2007', 1, 0, 6, NULL, NULL, NULL, NULL),
(2152, '9789791793413', 'Buku Pintar Bahasa jawa', 'Setyo Nugroho', 'kartika', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2153, '9796973149', 'Penilaian Portofoilio', 'Dr Sumarna Sura pranata', 'Rosda', '2004', 1, 0, 6, NULL, NULL, NULL, NULL),
(2154, '9797818322', 'Demensi Demensi Kebahasaan', 'Dr P Kenjana Rahardi M Hum', 'Erlangga', '2002', 1, 0, 6, NULL, NULL, NULL, NULL),
(2155, '-', 'Kamus Ideal', 'Drs P handoko', 'lingkar Media', '1995', 1, 0, 6, NULL, NULL, NULL, NULL),
(2156, '-', 'Kosa kata bahasa Madura Lengkap', 'Bastari', 'karya Simpati Mandiri', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2157, '9794623899', 'Pintar Berbahasa Indonesia I', 'JS badudu', 'Departemen Kebudayaan dan Pendidikan', '1993', 1, 0, 6, NULL, NULL, NULL, NULL),
(2158, '9794625049', 'Tata Cara Bahasa Indonesia', 'Prof Dr Ida bagus Putra Yasa M.pd', 'Rekika Aditama', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2159, '-', 'Bahasa dan Sastra Indonesia 1', 'Ratna Purwaning Tyastuti', 'Grahadi', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2160, '-', 'Kembang bhabur', 'Tim Pakan Maddhu', 'Yudistira', '2004', 1, 0, 6, NULL, NULL, NULL, NULL),
(2161, '-', 'Sari Kata Bahasa Indonesia', 'Elisa rmzy S.Pd', 'Dunia media', '-', 1, 0, 6, NULL, NULL, NULL, NULL),
(2162, '-', 'Widya Bahasa Jawa', 'Surakman', 'PT Glora Aksara Pratam', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2163, '9789790199748', 'Kembang Bhabur 3', 'Tim Pakem Maddhu', 'Yudistira', '2012', 2, 0, 6, NULL, NULL, NULL, NULL),
(2164, '-', 'Verba dan AD Verba Dalam Bahasa Inggris', 'Kusinwati', 'PT Sindur Press', '2009', 2, 0, 6, NULL, NULL, NULL, NULL),
(2165, '-', 'Kalimat Pertayaan Bahasa Inggris', 'Novita', 'PT Sinder Press', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2166, '-', 'Menyuting karangan', 'Magantoro C.B', 'Aneka Ilmu', '2009', 2, 0, 6, NULL, NULL, NULL, NULL),
(2167, '-', 'Materi Muatan Lokal Bahasa Jawa 2', 'Suliyanto DKK', 'Yudistira', '1996', 1, 0, 6, NULL, NULL, NULL, NULL),
(2168, '-', 'Wacana Kabahasaan', 'Wahyu Puji Astuti', 'Aneka Ilmu', '2009', 2, 0, 6, NULL, NULL, NULL, NULL),
(2169, '-', 'Belajar Mudah Bahasa Inggris', 'Retno Rianti', 'CV Ghyyas Putra', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2170, '97897906706500655', 'Kata Depan dan Kata Sambung Bahasa Inggris', 'Kusinwati', 'CV Ghyyas Ilmu', '2010', 2, 0, 6, NULL, NULL, NULL, NULL),
(2171, '9789790511668', 'Memahami Kata Sifat dalam Bahasa Inggris', 'Kusinwati', 'PT Sindur Press', '2009', 2, 0, 6, NULL, NULL, NULL, NULL),
(2172, '-', 'Mengenal Ragam Bahasa', 'M.Basruwi', 'CV Pamulasari', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2173, '9789790531178', 'Trampil Menulis Laporan', 'Sumaryamto', 'CV Pamdur Sari', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2174, '-', 'Article Proposition and Ginjanation', 'Retno Rianti', 'PT Bengawan Ilmu', '2010', 1, 0, 6, NULL, NULL, NULL, NULL),
(2177, '978979019130', 'Ghambhang Bhabhur', 'M Drajid B A dkk', 'Yudistira', '1978', 1, 0, 6, NULL, NULL, NULL, NULL),
(2178, '9789790670600', 'Mari Meresensi Buku', 'Marwoto', 'PT Sindur Press', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2179, '9789790216402', 'Belajar Bahasa Inggris Dengan Permainan', 'Retno Rianti', 'PT Bengawan Ilmu', '2010', 2, 0, 6, NULL, NULL, NULL, NULL),
(2180, '9789790531173', 'Mengenal Ragam Bahasa', 'M Basrowi', 'CV Pamularsari', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2181, '9799780670806', 'Terampil Berwawancara', 'Sumaryanto', 'CV Pamulasari', '2009', 2, 0, 6, NULL, NULL, NULL, NULL),
(2182, '9789797364477', 'Terampil Menulis Dalam Bahasa Indonesia', 'Drs Hartono', 'Aneka Ilmu', '2001', 1, 0, 6, NULL, NULL, NULL, NULL),
(2183, '9797520130', 'Pintar Bahasa Inggris', 'Drs Syamsul Arifin', 'Gita Media Press', '2001', 1, 0, 6, NULL, NULL, NULL, NULL),
(2184, '-', 'Memahami Gerund', 'Retno Rianti', 'PT Sindur Press', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2185, '9789790670806', 'Perbandingan dalam Bahasa Inggris', 'Krida Puji tahayu', 'PT Sindur press', '2010', 1, 0, 6, NULL, NULL, NULL, NULL),
(2186, '79789790215257', 'The 7keys of Tenses', 'Mochamad Najib', 'PT Bengawan Ilmu', '2010', 1, 0, 6, NULL, NULL, NULL, NULL),
(2187, '9789790701526', 'Penggunaan Auxliiary dan Verba be dalam Kalimat', 'D Arimi', 'Aneka ilmu', '2010', 1, 0, 6, NULL, NULL, NULL, NULL),
(2188, '-', 'Mengenal Kata Benda Dan Kata Ganti', 'Kusin Wati', 'Chyyas Putra', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2189, '978979051195', 'Belajar Bahasa Inggris Sejak Dini', 'Kani Andewi', 'PT Bengawan Ilmu', '2010', 1, 0, 6, NULL, NULL, NULL, NULL),
(2190, '9797464598', 'Bahasa Dan Sastra indonesia', 'Suharna S.Pd DKK', 'Yudistira', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2191, '9789790452657', 'Passprot To The World', 'Djatmika DKK', 'Platinum', '2012', 2, 0, 6, NULL, NULL, NULL, NULL),
(2192, '9786079508826', 'Mahir Menguasai bahasa Inggris', 'Warsito', 'Mahir Sindo Utama', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2193, '9797466175', 'Pinter bahasa jawa 1', 'Drs Imam Riyadi', 'Yudistira', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2194, '9797342271', 'Bahasa Indonesia SMP', 'Alex Suryanto', 'Yudistira', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2195, '-', 'Bahasa Indonesia', 'Asep Ganda Sadikin', 'Gratindo Media Pratama', '2018', 1, 0, 6, NULL, NULL, NULL, NULL),
(2196, '9789790151178', 'Bahasa Indonesia Untuk SMP Kelas IX', 'Nurhadi DKK', 'Erlangga', '2007', 1, 0, 6, NULL, NULL, NULL, NULL),
(2197, '978607903', 'Malathe Sataman', 'Moh hafid Effendy M Pd DKK', 'PT Bengaan Ilmu', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2198, '97987108152', 'Pintar Berbahasa Indonesia', 'Siti Muryati dkk', 'PT Bengawan Ilmu', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2199, '9799306043', 'Belajar Autif Matematika', 'Hasan Nurdin', 'PT Trpedo Jaya lestari', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2200, '-', 'Make Your Selk a Master Of English', 'Antono Wardiman', 'Pt Setia Purma Inves', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2201, '979255439', 'Students book Flying Start', 'Agnes Shanti Nindyarini', 'Erlangga', '2011', 1, 0, 6, NULL, NULL, NULL, NULL),
(2202, '9797550277', 'Steps To aster english', 'Sumar sono dKK', 'Pt Galaxi Puspa Mega', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2203, '-', 'Joko Tole', 'Amir Mahmud DKK', 'Balai Bahasa Jawa timur', '2016', 1, 0, 6, NULL, NULL, NULL, NULL),
(2204, '-', 'Titis Basa 11', 'Amir mahmud DKK', 'Balai Bahasa Jawa Timur', '2016', 1, 0, 6, NULL, NULL, NULL, NULL),
(2205, '-', 'Titis Basa 10', 'Amir Mahmud DKK', 'Balai Bahasa jawa Timur', '2016', 1, 0, 6, NULL, NULL, NULL, NULL),
(2206, '-', 'Lentar Using', 'Amir Magmud DKK', 'balai Bahasa Jawa Timur', '2013', 1, 0, 6, NULL, NULL, NULL, NULL),
(2207, '9796853093', 'Buku Praktis Bahasa Indonesia', 'Dendy Sugono dkk', 'Pusata Bahasa Departement Pendidikan Nasional', '2003', 1, 0, 6, NULL, NULL, NULL, NULL),
(2208, '9789293322360', 'Bahasa Indonesia Lembar Kerja Siswa Semester 1', 'Ir.Lilik Bani M.Sc. Ph.D', 'Televisi Edukasi', '2007', 1, 0, 6, NULL, NULL, NULL, NULL),
(2209, '9789793322339', 'Bahasa Indonesia Lembar Kerja Siswa Semester 2', 'Ir Lilik Bani M.Sc.Ph.D', 'Televisi Edukasi', '2007', 1, 0, 6, NULL, NULL, NULL, NULL),
(2210, '-', 'Bahasa Inggris Lembar Kerja Siswa Semester 1', 'Ir Lilik Bani M.Sc.Ph.D', 'Televisi Edukasi', '2007', 1, 0, 6, NULL, NULL, NULL, NULL),
(2211, '9792807868', 'Detik Detik Ujian Nasional', 'Uti Darmawati', 'Intan Pariwara', '2016', 1, 0, 6, NULL, NULL, NULL, NULL),
(2212, '', 'Real Time', 'Nina Bates', 'Erlangga', '2006', 2147483647, 0, 6, NULL, NULL, NULL, NULL),
(2213, '-', 'Bahasa Inggris Years 8', '-', 'Departement Of Nasional Education', '-', 1, 0, 6, NULL, NULL, NULL, NULL),
(2215, '9789790670806', 'Perbandingan dalam Bahasa Inggris', 'Krida Puji tahayu', 'PT Sindur press', '2010', 1, 0, 6, NULL, NULL, NULL, NULL),
(2216, '79789790215257', 'The 7keys of Tenses', 'Mochamad Najib', 'PT Bengawan Ilmu', '2010', 1, 0, 6, NULL, NULL, NULL, NULL),
(2217, '9789790701526', 'Penggunaan Auxliiary dan Verba be dalam Kalimat', 'D Arimi', 'Aneka ilmu', '2010', 1, 0, 6, NULL, NULL, NULL, NULL),
(2218, '-', 'Mengenal Kata Benda Dan Kata Ganti', 'Kusin Wati', 'Chyyas Putra', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2219, '978979051195', 'Belajar Bahasa Inggris Sejak Dini', 'Kani Andewi', 'PT Bengawan Ilmu', '2010', 1, 0, 6, NULL, NULL, NULL, NULL),
(2220, '9797464598', 'Bahasa Dan Sastra indonesia', 'Suharna S.Pd DKK', 'Yudistira', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2221, '9789790452657', 'Passprot To The World', 'Djatmika DKK', 'Platinum', '2012', 2, 0, 6, NULL, NULL, NULL, NULL),
(2222, '9786079508826', 'Mahir Menguasai bahasa Inggris', 'Warsito', 'Mahir Sindo Utama', '2009', 1, 0, 6, NULL, NULL, NULL, NULL),
(2223, '9797466175', 'Pinter bahasa jawa 1', 'Drs Imam Riyadi', 'Yudistira', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2224, '9797342271', 'Bahasa Indonesia SMP', 'Alex Suryanto', 'Yudistira', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2225, '-', 'Bahasa Indonesia', 'Asep Ganda Sadikin', 'Gratindo Media Pratama', '2018', 1, 0, 6, NULL, NULL, NULL, NULL),
(2226, '9789790151178', 'Bahasa Indonesia Untuk SMP Kelas IX', 'Nurhadi DKK', 'Erlangga', '2007', 1, 0, 6, NULL, NULL, NULL, NULL),
(2227, '978607903', 'Malathe Sataman', 'Moh hafid Effendy M Pd DKK', 'PT Bengaan Ilmu', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2228, '97987108152', 'Pintar Berbahasa Indonesia', 'Siti Muryati dkk', 'PT Bengawan Ilmu', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2229, '9799306043', 'Belajar Autif Matematika', 'Hasan Nurdin', 'PT Trpedo Jaya lestari', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2230, '-', 'Make Your Selk a Master Of English', 'Antono Wardiman', 'Pt Setia Purma Inves', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2231, '979255439', 'Students book Flying Start', 'Agnes Shanti Nindyarini', 'Erlangga', '2011', 1, 0, 6, NULL, NULL, NULL, NULL),
(2232, '9797550277', 'Steps To aster english', 'Sumar sono dKK', 'Pt Galaxi Puspa Mega', '2005', 1, 0, 6, NULL, NULL, NULL, NULL),
(2233, '-', 'Joko Tole', 'Amir Mahmud DKK', 'Balai Bahasa Jawa timur', '2016', 1, 0, 6, NULL, NULL, NULL, NULL),
(2234, '-', 'Titis Basa 11', 'Amir mahmud DKK', 'Balai Bahasa Jawa Timur', '2016', 1, 0, 6, NULL, NULL, NULL, NULL),
(2235, '-', 'Titis Basa 10', 'Amir Mahmud DKK', 'Balai Bahasa jawa Timur', '2016', 1, 0, 6, NULL, NULL, NULL, NULL),
(2236, '-', 'Lentar Using', 'Amir Magmud DKK', 'balai Bahasa Jawa Timur', '2013', 1, 0, 6, NULL, NULL, NULL, NULL),
(2237, '9796853093', 'Buku Praktis Bahasa Indonesia', 'Dendy Sugono dkk', 'Pusata Bahasa Departement Pendidikan Nasional', '2003', 1, 0, 6, NULL, NULL, NULL, NULL),
(2238, '9789293322360', 'Bahasa Indonesia Lembar Kerja Siswa Semester 1', 'Ir.Lilik Bani M.Sc. Ph.D', 'Televisi Edukasi', '2007', 1, 0, 6, NULL, NULL, NULL, NULL),
(2239, '9789793322339', 'Bahasa Indonesia Lembar Kerja Siswa Semester 2', 'Ir Lilik Bani M.Sc.Ph.D', 'Televisi Edukasi', '2007', 1, 0, 6, NULL, NULL, NULL, NULL),
(2240, '-', 'Bahasa Inggris Lembar Kerja Siswa Semester 1', 'Ir Lilik Bani M.Sc.Ph.D', 'Televisi Edukasi', '2007', 1, 0, 6, NULL, NULL, NULL, NULL),
(2241, '9792807868', 'Detik Detik Ujian Nasional', 'Uti Darmawati', 'Intan Pariwara', '2016', 1, 0, 6, NULL, NULL, NULL, NULL),
(2242, '9789790151130', 'Real Time', 'Nina Bates', 'Erlangga', '2006', 1, 0, 6, NULL, NULL, NULL, NULL),
(2243, '-', 'Bahasa Inggris Years 8', '-', 'Departement Of Nasional Education', '-', 1, 0, 6, NULL, NULL, NULL, NULL),
(2244, '-', 'English For junior High Scholl Years 9', '-', '-', '-', 1, 0, 6, NULL, NULL, NULL, NULL),
(2245, '-', 'English Work Sheet', '-', '-', '2012', 1, 0, 6, NULL, NULL, NULL, NULL),
(2246, '-', 'Atame', 'Drs Amir Mahmud M pd', 'Balai Bahasa Jawa Timur', '2016', 1, 0, 6, NULL, NULL, NULL, NULL),
(2247, '-', 'Medan bahasa jurnal Ilmiah kebahasaan', 'DSrs Amir mahmud  m Pd', 'Balai Bahasa jawa Timur', '2016', 1, 0, 6, NULL, NULL, NULL, NULL),
(2248, '-', 'Effective English 3', 'Soegeng', 'tega Saranguai', '2018', 1, 0, 6, NULL, NULL, NULL, NULL),
(2249, '9789791106061', 'Manfaat Hutan Lindung', 'Ahmad Jazuli', 'CV. Sinar Cemerlang Abadi', '2007', 2, 0, 7, NULL, NULL, NULL, NULL),
(2250, '9789791106665', 'Biasa Dengan Sains Energi Matahari', 'Sri Winarsih S.pd', 'CV. Sinar Cemerlang Abadi', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2251, '979452999', 'Simpul Matematika Kelas 9', 'Yuniarto', 'PT. Sinergi ustaka Indonesia', '2015', 10, 0, 7, NULL, NULL, NULL, NULL),
(2252, '0764565192', 'Berapakah Berat Bumi', 'Marshall Brain', 'PT. Intan Sejati', '2003', 12, 0, 7, NULL, NULL, NULL, NULL),
(2253, '9797452999', 'Simpul Matematika Kelas 8', 'Yuniarto', 'PT. Sinergi ustaka Indonesia', '2015', 23, 0, 7, NULL, NULL, NULL, NULL),
(2254, '0471106399', 'Trik-trik Berhitung', 'Edward H. Julius', 'Pakar Raya', '2002', 1, 0, 7, NULL, NULL, NULL, NULL),
(2255, '9789791106641', 'Gunung Meletus Dan Antisipasinya', 'Dewayani  C. Tyas', 'Aneka Ilmu', '2008', 2, 0, 7, NULL, NULL, NULL, NULL),
(2256, '9789791106641', 'Mengenal Hewan Australia 1', 'Frida N', 'PT. Sinar Cemerlang Abadi', '2016', 3, 0, 7, NULL, NULL, NULL, NULL),
(2257, '9786021949238', 'Gunung Berapi Di Indonesia', 'Paksi S. R', 'Gelora Swara Mahardika', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2258, '9786021949245', 'Mengenal Kehidupan Manusia Praakasara', 'Paksi S. R', 'Gelora Swara Mahardika', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2259, '9789791106641', 'Mengenal Hewan Australia 2', 'Frida N', 'PT. Sinar Cemerlang Abadi', '2016', 2, 0, 7, NULL, NULL, NULL, NULL),
(2260, '9786029457197', 'Bahaya Polusi Udara', 'A. Asianto', 'Garuda Titisan Seksama', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2261, '9789790531215', 'Minum Air Putih Membuat Sehat', 'Kusnanto', 'CV. Pamularsih', '2010', 3, 0, 7, NULL, NULL, NULL, NULL),
(2262, '978979030188', 'Lingkungan Sekolah Yang Bersih Dan Sehat', 'Endang Sulistiawati', 'CV. Pamularsih', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2263, '9789790530485', 'Adaptasi Makhluk Hidup', 'Sudarti', 'CV. Pamularsih', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2264, '9786029429268', 'Daur Hidup Hewan', 'Mutiah S.pd', 'Pramid Emas Putih', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2265, '9789791494618', 'Pelestarian Lingkungan Hidup', 'Sabartiyah', 'CV. Pamularsih', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2266, '9786029429084', 'Pengenalan Prisma Tegak Segitiga Dan Segi Empat', 'M. Permata Sisi', 'Piramid Emas Putih', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2267, '9789790483729', 'Ayo Belajar Peluang', 'Faizal H', 'Aneka Ilmu', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2268, '9789790336506', 'Mengapa Aku Harus Peduli Pada Bumi?', 'Sara rojo', 'Erlangga For Kids', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2269, '9786029428049', 'Mengenal Jenis Batuan', 'Edo Naharu', 'Armada Buana Prima', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2270, '9789790481980', 'Pengertian Tentang Mamalia', 'Tri Yulianto', 'Aneka Ilmu', '2009', 2, 0, 7, NULL, NULL, NULL, NULL),
(2271, '9786021944400', 'Bangun Ruang Sederhana', 'M. Permata', 'Borneo Adil Katalino', '2015', 1, 0, 7, NULL, NULL, NULL, NULL),
(2272, '9789797369606', 'Indahnya Hujan Dan Pelangi', 'Mujiatun', 'Aneka Ilmu', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2273, '9789790530256', 'Hewan Berbahaya Disekitar Kita', 'Widi Handoro', 'CV. Pamularsih', '2010', 4, 0, 7, NULL, NULL, NULL, NULL),
(2274, '9794953997', 'Rahasia Yang Terkandung Dalam Segitiga', 'Amat Nyoto', 'Ikip Malang', '1999', 2, 0, 7, NULL, NULL, NULL, NULL),
(2275, '9789790483804', 'Tempat Kedudukan', 'Sri Wanarsih', 'Aneka Ilmu', '2014', 2, 0, 7, NULL, NULL, NULL, NULL),
(2276, '9789790482593', 'Keanekaragaman Fauna Asia', 'Sri Winarsih', 'Aneka Ilmu', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2277, '9789790212492', 'Gunung Berapi Di Indonesia', 'Eko Titis Prasongko S.pd', 'PT. Bengawan Ilmu', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2278, '9789790216292', 'Memahami Unsur Senyawa Dan Campuran', 'Novita Fhardhitah', 'PT. Bengawan Ilmu', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2279, '9789790530515', 'Bentuk-bentuk Bangun', 'Arif Widyamoko', 'CV. Pamularsih', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2281, '9789791106061', 'Manfaat Hutan Lindung', 'Ahmad Jazuli', 'CV. Sinar Cemerlang Abadi', '2007', 2, 0, 7, NULL, NULL, NULL, NULL),
(2282, '9789791106665', 'Biasa Dengan Sains Energi Matahari', 'Sri Winarsih S.pd', 'CV. Sinar Cemerlang Abadi', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2283, '979452999', 'Simpul Matematika Kelas 9', 'Yuniarto', 'PT. Sinergi ustaka Indonesia', '2015', 10, 0, 7, NULL, NULL, NULL, NULL),
(2284, '0764565192', 'Berapakah Berat Bumi', 'Marshall Brain', 'PT. Intan Sejati', '2003', 12, 0, 7, NULL, NULL, NULL, NULL),
(2285, '9797452999', 'Simpul Matematika Kelas 8', 'Yuniarto', 'PT. Sinergi ustaka Indonesia', '2015', 23, 0, 7, NULL, NULL, NULL, NULL),
(2286, '0471106399', 'Trik-trik Berhitung', 'Edward H. Julius', 'Pakar Raya', '2002', 1, 0, 7, NULL, NULL, NULL, NULL),
(2287, '9789791106641', 'Gunung Meletus Dan Antisipasinya', 'Dewayani  C. Tyas', 'Aneka Ilmu', '2008', 2, 0, 7, NULL, NULL, NULL, NULL),
(2288, '9789791106641', 'Mengenal Hewan Australia 1', 'Frida N', 'PT. Sinar Cemerlang Abadi', '2016', 3, 0, 7, NULL, NULL, NULL, NULL),
(2289, '9786021949238', 'Gunung Berapi Di Indonesia', 'Paksi S. R', 'Gelora Swara Mahardika', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2290, '9786021949245', 'Mengenal Kehidupan Manusia Praakasara', 'Paksi S. R', 'Gelora Swara Mahardika', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2291, '9789791106641', 'Mengenal Hewan Australia 2', 'Frida N', 'PT. Sinar Cemerlang Abadi', '2016', 2, 0, 7, NULL, NULL, NULL, NULL),
(2292, '9786029457197', 'Bahaya Polusi Udara', 'A. Asianto', 'Garuda Titisan Seksama', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2293, '9789790531215', 'Minum Air Putih Membuat Sehat', 'Kusnanto', 'CV. Pamularsih', '2010', 3, 0, 7, NULL, NULL, NULL, NULL),
(2294, '978979030188', 'Lingkungan Sekolah Yang Bersih Dan Sehat', 'Endang Sulistiawati', 'CV. Pamularsih', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2295, '9789790530485', 'Adaptasi Makhluk Hidup', 'Sudarti', 'CV. Pamularsih', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2296, '9786029429268', 'Daur Hidup Hewan', 'Mutiah S.pd', 'Pramid Emas Putih', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2297, '9789791494618', 'Pelestarian Lingkungan Hidup', 'Sabartiyah', 'CV. Pamularsih', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2298, '9786029429084', 'Pengenalan Prisma Tegak Segitiga Dan Segi Empat', 'M. Permata Sisi', 'Piramid Emas Putih', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2299, '9789790483729', 'Ayo Belajar Peluang', 'Faizal H', 'Aneka Ilmu', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2300, '9789790336506', 'Mengapa Aku Harus Peduli Pada Bumi?', 'Sara rojo', 'Erlangga For Kids', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2301, '9786029428049', 'Mengenal Jenis Batuan', 'Edo Naharu', 'Armada Buana Prima', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2302, '9789790481980', 'Pengertian Tentang Mamalia', 'Tri Yulianto', 'Aneka Ilmu', '2009', 2, 0, 7, NULL, NULL, NULL, NULL),
(2303, '9786021944400', 'Bangun Ruang Sederhana', 'M. Permata', 'Borneo Adil Katalino', '2015', 1, 0, 7, NULL, NULL, NULL, NULL),
(2304, '9789797369606', 'Indahnya Hujan Dan Pelangi', 'Mujiatun', 'Aneka Ilmu', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2305, '9789790530256', 'Hewan Berbahaya Disekitar Kita', 'Widi Handoro', 'CV. Pamularsih', '2010', 4, 0, 7, NULL, NULL, NULL, NULL),
(2306, '9794953997', 'Rahasia Yang Terkandung Dalam Segitiga', 'Amat Nyoto', 'Ikip Malang', '1999', 2, 0, 7, NULL, NULL, NULL, NULL),
(2307, '9789790483804', 'Tempat Kedudukan', 'Sri Wanarsih', 'Aneka Ilmu', '2014', 2, 0, 7, NULL, NULL, NULL, NULL),
(2308, '9789790482593', 'Keanekaragaman Fauna Asia', 'Sri Winarsih', 'Aneka Ilmu', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2309, '9789790212492', 'Gunung Berapi Di Indonesia', 'Eko Titis Prasongko S.pd', 'PT. Bengawan Ilmu', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2310, '9789790216292', 'Memahami Unsur Senyawa Dan Campuran', 'Novita Fhardhitah', 'PT. Bengawan Ilmu', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2311, '9789790530515', 'Bentuk-bentuk Bangun', 'Arif Widyamoko', 'CV. Pamularsih', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2312, '9789790482920', 'Kehidupan Di Kutub', 'Tri Prasetyono', 'Medali Aneka Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2313, '9786021945148', 'Mengenal Limas', 'Iman Imannudin', 'Medali Emas Pertama', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2315, '9789791106061', 'Manfaat Hutan Lindung', 'Ahmad Jazuli', 'CV. Sinar Cemerlang Abadi', '2007', 2, 0, 7, NULL, NULL, NULL, NULL),
(2316, '9789791106665', 'Biasa Dengan Sains Energi Matahari', 'Sri Winarsih S.pd', 'CV. Sinar Cemerlang Abadi', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2317, '979452999', 'Simpul Matematika Kelas 9', 'Yuniarto', 'PT. Sinergi ustaka Indonesia', '2015', 10, 0, 7, NULL, NULL, NULL, NULL),
(2318, '0764565192', 'Berapakah Berat Bumi', 'Marshall Brain', 'PT. Intan Sejati', '2003', 12, 0, 7, NULL, NULL, NULL, NULL),
(2319, '9797452999', 'Simpul Matematika Kelas 8', 'Yuniarto', 'PT. Sinergi ustaka Indonesia', '2015', 23, 0, 7, NULL, NULL, NULL, NULL),
(2320, '0471106399', 'Trik-trik Berhitung', 'Edward H. Julius', 'Pakar Raya', '2002', 1, 0, 7, NULL, NULL, NULL, NULL),
(2321, '9789791106641', 'Gunung Meletus Dan Antisipasinya', 'Dewayani  C. Tyas', 'Aneka Ilmu', '2008', 2, 0, 7, NULL, NULL, NULL, NULL),
(2322, '9789791106641', 'Mengenal Hewan Australia 1', 'Frida N', 'PT. Sinar Cemerlang Abadi', '2016', 3, 0, 7, NULL, NULL, NULL, NULL),
(2323, '9786021949238', 'Gunung Berapi Di Indonesia', 'Paksi S. R', 'Gelora Swara Mahardika', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2324, '9786021949245', 'Mengenal Kehidupan Manusia Praakasara', 'Paksi S. R', 'Gelora Swara Mahardika', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2325, '9789791106641', 'Mengenal Hewan Australia 2', 'Frida N', 'PT. Sinar Cemerlang Abadi', '2016', 2, 0, 7, NULL, NULL, NULL, NULL),
(2326, '9786029457197', 'Bahaya Polusi Udara', 'A. Asianto', 'Garuda Titisan Seksama', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2327, '9789790531215', 'Minum Air Putih Membuat Sehat', 'Kusnanto', 'CV. Pamularsih', '2010', 3, 0, 7, NULL, NULL, NULL, NULL),
(2328, '978979030188', 'Lingkungan Sekolah Yang Bersih Dan Sehat', 'Endang Sulistiawati', 'CV. Pamularsih', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2329, '9789790530485', 'Adaptasi Makhluk Hidup', 'Sudarti', 'CV. Pamularsih', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2330, '9786029429268', 'Daur Hidup Hewan', 'Mutiah S.pd', 'Pramid Emas Putih', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2331, '9789791494618', 'Pelestarian Lingkungan Hidup', 'Sabartiyah', 'CV. Pamularsih', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2332, '9786029429084', 'Pengenalan Prisma Tegak Segitiga Dan Segi Empat', 'M. Permata Sisi', 'Piramid Emas Putih', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2333, '9789790483729', 'Ayo Belajar Peluang', 'Faizal H', 'Aneka Ilmu', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2334, '9789790336506', 'Mengapa Aku Harus Peduli Pada Bumi?', 'Sara rojo', 'Erlangga For Kids', '2008', 0, 0, 7, NULL, NULL, NULL, NULL),
(2335, '9786029428049', 'Mengenal Jenis Batuan', 'Edo Naharu', 'Armada Buana Prima', '2015', 1, 0, 7, NULL, NULL, NULL, NULL),
(2336, '9789790481980', 'Pengertian Tentang Mamalia', 'Tri Yulianto', 'Aneka Ilmu', '2009', 2, 0, 7, NULL, NULL, NULL, NULL),
(2337, '9786021944400', 'Bangun Ruang Sederhana', 'M. Permata', 'Borneo Adil Katalino', '2015', 1, 0, 7, NULL, NULL, NULL, NULL),
(2338, '9789797369606', 'Indahnya Hujan Dan Pelangi', 'Mujiatun', 'Aneka Ilmu', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2339, '9789790530256', 'Hewan Berbahaya Disekitar Kita', 'Widi Handoro', 'CV. Pamularsih', '2010', 4, 0, 7, NULL, NULL, NULL, NULL),
(2340, '9794953997', 'Rahasia Yang Terkandung Dalam Segitiga', 'Amat Nyoto', 'Ikip Malang', '1999', 2, 0, 7, NULL, NULL, NULL, NULL),
(2341, '9789790483804', 'Tempat Kedudukan', 'Sri Wanarsih', 'Aneka Ilmu', '2014', 2, 0, 7, NULL, NULL, NULL, NULL),
(2342, '9789790482593', 'Keanekaragaman Fauna Asia', 'Sri Winarsih', 'Aneka Ilmu', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2344, '9789790216292', 'Memahami Unsur Senyawa Dan Campuran', 'Novita Fhardhitah', 'PT. Bengawan Ilmu', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2345, '9789790530515', 'Bentuk-bentuk Bangun', 'Arif Widyamoko', 'CV. Pamularsih', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2346, '9789790482920', 'Kehidupan Di Kutub', 'Tri Prasetyono', 'Medali Aneka Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2347, '9786021945148', 'Mengenal Limas', 'Iman Imannudin', 'Medali Emas Pertama', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2348, '9789790483712', 'Ayo Belajar Tranformasi', 'A. Riyati', 'Aneka Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2349, '9789790511286', 'Ayo Belajar Aritmatika', 'Deni Evilione', 'CV. Ghyyes Putra', '2010', 2, 0, 7, NULL, NULL, NULL, NULL),
(2350, '9786029442293', 'Planet Di Jagat Raya', 'W. Elfiati', 'Arwan Sungai Kapuas', '-', 1, 0, 7, NULL, NULL, NULL, NULL),
(2351, '9789792369286', 'Bahan Kimia Di Industri', 'Agus Riyadi', 'Aneka Ilmu', '2009', 2, 0, 7, NULL, NULL, NULL, NULL),
(2352, '9789791495257', 'Cara Mendapat Air Bersih', 'Widyawati', 'CV. Ghyyas Putra', '2008', 2, 0, 7, NULL, NULL, NULL, NULL),
(2353, '9789790483606', 'Konduktor Dan Isolator', 'Nore Choirice', 'Aneka Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2354, '9789790481442', 'Tanah Longsor Dan Antisipasinya', 'Kusnoto Alvin Majid SHI. Mh', 'Aneka Ilmu', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2355, '9786029443987', 'Hewan Yang Hidup Tanah', 'Berte', 'Cakrawala Langit Biru', '2015', 1, 0, 7, NULL, NULL, NULL, NULL),
(2356, '9789790530447', 'Terumbu Karang', 'Dwi Supriyono', 'CV. Pamularsih', '2015', 1, 0, 7, NULL, NULL, NULL, NULL),
(2357, '-', 'Kumpulan Rumus Akurat', 'Drs. Adi Nugroho Dkk', 'Agung Rejeki', '-', 1, 0, 7, NULL, NULL, NULL, NULL),
(2358, '9789797369996', 'Mengenal Jenis-Jenis Batuan', 'Bimo Sakti', 'Aneka Ilmu', '-', 1, 0, 7, NULL, NULL, NULL, NULL),
(2359, '9786029430141', 'Bencana Masa Depan', 'uli Astuti', 'Nata Pedang Ilmu', '2005', 2, 0, 7, NULL, NULL, NULL, NULL),
(2360, '9789790530734', 'Menjalajah Perut Bumi', 'Abeng K', 'CV. Pamularsih', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2361, '9789790482814', 'Mengenal Hewan Vertebrata Dan Invebrata', 'Kusnanto', 'Aneka Ilmu', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2362, '9797365565', 'Mengkudu', 'Hendri Toni', 'Aneka Ilmu', '2006', 1, 0, 7, NULL, NULL, NULL, NULL),
(2363, '9789790214750', 'Mengetahui Ilmu Pengetahuan Alam', 'S Djoewari', 'Bengawan Ilmu', '2009', 3, 0, 7, NULL, NULL, NULL, NULL),
(2364, '9789796214842', 'Mengenal Laser Dan Hologram', 'Sadewin', 'Bengawan Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2365, '-', 'Tabel Lengkap Matematika', '-', 'Karya Guru Jakarta', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2366, '9786028517409', 'Rumus-rumus Hebat Dan Inti Materi Pokok', 'Rim Widya Karya', 'Widya Karya Semarang', '2001', 1, 0, 7, NULL, NULL, NULL, NULL),
(2367, '9789797368173', 'Gempa Bumi Dan Antisipasinya', 'Sapto Madijono', 'Aneka Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2368, '9787366901', 'Budi Daya Kerang Hijau', 'Ir. H. Rahmat Ruamana', 'Aneka Ilmu', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2370, '978979021510', 'Mengenal Serangga Di Sekitar Kita', 'S Djoewari', 'Bengawan Ilmu', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2371, '9789791106535', 'Aku Cinta Indonesia(ACI)', 'Drs. Sumirin M.pd', 'Cv. Sinar Cemerlang Abadi', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2372, '9789799413024', 'Seri Ipa Disekitar Kita', 'W. Elfiati', 'Satu Buku', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2374, '9789796214842', 'Mengenal Laser Dan Hologram', 'Sadewin', 'Bengawan Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2375, '-', 'Tabel Lengkap Matematika', '-', 'Karya Guru Jakarta', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2376, '9786028517409', 'Rumus-rumus Hebat Dan Inti Materi Pokok', 'Rim Widya Karya', 'Widya Karya Semarang', '2001', 1, 0, 7, NULL, NULL, NULL, NULL),
(2377, '9789797368173', 'Gempa Bumi Dan Antisipasinya', 'Sapto Madijono', 'Aneka Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2378, '9787366901', 'Budi Daya Kerang Hijau', 'Ir. H. Rahmat Ruamana', 'Aneka Ilmu', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2379, '9789791496988', 'Eksotis Burung Nuri', 'N Arie Any', 'SEA', '2007', 1, 0, 7, NULL, NULL, NULL, NULL),
(2380, '978979021510', 'Mengenal Serangga Di Sekitar Kita', 'S Djoewari', 'Bengawan Ilmu', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2381, '9789791106535', 'Aku Cinta Indonesia(ACI)', 'Drs. Sumirin M.pd', 'Cv. Sinar Cemerlang Abadi', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2382, '9789799413024', 'Seri Ipa Disekitar Kita', 'W. Elfiati', 'Satu Buku', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2383, '79789790483774', 'Menjelajahi Bgurun', 'Sri Winarsih', 'Aneka Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2384, '9786029430158', 'Bencana Yang Mungkin Di Elakan', 'Yuli Astuti S.pd', 'Mata Pedang Ilmu', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2385, '9786029426274', 'Bentuk Berupa Benda', 'M Permata S.si', 'Buku Bercahaya', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2386, '-', 'Kumpulan Rumus Matematika Fisika', '-', 'Karya Guru Jakarta', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2387, '-', 'Sains Terpadu', '-', 'Karya Guru Jakarta', '-', 1, 0, 7, NULL, NULL, NULL, NULL),
(2388, '9789790215078', 'Mengenal Ragam Tumbuhan Air', 'Agus Maryoto', 'Bengawan Ilmu', '2006', 1, 0, 7, NULL, NULL, NULL, NULL),
(2389, '9797365484', 'Bercocok Tanam Pepaya', 'Wahyu Muljana', 'Aneka Ilmu', '-', 1, 0, 7, NULL, NULL, NULL, NULL),
(2390, '9797365433', 'Bercocok Tanam Buah Buahan', 'Drs. Daryanto', 'Aneka Ilmu', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2410, '9789790531222', 'Dasar Dasar Peng-Indraan Jauh', 'Insyani R. S', 'CV. Pamularsih', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2412, '9789796214842', 'Mengenal Laser Dan Hologram', 'Sadewin', 'Bengawan Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2413, '-', 'Tabel Lengkap Matematika', '-', 'Karya Guru Jakarta', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2414, '9786028517409', 'Rumus-rumus Hebat Dan Inti Materi Pokok', 'Rim Widya Karya', 'Widya Karya Semarang', '2001', 1, 0, 7, NULL, NULL, NULL, NULL),
(2415, '9789797368173', 'Gempa Bumi Dan Antisipasinya', 'Sapto Madijono', 'Aneka Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2416, '9787366901', 'Budi Daya Kerang Hijau', 'Ir. H. Rahmat Ruamana', 'Aneka Ilmu', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2417, '9789791496988', 'Eksotis Burung Nuri', 'N Arie Any', 'SEA', '2007', 1, 0, 7, NULL, NULL, NULL, NULL),
(2418, '978979021510', 'Mengenal Serangga Di Sekitar Kita', 'S Djoewari', 'Bengawan Ilmu', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2419, '9789791106535', 'Aku Cinta Indonesia(ACI)', 'Drs. Sumirin M.pd', 'Cv. Sinar Cemerlang Abadi', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2420, '9789799413024', 'Seri Ipa Disekitar Kita', 'W. Elfiati', 'Satu Buku', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2421, '79789790483774', 'Menjelajahi Bgurun', 'Sri Winarsih', 'Aneka Ilmu', '-', 2, 0, 7, NULL, NULL, NULL, NULL),
(2422, '9786029430158', 'Bencana Yang Mungkin Di Elakan', 'Yuli Astuti S.pd', 'Mata Pedang Ilmu', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2423, '9786029426274', 'Bentuk Berupa Benda', 'M Permata S.si', 'Buku Bercahaya', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2424, '-', 'Kumpulan Rumus Matematika Fisika', '-', 'Karya Guru Jakarta', '2009', 1, 0, 7, NULL, NULL, NULL, NULL),
(2425, '-', 'Sains Terpadu', '-', 'Karya Guru Jakarta', '-', 1, 0, 7, NULL, NULL, NULL, NULL),
(2426, '9789790215078', 'Mengenal Ragam Tumbuhan Air', 'Agus Maryoto', 'Bengawan Ilmu', '2006', 1, 0, 7, NULL, NULL, NULL, NULL),
(2427, '9797365484', 'Bercocok Tanam Pepaya', 'Wahyu Muljana', 'Aneka Ilmu', '-', 1, 0, 7, NULL, NULL, NULL, NULL),
(2428, '9797365433', 'Bercocok Tanam Buah Buahan', 'Drs. Daryanto', 'Aneka Ilmu', '2010', 1, 0, 7, NULL, NULL, NULL, NULL),
(2429, '9799087031', 'Penerapan Pengajarn IPTEK', 'Dr. Arief Rachman Dkk', 'PT. Gunakan Kata', '2002', 1, 0, 7, NULL, NULL, NULL, NULL),
(2430, '9789791106577', 'Mengenal Laut Indonesia', 'Suparti', 'SCA', '-', 1, 0, 7, NULL, NULL, NULL, NULL),
(2431, '9789791906005', 'Ovo Vadis Hari Jadi Situbondo', 'Drs. Edy Burhan Aririn Su Dkk', 'Bappekab Situbondo', '2008', 1, 0, 7, NULL, NULL, NULL, NULL),
(2437, '9796029455151', 'Jenis Dan Operasi Hitung Satuan Waktu', 'A Asianto', 'Cv Potensi Titian Siswa', '2015', 2, 0, 7, NULL, NULL, NULL, NULL),
(2438, '9789791598408', 'Jari Hitung Cepat', 'Drs. Hendra. Bc', 'R3 W Media', '2008', 2, 0, 7, NULL, NULL, NULL, NULL),
(2439, '9789792274342', 'Turbo Neuroprosekling', 'Dipt. Ing. Awie Suwandi Mch. Csh', 'GN', '-', 1, 0, 7, NULL, NULL, NULL, NULL),
(2440, '9794079006', 'Kamus Ilmu Pengetahuan Alam', 'Hadiat Dkk', 'Balai Pustaka', '1996', 1, 0, 7, NULL, NULL, NULL, NULL),
(2445, '089612345', 'Dylen', 'Arief', 'Karya Utama', '2012', 2, 0, 6, 5, 1, '2020-09-23 00:54:52', '2020-09-23 00:54:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id` int(8) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `id_kelas` int(6) NOT NULL,
  `guru` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku_tamu`
--

INSERT INTO `buku_tamu` (`id`, `nama`, `id_kelas`, `guru`, `created_at`, `updated_at`) VALUES
(1, 'ARIEF', 31, 1, '2023-03-20 08:43:33', '2023-03-20 08:43:33'),
(2, 'Eka Yani Wulandari', 31, 1, '2023-03-21 09:36:36', '2023-03-21 09:36:36'),
(3, 'Kholid Mawardi', 31, 1, '2023-03-21 10:10:54', '2023-03-21 10:10:54'),
(4, 'Abdul jalil', 31, 1, '2023-03-21 10:13:42', '2023-03-21 10:13:42'),
(5, 'dummy', 4, 0, '2023-03-21 10:18:21', '2023-03-21 10:18:21'),
(6, 'dummy2', 15, 0, '2023-03-21 17:28:15', '2023-03-21 17:28:15'),
(7, 'Kholid Mawardi', 31, 1, '2023-03-21 17:30:09', '2023-03-21 17:30:09'),
(11, 'Kholid Mawardi', 31, 1, '2023-03-21 17:33:36', '2023-03-21 17:33:36'),
(12, 'Gibran Putra sabilillah', 31, 1, '2023-03-21 17:33:51', '2023-03-21 17:33:51'),
(13, 'tono', 31, 1, '2023-04-01 12:50:56', '2023-04-01 12:50:56'),
(14, 'tono', 31, 1, '2023-04-01 12:51:08', '2023-04-01 12:51:08'),
(16, 'Pinkan Putri salsabila', 14, 0, '2023-04-01 12:57:04', '2023-04-01 12:57:04'),
(17, 'Eka Yani Wulandari', 31, 1, '2023-04-01 13:00:11', '2023-04-01 13:00:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deadline`
--

CREATE TABLE `deadline` (
  `id_deadline` int(6) NOT NULL,
  `hari` int(3) DEFAULT NULL,
  `bulan` int(3) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `deadline`
--

INSERT INTO `deadline` (`id_deadline`, `hari`, `bulan`, `tahun`, `updated_at`, `created_at`) VALUES
(1, 3, 0, 0, NULL, NULL),
(2, 15, 0, 1, NULL, NULL),
(3, 15, 6, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_login`
--

CREATE TABLE `detail_login` (
  `id_detail_login` int(16) UNSIGNED NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `keterangan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_login`
--

INSERT INTO `detail_login` (`id_detail_login`, `id`, `created_at`, `updated_at`, `keterangan`) VALUES
(3, 1, '2020-09-19 10:06:07', '2020-09-19 10:06:22', '2020-09-19 10:06:22'),
(4, 1, '2020-09-19 10:07:05', '2020-09-19 10:07:22', '2020-09-19 10:07:22'),
(5, 1, '2020-09-19 10:18:34', NULL, '2020-09-19 10:18:34'),
(6, 1, '2020-09-21 23:00:19', '2020-09-21 23:02:53', '2020-09-21 23:02:53'),
(7, 10, '2020-09-21 23:03:03', '2020-09-22 01:51:16', '2020-09-22 01:51:16'),
(8, 10, '2020-09-22 01:51:24', NULL, '2020-09-22 01:51:24'),
(9, 10, '2020-09-22 08:49:40', NULL, '2020-09-22 08:49:40'),
(10, 1, '2020-09-22 22:45:28', '2020-09-22 22:45:40', '2020-09-22 22:45:40'),
(11, 10, '2020-09-22 22:45:53', '2020-09-23 00:42:45', '2020-09-23 00:42:45'),
(12, 10, '2020-09-23 00:43:40', NULL, '2020-09-23 00:43:40'),
(13, 10, '2020-09-23 00:53:09', NULL, '2020-09-23 00:53:09'),
(14, 3, '2020-09-23 09:08:16', NULL, '2020-09-23 09:08:16'),
(15, 10, '2020-09-23 14:07:43', NULL, '2020-09-23 14:07:43'),
(16, 10, '2020-09-24 12:26:07', '2020-09-24 14:04:34', '2020-09-24 14:04:34'),
(17, 10, '2020-09-24 22:59:01', NULL, '2020-09-24 22:59:01'),
(18, 10, '2020-09-25 22:38:15', '2020-09-25 23:06:15', '2020-09-25 23:06:15'),
(19, 10, '2020-09-26 01:23:41', '2020-09-26 01:29:27', '2020-09-26 01:29:27'),
(20, 1, '2020-09-26 01:38:07', '2020-09-26 02:07:28', '2020-09-26 02:07:28'),
(21, 1, '2020-09-26 11:08:39', '2020-09-26 11:11:20', '2020-09-26 11:11:20'),
(22, 10, '2020-09-26 11:11:29', NULL, '2020-09-26 11:11:29'),
(23, 10, '2020-09-26 15:03:43', NULL, '2020-09-26 15:03:43'),
(24, 10, '2020-09-26 18:25:48', '2020-09-26 18:56:25', '2020-09-26 18:56:25'),
(25, 10, '2020-09-26 18:57:06', NULL, '2020-09-26 18:57:06'),
(26, 10, '2020-09-27 09:08:07', '2020-09-27 11:06:25', '2020-09-27 11:06:25'),
(27, 10, '2020-09-28 01:09:04', '2020-09-28 01:15:20', '2020-09-28 01:15:20'),
(28, 10, '2020-09-28 09:11:10', NULL, '2020-09-28 09:11:10'),
(29, 10, '2020-09-28 22:58:56', NULL, '2020-09-28 22:58:56'),
(30, 10, '2020-10-01 12:41:08', NULL, '2020-10-01 12:41:08'),
(31, 1, '2020-10-03 19:45:49', '2020-10-03 19:46:52', '2020-10-03 19:46:52'),
(32, 10, '2020-10-03 19:49:49', NULL, '2020-10-03 19:49:49'),
(33, 1, '2020-10-27 15:10:49', '2020-10-27 15:11:20', '2020-10-27 15:11:20'),
(34, 3, '2020-10-27 15:11:31', NULL, '2020-10-27 15:11:31'),
(35, 3, '2020-10-27 15:12:30', NULL, '2020-10-27 15:12:30'),
(36, 1, '2020-10-27 18:51:12', NULL, '2020-10-27 18:51:12'),
(37, 3, '2022-02-04 10:23:51', '2022-02-04 10:23:58', '2022-02-04 10:23:58'),
(38, 3, '2022-02-04 10:25:05', NULL, '2022-02-04 10:25:05'),
(39, 10, '2022-02-04 10:26:58', '2022-02-04 10:27:12', '2022-02-04 10:27:12'),
(40, 3, '2022-02-04 10:28:13', '2022-02-04 11:02:43', '2022-02-04 11:02:43'),
(41, 3, '2022-02-05 11:45:02', '2022-02-05 11:45:39', '2022-02-05 11:45:39'),
(42, 11, '2022-02-05 11:45:48', NULL, '2022-02-05 11:45:48'),
(43, 3, '2022-02-07 12:41:27', '2022-02-07 12:43:44', '2022-02-07 12:43:44'),
(44, 3, '2022-02-07 12:44:12', '2022-02-07 12:44:25', '2022-02-07 12:44:25'),
(45, 11, '2022-02-07 12:44:33', NULL, '2022-02-07 12:44:33'),
(46, 11, '2022-02-07 12:45:27', NULL, '2022-02-07 12:45:27'),
(47, 3, '2023-01-26 15:02:51', '2023-01-26 15:03:20', '2023-01-26 15:03:20'),
(48, 11, '2023-01-26 15:03:31', NULL, '2023-01-26 15:03:31'),
(49, 3, '2023-03-27 13:47:25', '2023-03-27 13:49:21', '2023-03-27 13:49:21'),
(50, 3, '2023-03-27 13:49:58', '2023-03-27 13:50:30', '2023-03-27 13:50:30'),
(51, 12, '2023-03-27 13:51:01', NULL, '2023-03-27 13:51:01'),
(52, 11, '2023-03-27 14:39:48', NULL, '2023-03-27 14:39:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id_kategori` int(6) NOT NULL,
  `kategori` varchar(25) DEFAULT NULL,
  `id_dealine` int(6) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori_buku`
--

INSERT INTO `kategori_buku` (`id_kategori`, `kategori`, `id_dealine`, `updated_at`, `created_at`) VALUES
(4, 'Fiksi', 1, '2022-02-05 11:57:55', NULL),
(5, 'Agama', 1, NULL, NULL),
(6, 'Bahasa', 1, NULL, NULL),
(7, 'Ilmu-Ilmu Murni', 1, NULL, NULL),
(8, 'Ensiklopedi', 1, '2022-02-05 12:00:02', '2022-02-05 12:00:02'),
(9, 'Ilmu murni 500', 1, '2022-02-05 12:00:48', '2022-02-05 12:00:48'),
(10, 'Sejarah 900', 1, '2022-02-05 12:01:14', '2022-02-05 12:01:14'),
(11, 'ILmu sosial 300', 1, '2022-02-05 12:01:41', '2022-02-05 12:01:41'),
(12, 'BAHASA 400', 1, '2022-02-05 12:02:22', '2022-02-05 12:02:22'),
(13, 'Ilmu murni 300', 1, '2022-02-05 12:30:45', '2022-02-05 12:30:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(6) NOT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `updated_at`, `created_at`) VALUES
(1, '7A', NULL, NULL),
(2, '7B', NULL, NULL),
(3, '7C', NULL, NULL),
(4, '7D', NULL, NULL),
(5, '7E', NULL, NULL),
(6, '7F', NULL, NULL),
(7, '7G', NULL, NULL),
(8, '7H', NULL, NULL),
(9, '7I', NULL, NULL),
(10, '7J', NULL, NULL),
(11, '8A', NULL, NULL),
(12, '8B', NULL, NULL),
(13, '8C', NULL, NULL),
(14, '8D', NULL, NULL),
(15, '8E', NULL, NULL),
(16, '8F', NULL, NULL),
(17, '8G', NULL, NULL),
(18, '8H', NULL, NULL),
(19, '8I', NULL, NULL),
(20, '8J', NULL, NULL),
(21, '9A', NULL, NULL),
(22, '9B', NULL, NULL),
(23, '9C', NULL, NULL),
(24, '9D', NULL, NULL),
(25, '9E', NULL, NULL),
(26, '9F', NULL, NULL),
(27, '9G', NULL, NULL),
(28, '9H', NULL, NULL),
(29, '9I', NULL, NULL),
(30, '9J', NULL, NULL),
(31, '-', '2023-03-20 14:42:48', '2023-03-20 14:42:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kolom_rak`
--

CREATE TABLE `kolom_rak` (
  `id_kolom` int(8) NOT NULL,
  `kolom` int(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kolom_rak`
--

INSERT INTO `kolom_rak` (`id_kolom`, `kolom`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 5, NULL, NULL),
(6, 6, NULL, NULL),
(7, 7, NULL, NULL),
(8, 8, NULL, NULL),
(9, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(225) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2023_02_04_125101_create_blogs_table', 2),
(7, '2023_04_03_151006_create_projects_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(6) NOT NULL,
  `id_buku` int(6) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `date` date NOT NULL,
  `status` enum('Di kembalikan','Belum di kembalikan') NOT NULL,
  `batas_peminjaman` date DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(6) NOT NULL,
  `tanggal_dikembalikan` datetime DEFAULT NULL,
  `id_peminjaman` int(6) DEFAULT NULL,
  `denda` int(16) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak_buku`
--

CREATE TABLE `rak_buku` (
  `id_rak` int(16) NOT NULL,
  `rak` varchar(30) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rak_buku`
--

INSERT INTO `rak_buku` (`id_rak`, `rak`, `created_at`, `updated_at`) VALUES
(1, 'Agama dan Budi Pekerti', '2020-09-22 08:36:23', '2020-09-22 08:36:23'),
(2, 'Fiksi', '2020-09-22 08:36:23', '2020-09-22 08:36:23'),
(3, 'Ilmu Pengetahuan', '2020-09-22 08:36:23', '2020-09-22 08:36:23'),
(4, 'Bahasa dan Sastra', '2020-09-22 08:36:23', '2020-09-22 08:36:23'),
(5, 'Novel', '2020-09-22 08:36:23', '2020-09-22 08:36:23'),
(6, 'Bahasa', NULL, NULL),
(7, 'Ilmu-Ilmu Murni', NULL, NULL),
(8, 'Ensiklopedi', NULL, NULL),
(9, 'Ilmu murni 500', NULL, NULL),
(10, 'Sejarah 900', NULL, NULL),
(11, 'ILmu sosial 300', NULL, NULL),
(12, 'BAHASA 400', NULL, NULL),
(13, 'Ilmu murni 300', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(6) NOT NULL,
  `nis` int(16) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `id_kelas` int(6) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama_siswa`, `jenis_kelamin`, `id_kelas`, `updated_at`, `created_at`) VALUES
(1, 16443, 'ABD. QADIR JAILANI GHANI', 'Laki-Laki', 1, NULL, NULL),
(2, 16461, 'AGHNI KAMILIA FAUZI', 'Perempuan', 1, NULL, NULL),
(3, 16472, 'AISYAH MEILINDA RIZKIA DEWI', 'Perempuan', 1, NULL, NULL),
(4, 16478, 'ALIKA AULIA KAMIL', 'Perempuan', 1, NULL, NULL),
(5, 16479, 'ALISHA DWI ADELIA PUTRI', 'Perempuan', 1, NULL, NULL),
(6, 16487, 'AN NISA KHUMAIRO RIZQI PAHLEVI', 'Perempuan', 1, NULL, NULL),
(7, 16488, 'ANASTASYIA AFIFATUN NABILA', 'Perempuan', 1, NULL, NULL),
(8, 16497, 'AN-NISSA AURA DHIYANTI', 'Perempuan', 1, NULL, NULL),
(9, 16499, 'ARDIAN NAFIZZA ZAIN', 'Laki-Laki', 1, NULL, NULL),
(10, 16508, 'AURA MARITSA RAMADHANI', 'Perempuan', 1, NULL, NULL),
(11, 16523, 'CANTIKA NUR FADHILAH', 'Perempuan', 1, NULL, NULL),
(12, 16524, 'CHESA NANDA AURELIA', 'Perempuan', 1, NULL, NULL),
(13, 16555, 'FAHMI FAHREZZY', 'Laki-Laki', 1, NULL, NULL),
(14, 16570, 'FITRI WULANDARI', 'Perempuan', 1, NULL, NULL),
(15, 16577, 'HAFIZHAH NAILATUSY SYARAFAH', 'Perempuan', 1, NULL, NULL),
(16, 16579, 'HANANDITA RAHAYU AULIA RAHMAN', 'Perempuan', 1, NULL, NULL),
(17, 16596, 'JIBRIL MAULANA AL FATIH', 'Laki-Laki', 1, NULL, NULL),
(18, 16612, 'KIRANIA ANUGRAH DWI PUTRI', 'Perempuan', 1, NULL, NULL),
(19, 16639, 'MUHAMMAD ARHAM FAWWAZ', 'Laki-Laki', 1, NULL, NULL),
(20, 16648, 'MUHAMMAD RAID RAFIF PUTERA ALLAN', 'Laki-Laki', 1, NULL, NULL),
(21, 16660, 'NADILA RIZQI AMELIA', 'Perempuan', 1, NULL, NULL),
(22, 16678, 'NICO JHORDANA PUTRA', 'Laki-Laki', 1, NULL, NULL),
(23, 16695, 'RAFLY PRATAMA PUTRA ERVIRA', 'Laki-Laki', 1, NULL, NULL),
(24, 16698, 'RAJENDRA SATRIA WICAKSANA', 'Laki-Laki', 1, NULL, NULL),
(25, 16702, 'RAYA TALITA SAKHY', 'Perempuan', 1, NULL, NULL),
(26, 16714, 'RIZKI AKBARULLAH DWI APRILIANSAH', 'Laki-Laki', 1, NULL, NULL),
(27, 16717, 'RYAN ZAKY FASYA WIJAYA', 'Laki-Laki', 1, NULL, NULL),
(28, 16736, 'TIARA RESTI AZZAHRA', 'Perempuan', 1, NULL, NULL),
(29, 16738, 'TSANITA MAULIDATIEZ ZAHRA', 'Perempuan', 1, NULL, NULL),
(30, 16740, 'VALEN FATHOR ROICHAN', 'Laki-Laki', 1, NULL, NULL),
(31, 16742, 'VAREZ RIFKY ANSHORY', 'Laki-Laki', 1, NULL, NULL),
(32, 16743, 'VERILL FAUSTIN VALENTINO WAHYUDI', 'Laki-Laki', 1, NULL, NULL),
(33, 16466, 'AHMAD HISYAM MAULANA', 'Laki-Laki', 2, NULL, NULL),
(34, 16483, 'AMANDA SESYA PUSPITA', 'Perempuan', 2, NULL, NULL),
(35, 16484, 'AMEL RHEYNA PUTRI FIDAYAT', 'Perempuan', 2, NULL, NULL),
(36, 16489, 'ANDRE PRANATA', 'Laki-Laki', 2, NULL, NULL),
(37, 16492, 'ANGGUN DWI PRADANI PUTRI', 'Perempuan', 2, NULL, NULL),
(38, 16515, 'AZ-ZAHRA FAJAR RAMADHANI', 'Perempuan', 2, NULL, NULL),
(39, 16521, 'BHISMA SATRIA HERMAWAN', 'Laki-Laki', 2, NULL, NULL),
(40, 16529, 'CITRA EKA WIJAYA ASWARSYAH', 'Perempuan', 2, NULL, NULL),
(41, 16531, 'DECKY NOVALDO HIDAYAT', 'Laki-Laki', 2, NULL, NULL),
(42, 16536, 'DHAFIN FAKHRIY RAMADAN', 'Laki-Laki', 2, NULL, NULL),
(43, 16541, 'DINI ANNISA SALSABIILA', 'Perempuan', 2, NULL, NULL),
(44, 16548, 'ELYSA AVRILIA ZAHROTUL JANNAH', 'Perempuan', 2, NULL, NULL),
(45, 16558, 'FARDHAN SYAHLEVY ILYAS', 'Laki-Laki', 2, NULL, NULL),
(46, 16563, 'FARREL CIPTA ANDRIANSYAH', 'Laki-Laki', 2, NULL, NULL),
(47, 16565, 'FATHAN MUHAMMAD', 'Laki-Laki', 2, NULL, NULL),
(48, 16574, 'GHOITSA SABITA RANA', 'Perempuan', 2, NULL, NULL),
(49, 16611, 'KIRANI SUKMANING GUSTI WISESA', 'Perempuan', 2, NULL, NULL),
(50, 16618, 'MAHIRAH AL UWAINI', 'Perempuan', 2, NULL, NULL),
(51, 16621, 'MALIKA INDRIANI KAMIL', 'Perempuan', 2, NULL, NULL),
(52, 16644, 'MUHAMMAD HANIF AL-GHIFFARI HASAN', 'Laki-Laki', 2, NULL, NULL),
(53, 16658, 'NABILA NURUZZAHRA', 'Perempuan', 2, NULL, NULL),
(54, 16669, 'NASYA SALSABILA NADHIFA AMSYARI', 'Perempuan', 2, NULL, NULL),
(55, 16670, 'NASYWA AZMII MAULIDA', 'Perempuan', 2, NULL, NULL),
(56, 16699, 'RALDO HARI PRATAMA', 'Laki-Laki', 2, NULL, NULL),
(57, 16700, 'RANANTA MAHESWARI TUSARA', 'Perempuan', 2, NULL, NULL),
(58, 16719, 'SA ID AKBAR HIDAYAT', 'Laki-Laki', 2, NULL, NULL),
(59, 16720, 'SALSABILA NADHIFA AYUNDITA', 'Perempuan', 2, NULL, NULL),
(60, 16733, 'THALITHA CLARISSA FARROS', 'Perempuan', 2, NULL, NULL),
(61, 16739, 'VALDHIS ADINATA PRASETIYO', 'Laki-Laki', 2, NULL, NULL),
(62, 16749, 'WISYIN APRILIANES', 'Laki-Laki', 2, NULL, NULL),
(63, 16751, 'YOGA JULIANTO EKA SAPUTRO', 'Laki-Laki', 2, NULL, NULL),
(64, 16752, 'ZAHRAH CLIANTA FATHINAH', 'Perempuan', 2, NULL, NULL),
(65, 16442, 'A.A.N MANIK NARARYANA', 'Laki-Laki', 3, NULL, NULL),
(66, 16446, 'ABIEY FALAH KHADAFI', 'Laki-Laki', 3, NULL, NULL),
(67, 16448, 'ABYAZ PUTRA MAULANA WIBOWO', 'Laki-Laki', 3, NULL, NULL),
(68, 16452, 'ADILA HILWA ILMI MAHIRO', 'Perempuan', 3, NULL, NULL),
(69, 16458, 'ADNAN SULAIMAN ZUHDI', 'Laki-Laki', 3, NULL, NULL),
(70, 16460, 'ADRIAN ZAFA PUTRA DERMAWAN', 'Laki-Laki', 3, NULL, NULL),
(71, 16468, 'AHUMY KANZA MURANO FAWWAS', 'Laki-Laki', 3, NULL, NULL),
(72, 16477, 'ALIF ROBBY ABDILLAH', 'Laki-Laki', 3, NULL, NULL),
(73, 16506, 'AUDREY EFRA RAFEYFA ARIQAH', 'Perempuan', 3, NULL, NULL),
(74, 16507, 'AULIA QOMARIDA TASAQ', 'Perempuan', 3, NULL, NULL),
(75, 16510, 'AURIEL CAHYA SEPTIA ARINI', 'Perempuan', 3, NULL, NULL),
(76, 16512, 'AZHAR DAVA AL GHIFARY', 'Laki-Laki', 3, NULL, NULL),
(77, 16520, 'BETARI TYAS PARAHITA', 'Perempuan', 3, NULL, NULL),
(78, 16533, 'DESY NUR KUMALASARI', 'Perempuan', 3, NULL, NULL),
(79, 16553, 'FADHILA PRAMATA GUNAWAN', 'Laki-Laki', 3, NULL, NULL),
(80, 16575, 'GLADYS JUWITA PURNAMA SARI', 'Perempuan', 3, NULL, NULL),
(81, 16576, 'HABIBIE WIRATAMA PUTRA SATRIA', 'Laki-Laki', 3, NULL, NULL),
(82, 16578, 'HANA RAMADHANI PUTRIYONO', 'Perempuan', 3, NULL, NULL),
(83, 16580, 'HANUM IMRATUL MUHARROMI', 'Perempuan', 3, NULL, NULL),
(84, 16583, 'HASTA RIYANTI TANOVIA', 'Perempuan', 3, NULL, NULL),
(85, 16608, 'KHANSA NAJWA SYAKIRAH', 'Perempuan', 3, NULL, NULL),
(86, 16609, 'KHOIRINA PUTRI RAMADHANI RIFANDI', 'Perempuan', 3, NULL, NULL),
(87, 16615, 'LINTANG ARSY HARYANINGTYAS', 'Perempuan', 3, NULL, NULL),
(88, 16628, 'MAULIDYA PUTRI NORA SALSABILA', 'Perempuan', 3, NULL, NULL),
(89, 16636, 'MOHAMMAD MISBAHUL ABRORI', 'Laki-Laki', 3, NULL, NULL),
(90, 16641, 'MUHAMMAD ELLO AJI NUR ISLAMI', 'Laki-Laki', 3, NULL, NULL),
(91, 16646, 'MUHAMMAD NAUFAL AKMAL', 'Laki-Laki', 3, NULL, NULL),
(92, 16647, 'MUHAMMAD RAFI ILHAM', 'Laki-Laki', 3, NULL, NULL),
(93, 16682, 'NOVA BILQIS MUSTAFA', 'Perempuan', 3, NULL, NULL),
(94, 16718, 'SABIAN AHNAF', 'Laki-Laki', 3, NULL, NULL),
(95, 16726, 'SHELLY PATRICIA PURBASARI', 'Perempuan', 3, NULL, NULL),
(96, 16735, 'TIARA NATASYAH TALISA', 'Perempuan', 3, NULL, NULL),
(97, 16450, 'ADE DAVI IMRON SABILILLAH', 'Laki-Laki', 4, NULL, NULL),
(98, 16453, 'ADINDA PERMATASARI', 'Perempuan', 4, NULL, NULL),
(99, 16457, 'ADNAN BUDI SUSETYO', 'Laki-Laki', 4, NULL, NULL),
(100, 16462, 'AGUNG JAYADI', 'Laki-Laki', 4, NULL, NULL),
(101, 16480, 'ALUNSI LUNA PUTRI ZAHRA', 'Perempuan', 4, NULL, NULL),
(102, 16511, 'AYU LINURTI LAILY RAMADHANI', 'Perempuan', 4, NULL, NULL),
(103, 16528, 'CINTA VINDY RAMADHANY', 'Perempuan', 4, NULL, NULL),
(104, 16530, 'DAFFA AL FIRDZAN WINARDY', 'Laki-Laki', 4, NULL, NULL),
(105, 16545, 'EGA BANU HUSAIN', 'Laki-Laki', 4, NULL, NULL),
(106, 16549, 'EVELYNA RAFIKA PUTRI', 'Perempuan', 4, NULL, NULL),
(107, 16551, 'FACHREZA DWI MAULANA BASRI', 'Laki-Laki', 4, NULL, NULL),
(108, 16552, 'FACHRI EKA NADZIR', 'Laki-Laki', 4, NULL, NULL),
(109, 16561, 'FARID PUTRA DWI FERIYANTO', 'Laki-Laki', 4, NULL, NULL),
(110, 16566, 'FERNANDA ARIN PRATAMA', 'Laki-Laki', 4, NULL, NULL),
(111, 16569, 'FIRYAL RIAMIZARD AL-GHIZALI', 'Laki-Laki', 4, NULL, NULL),
(112, 16573, 'GEBRIEL HAMMADA RABBIC', 'Laki-Laki', 4, NULL, NULL),
(113, 16586, 'IL TSAR BAGASTIADIRRIJAL', 'Laki-Laki', 4, NULL, NULL),
(114, 16598, 'JULIO RAYKA PUTRA AINUR', 'Laki-Laki', 4, NULL, NULL),
(115, 16600, 'KAMIL ANIES', 'Laki-Laki', 4, NULL, NULL),
(116, 16607, 'KHANSA MALIKAH YULIANTI', 'Perempuan', 4, NULL, NULL),
(117, 16626, 'MAULIDA APRILIA ISKANDAR', 'Perempuan', 4, NULL, NULL),
(118, 16643, 'MUHAMMAD FAUZI RISKIYANTORO', 'Laki-Laki', 4, NULL, NULL),
(119, 16650, 'MUHAMMAD RIDHA', 'Laki-Laki', 4, NULL, NULL),
(120, 16663, 'NAFLA NANINDAH DEWI', 'Perempuan', 4, NULL, NULL),
(121, 16681, 'NOUFAL ISHAK FIRMAN HIDAYAT', 'Laki-Laki', 4, NULL, NULL),
(122, 16686, 'OLIVIA TUNJUNG SARI', 'Perempuan', 4, NULL, NULL),
(123, 16701, 'RATU MUTIARA ALIFAH IWANTHYKA', 'Perempuan', 4, NULL, NULL),
(124, 16707, 'RENDY TRIYAS FATIKHUR RIZZIQ', 'Laki-Laki', 4, NULL, NULL),
(125, 16708, 'RENOV AKBAR GAZALI', 'Laki-Laki', 4, NULL, NULL),
(126, 16716, 'ROZAAN SOFYAN', 'Laki-Laki', 4, NULL, NULL),
(127, 16721, 'SHABRI ULIN NUHA', 'Laki-Laki', 4, NULL, NULL),
(128, 16748, 'WISNU GERRARD SAID ALI', 'Laki-Laki', 4, NULL, NULL),
(129, 16467, 'AHMAD QASIM', 'Laki-Laki', 5, NULL, NULL),
(130, 16469, 'AHYUNI WIDYA RESMI', 'Perempuan', 5, NULL, NULL),
(131, 16470, 'AINUR ROFYQI', 'Laki-Laki', 5, NULL, NULL),
(132, 16495, 'ANJAR NOER SASMITA FADILLAH RAHMAN', 'Laki-Laki', 5, NULL, NULL),
(133, 16518, 'BAYU GHUFRON BAHTIAR', 'Laki-Laki', 5, NULL, NULL),
(134, 16519, 'BELVA SEADEN JAUZA KAMBERE', 'Perempuan', 5, NULL, NULL),
(135, 16525, 'CHESYA NADIVA FLORORA', 'Perempuan', 5, NULL, NULL),
(136, 16532, 'DELA PUTRI AVRILIA', 'Perempuan', 5, NULL, NULL),
(137, 16534, 'DEVA PUTRA VERYANSYAH', 'Laki-Laki', 5, NULL, NULL),
(138, 16564, 'FARREL GIANIFA RAHARJO', 'Laki-Laki', 5, NULL, NULL),
(139, 16567, 'FESYA RIDNAN TRI GUSTAMI', 'Laki-Laki', 5, NULL, NULL),
(140, 16572, 'GAVIN KAGENDRA NAYOTTAMA', 'Laki-Laki', 5, NULL, NULL),
(141, 16582, 'HASSA CIRTA AMALIA', 'Perempuan', 5, NULL, NULL),
(142, 16588, 'INDHI MALDINI KURNIAWAN', 'Perempuan', 5, NULL, NULL),
(143, 16589, 'INTAN DWI NURAINI', 'Perempuan', 5, NULL, NULL),
(144, 16602, 'KEANDRE RAKHA HUNTARA', 'Laki-Laki', 5, NULL, NULL),
(145, 16605, 'KEYSHA ALMA PUTRI SASTRA', 'Perempuan', 5, NULL, NULL),
(146, 16623, 'MARVEL AL GHUFRON', 'Laki-Laki', 5, NULL, NULL),
(147, 16630, 'MEYRYZKE RIZKY HIDAYAT', 'Perempuan', 5, NULL, NULL),
(148, 16662, 'NADYA NAILA MARIRAH', 'Perempuan', 5, NULL, NULL),
(149, 16666, 'NAJWA CITRA SAFIRA', 'Perempuan', 5, NULL, NULL),
(150, 16671, 'NAUFAL AGRAYASA ABDILLAH', 'Laki-Laki', 5, NULL, NULL),
(151, 16674, 'NAURAH JASMINE HERKATA', 'Laki-Laki', 5, NULL, NULL),
(152, 16685, 'NURUL HIDAYAT JANUARDIANSYAH', 'Laki-Laki', 5, NULL, NULL),
(153, 16705, 'REIGAN SATRIA PRAMASTA', 'Laki-Laki', 5, NULL, NULL),
(154, 16706, 'REIZHA RESTU ANGGRAENI', 'Perempuan', 5, NULL, NULL),
(155, 16710, 'REZA IRWANSYAH', 'Laki-Laki', 5, NULL, NULL),
(156, 16712, 'RIO RAHMAT SANTOSO', 'Laki-Laki', 5, NULL, NULL),
(157, 16753, 'ZAHRATAN JANNAH SYAKRANI', 'Perempuan', 5, NULL, NULL),
(158, 16754, 'ZAHWA PUTRI DESRINA', 'Perempuan', 5, NULL, NULL),
(159, 16756, 'ZAKIA RISKI SANDI RAHMADINA', 'Perempuan', 5, NULL, NULL),
(160, 16757, 'ZILFAH NAFTALY ZAHROTUSSYITA', 'Perempuan', 5, NULL, NULL),
(161, 16444, 'ABDHIEL ALPHA REYHAN HIDAYAT', 'Laki-Laki', 6, NULL, NULL),
(162, 16476, 'ALIF MUHAMAD NASIR', 'Laki-Laki', 6, NULL, NULL),
(163, 16482, 'AMALIA SALSABILA', 'Perempuan', 6, NULL, NULL),
(164, 16491, 'ANGGI BHAUTI PUTRI', 'Perempuan', 6, NULL, NULL),
(165, 16494, 'ANITA KUSUMA SARI', 'Perempuan', 6, NULL, NULL),
(166, 16513, 'AZKA NAFISAH AZHAR', 'Perempuan', 6, NULL, NULL),
(167, 16516, 'BAGAS RAVIV HANANTA', 'Laki-Laki', 6, NULL, NULL),
(168, 16522, 'BISMA JAYA PRANATA', 'Laki-Laki', 6, NULL, NULL),
(169, 16546, 'ELOK TRI WULANDARI', 'Perempuan', 6, NULL, NULL),
(170, 16559, 'FAREL MUHAMMAD HILMI', 'Laki-Laki', 6, NULL, NULL),
(171, 16593, 'IRVAN HADI PRAYITNO', 'Laki-Laki', 6, NULL, NULL),
(172, 16594, 'JASMINE SYAKIRAH APRILIA', 'Perempuan', 6, NULL, NULL),
(173, 16599, 'KAHFI HAKAM ASSYATIRI', 'Laki-Laki', 6, NULL, NULL),
(174, 16601, 'KARIDA FIDELIA ZHAHIRA', 'Perempuan', 6, NULL, NULL),
(175, 16606, 'KHADIJAH ZAHIRAH', 'Perempuan', 6, NULL, NULL),
(176, 16624, 'MARVELINO RAZZAN', 'Laki-Laki', 6, NULL, NULL),
(177, 16633, 'MOH. FAREL RAMADHAN', 'Laki-Laki', 6, NULL, NULL),
(178, 16634, 'MOHAMMAD ISLA RAYMIZARD', 'Laki-Laki', 6, NULL, NULL),
(179, 16640, 'MUHAMMAD DIKA AZIS', 'Laki-Laki', 6, NULL, NULL),
(180, 16642, 'MUHAMMAD FAHREZY YUANANTA', 'Laki-Laki', 6, NULL, NULL),
(181, 16654, 'MUHAMMAD WILDANUN MUKHOLLADUN', 'Laki-Laki', 6, NULL, NULL),
(182, 16661, 'NADINE CAHYA KHOIRON', 'Perempuan', 6, NULL, NULL),
(183, 16667, 'NANDAH HILMANIYAH ZUBAIDI', 'Perempuan', 6, NULL, NULL),
(184, 16676, 'NAYLA EVELYNA CHANDRA SYAFIRA', 'Perempuan', 6, NULL, NULL),
(185, 16677, 'NESA NUR AZIZAH', 'Perempuan', 6, NULL, NULL),
(186, 16680, 'NINDI KHALISA RENITA PUTRI', 'Perempuan', 6, NULL, NULL),
(187, 16690, 'QOIS FIHAWA FEBRI ANITA SUKOCO', 'Perempuan', 6, NULL, NULL),
(188, 16694, 'RAFIF ARRACHMAN', 'Laki-Laki', 6, NULL, NULL),
(189, 16711, 'RIDHO HUMAM MAULANA', 'Laki-Laki', 6, NULL, NULL),
(190, 16728, 'SHOFIE AMALIA REFA', 'Perempuan', 6, NULL, NULL),
(191, 16731, 'SRI WULAN SARI HIDAYATILLAH', 'Perempuan', 6, NULL, NULL),
(192, 16747, 'WINDI SAYU RAHMADANI', 'Perempuan', 6, NULL, NULL),
(193, 16447, 'ABIEZA ZAKIYESHA', 'Perempuan', 7, NULL, NULL),
(194, 16471, 'AIRIN DWI ARIYANTI', 'Perempuan', 7, NULL, NULL),
(195, 16473, 'ALFA RIZKY DARMAWAN', 'Laki-Laki', 7, NULL, NULL),
(196, 16485, 'AMELIA PARAMITA', 'Perempuan', 7, NULL, NULL),
(197, 16501, 'ARGA HARUN DANISWARA', 'Laki-Laki', 7, NULL, NULL),
(198, 16503, 'ARKANANTA ARTHUR PUTRA PRASETYA', 'Laki-Laki', 7, NULL, NULL),
(199, 16514, 'AZRIL FADHILAH TAUFIQ HIDAYAT', 'Laki-Laki', 7, NULL, NULL),
(200, 16526, 'CHIKITA ABELIA OKTANANDA', 'Perempuan', 7, NULL, NULL),
(201, 16527, 'CINTA REYSHA RAMADHANI', 'Perempuan', 7, NULL, NULL),
(202, 16537, 'DHIFAN FAIZAL ARFAN', 'Laki-Laki', 7, NULL, NULL),
(203, 16547, 'ELRA SHAN NUR SHALLUM', 'Perempuan', 7, NULL, NULL),
(204, 16550, 'EZAR ARGA PRATAMA', 'Laki-Laki', 7, NULL, NULL),
(205, 16571, 'FITROH DWI OKTA HARIYONO', 'Laki-Laki', 7, NULL, NULL),
(206, 16585, 'IKMAL MAULANA HUSEN', 'Laki-Laki', 7, NULL, NULL),
(207, 16587, 'IMEL NURFADILAH', 'Perempuan', 7, NULL, NULL),
(208, 16590, 'IQBAL KHAIRUL MIFTAH', 'Laki-Laki', 7, NULL, NULL),
(209, 16591, 'IRA ZAHRA SALSABILA', 'Perempuan', 7, NULL, NULL),
(210, 16595, 'JAWHARATUL MUFIDA', 'Perempuan', 7, NULL, NULL),
(211, 16603, 'KEISYA PUTRI OKTAVIA', 'Perempuan', 7, NULL, NULL),
(212, 16617, 'M RAKA ALFATHIR', 'Laki-Laki', 7, NULL, NULL),
(213, 16629, 'MERYCKE VIONA ADRIANI', 'Perempuan', 7, NULL, NULL),
(214, 16652, 'MUHAMMAD SATRIO NAJID', 'Laki-Laki', 7, NULL, NULL),
(215, 16653, 'MUHAMMAD SULHAN', 'Laki-Laki', 7, NULL, NULL),
(216, 16673, 'NAURAH HAFIZHA FIRDAUS RACHMAN', 'Perempuan', 7, NULL, NULL),
(217, 16675, 'NAVIEK NEIL HANS', 'Laki-Laki', 7, NULL, NULL),
(218, 16683, 'NUR HANIF HOLILUR RAHMAN', 'Laki-Laki', 7, NULL, NULL),
(219, 16704, 'REFRI DEVADO ADITYA', 'Laki-Laki', 7, NULL, NULL),
(220, 16709, 'REVA YUNISHA VIONANDA', 'Perempuan', 7, NULL, NULL),
(221, 16725, 'SHAVLEF EL GABRIELLE AL SYAHTAG', 'Laki-Laki', 7, NULL, NULL),
(222, 16750, 'YESSIE AVRILIA HERMANTO', 'Perempuan', 7, NULL, NULL),
(223, 16755, 'ZAIDAN BOEMI ADEBAYOO PRAWAYLA', 'Laki-Laki', 7, NULL, NULL),
(224, 16760, 'ZULFIQAR GHOZI AL-AZHAR', 'Laki-Laki', 7, NULL, NULL),
(225, 16455, 'ADITYA MAULANA RAHMATULLAH', 'Laki-Laki', 8, NULL, NULL),
(226, 16456, 'ADLINE NAJWA NOVIANA', 'Perempuan', 8, NULL, NULL),
(227, 16463, 'AGUNG PUTRA DIJAYA', 'Laki-Laki', 8, NULL, NULL),
(228, 16464, 'AHMAD AZRUL ANANDA', 'Laki-Laki', 8, NULL, NULL),
(229, 16474, 'ALGA ADITYA DIRGANTARA', 'Laki-Laki', 8, NULL, NULL),
(230, 16490, 'ANGGELIKA HUMAYROH STWO', 'Perempuan', 8, NULL, NULL),
(231, 16539, 'DINDA MELATI AULIA PURNAMA', 'Perempuan', 8, NULL, NULL),
(232, 16540, 'DINDA PUTRI CHANDANY', 'Perempuan', 8, NULL, NULL),
(233, 16542, 'DONESIA SIBIL KAISYA', 'Perempuan', 8, NULL, NULL),
(234, 16554, 'FADHLURRAHMAN RAZIN ADZKIYA. AL', 'Laki-Laki', 8, NULL, NULL),
(235, 16557, 'FARA YUDHA KURNIAWAN', 'Perempuan', 8, NULL, NULL),
(236, 16560, 'FARHAN TUNBAR NASRULLAH', 'Laki-Laki', 8, NULL, NULL),
(237, 16581, 'HANUNDIA AQILA RAMADHANTI', 'Perempuan', 8, NULL, NULL),
(238, 16604, 'KEVIN PRANATA JAYA', 'Laki-Laki', 8, NULL, NULL),
(239, 16610, 'KHUSNUS SABRINA KUSUMAWARDANI', 'Perempuan', 8, NULL, NULL),
(240, 16613, 'LAHITA KHAIRUNNISA', 'Perempuan', 8, NULL, NULL),
(241, 16619, 'MAKKY RAMDHAN HERMAWAN', 'Laki-Laki', 8, NULL, NULL),
(242, 16627, 'MAULIDYA LAURA MARCH', 'Perempuan', 8, NULL, NULL),
(243, 16631, 'MOH NIZAR THARIQ ZAIDAH', 'Laki-Laki', 8, NULL, NULL),
(244, 16637, 'MUH. FARDAN FAIQ', 'Laki-Laki', 8, NULL, NULL),
(245, 16659, 'NABILA PUTRI SAFINA', 'Perempuan', 8, NULL, NULL),
(246, 16665, 'NAISA MAHARANI ZAMZAMAH', 'Perempuan', 8, NULL, NULL),
(247, 16668, 'NASHWA RHANI PRAMUDITA', 'Perempuan', 8, NULL, NULL),
(248, 16687, 'PANDU ERGA MAULANA', 'Laki-Laki', 8, NULL, NULL),
(249, 16691, 'RADISTY SAWIYATUL WIDAD', 'Perempuan', 8, NULL, NULL),
(250, 16692, 'RADIT EKA PUTRA IRAWAN', 'Laki-Laki', 8, NULL, NULL),
(251, 16696, 'RAGIL RADITYA PURWANDA', 'Laki-Laki', 8, NULL, NULL),
(252, 16703, 'RAYSYA VANDIA', 'Laki-Laki', 8, NULL, NULL),
(253, 16713, 'RIYANDY MAULANA RAFLI', 'Laki-Laki', 8, NULL, NULL),
(254, 16723, 'SHAFITRI ZERLINDA ARKA NURIAH RAMADHANI', 'Perempuan', 8, NULL, NULL),
(255, 16741, 'VAQI ADHIMA WIJAYANTO', 'Laki-Laki', 8, NULL, NULL),
(256, 16745, 'VYOLA RIYAN SALSABILA', 'Perempuan', 8, NULL, NULL),
(257, 16459, 'ADRIAN PUTRA MAULANA AL AMIN', 'Laki-Laki', 9, NULL, NULL),
(258, 16465, 'AHMAD HILMI BIMA ZAMANI', 'Laki-Laki', 9, NULL, NULL),
(259, 16481, 'ALVIRAH TAMIMA KHAMILIA RISKI', 'Perempuan', 9, NULL, NULL),
(260, 16486, 'AMI WARDATUS SOLEHA', 'Perempuan', 9, NULL, NULL),
(261, 16493, 'ANISATUN KHOLISOH', 'Perempuan', 9, NULL, NULL),
(262, 16496, 'ANNISA FELICIA CATHARINA RAHMANDA', 'Perempuan', 9, NULL, NULL),
(263, 16498, 'ARAFA RIZKI TRI SAPUTRA', 'Laki-Laki', 9, NULL, NULL),
(264, 16502, 'ARIF WICAKSONO HIDAYATULLAH', 'Laki-Laki', 9, NULL, NULL),
(265, 16509, 'AURELIO RADITYA BISMA', 'Laki-Laki', 9, NULL, NULL),
(266, 16535, 'DHAFIN DWI ANWINTRA', 'Laki-Laki', 9, NULL, NULL),
(267, 16543, 'DRAJAT BINTANG ANGKASA', 'Laki-Laki', 9, NULL, NULL),
(268, 16562, 'FARIDATUL JAZILA', 'Perempuan', 9, NULL, NULL),
(269, 16568, 'FIDELA AUDIA NOVIANDITA', 'Perempuan', 9, NULL, NULL),
(270, 16584, 'I KADEK ARDA NARESWARA DWI PUTRA SRIDANA', 'Laki-Laki', 9, NULL, NULL),
(271, 16592, 'IRSYAD ATHFAL SETYAWAN', 'Laki-Laki', 9, NULL, NULL),
(272, 16632, 'MOH. DITO WAHYU RAMADHAN', 'Laki-Laki', 9, NULL, NULL),
(273, 16635, 'MOHAMMAD ISLA ROYMIZARD', 'Laki-Laki', 9, NULL, NULL),
(274, 16638, 'MUHAMMAD AFIF WAHID', 'Laki-Laki', 9, NULL, NULL),
(275, 16645, 'MUHAMMAD NABIL ZAFRAN', 'Laki-Laki', 9, NULL, NULL),
(276, 16649, 'MUHAMMAD REZA PUTRA ADITYA', 'Laki-Laki', 9, NULL, NULL),
(277, 16656, 'MUZZAMMIL NIDJI PUTRA WIDJAYA', 'Laki-Laki', 9, NULL, NULL),
(278, 16664, 'NAILA MUTIARA ALFIAH', 'Perempuan', 9, NULL, NULL),
(279, 16684, 'NURAINI FERGINA PUTRI', 'Perempuan', 9, NULL, NULL),
(280, 16688, 'PRIAS SYAFIR FADILAH', 'Laki-Laki', 9, NULL, NULL),
(281, 16693, 'RADITYA NURLAILY PUTERI', 'Perempuan', 9, NULL, NULL),
(282, 16727, 'SHERENA NIKITA SABRINA', 'Perempuan', 9, NULL, NULL),
(283, 16729, 'SITI RAHMA NUR KHALISHA', 'Perempuan', 9, NULL, NULL),
(284, 16732, 'SYARIFA AULIA QANITA SYEKHA', 'Perempuan', 9, NULL, NULL),
(285, 16734, 'TIARA DWIMASAYU YANUARIL', 'Perempuan', 9, NULL, NULL),
(286, 16737, 'TIFANNY TIMUR', 'Laki-Laki', 9, NULL, NULL),
(287, 16759, 'ZULFATUS STANIYAH', 'Perempuan', 9, NULL, NULL),
(288, 16761, 'ZULFIYAN AHMAD GHIFARI', 'Laki-Laki', 9, NULL, NULL),
(289, 16445, 'ABIDAH ARDELIA', 'Perempuan', 10, NULL, NULL),
(290, 16449, 'ACHMAD DAFFA RHAMADAN', 'Laki-Laki', 10, NULL, NULL),
(291, 16451, 'ADELA PUTRI OKTAVIA RAMADHANI', 'Perempuan', 10, NULL, NULL),
(292, 16454, 'ADINDA RISKA SEPTIANTIKA', 'Perempuan', 10, NULL, NULL),
(293, 16475, 'ALIF IKHWANDIKA', 'Laki-Laki', 10, NULL, NULL),
(294, 16500, 'ARETHA OKTAVIANI FAUSTIN', 'Perempuan', 10, NULL, NULL),
(295, 16504, 'ARNINDA RIZKY CAHYA MAGANI', 'Perempuan', 10, NULL, NULL),
(296, 16505, 'ARYA MAHARDHIKA WIRATAMA', 'Laki-Laki', 10, NULL, NULL),
(297, 16517, 'BAYU ADE MAULANA', 'Laki-Laki', 10, NULL, NULL),
(298, 16538, 'DIMAS MAULANA', 'Laki-Laki', 10, NULL, NULL),
(299, 16544, 'DWI HADI PRASOJO', 'Laki-Laki', 10, NULL, NULL),
(300, 16556, 'FAISHOL HAQ RASYADELA', 'Laki-Laki', 10, NULL, NULL),
(301, 16597, 'JONATHAN CORNELLIUS SANJAYA', 'Laki-Laki', 10, NULL, NULL),
(302, 16614, 'LAILATUL DWI AFIFAH WIJAYANTI', 'Perempuan', 10, NULL, NULL),
(303, 16616, 'LISA AMELIA HARIS', 'Perempuan', 10, NULL, NULL),
(304, 16620, 'MALFIAN ADI PRABOWO', 'Laki-Laki', 10, NULL, NULL),
(305, 16622, 'MARSELLO RADITYA FERNANDO', 'Laki-Laki', 10, NULL, NULL),
(306, 16625, 'MAULANA YUSUF RAFI', 'Laki-Laki', 10, NULL, NULL),
(307, 16651, 'MUHAMMAD RIZKY YANUAR ALI RAHMAN', 'Laki-Laki', 10, NULL, NULL),
(308, 16655, 'MUZTADLAFIN ARRACHMAN HASYIM', 'Laki-Laki', 10, NULL, NULL),
(309, 16657, 'NABILA MEYSUN FAYRUS ASHAR', 'Perempuan', 10, NULL, NULL),
(310, 16672, 'NAUFAL DHAIFULLAH RAMADHANI', 'Laki-Laki', 10, NULL, NULL),
(311, 16679, 'NIMAS SITI NURHAJATI', 'Perempuan', 10, NULL, NULL),
(312, 16689, 'PUTRI ULFA RAHMAWATI', 'Perempuan', 10, NULL, NULL),
(313, 16697, 'RAISA RIZKY PUSPITANINGRUM', 'Perempuan', 10, NULL, NULL),
(314, 16715, 'ROBY ANGGA PRADANA', 'Laki-Laki', 10, NULL, NULL),
(315, 16722, 'SHAFIRA ZERLINDA ARKA NURIAH RAMADHANI', 'Perempuan', 10, NULL, NULL),
(316, 16724, 'SHAHARBANU RAMADHANI', 'Perempuan', 10, NULL, NULL),
(317, 16730, 'SOFIYAH AYU NURJIHAN', 'Perempuan', 10, NULL, NULL),
(318, 16744, 'VIRA DWI AMELIA', 'Perempuan', 10, NULL, NULL),
(319, 16746, 'WASI BILLAH', 'Laki-Laki', 10, NULL, NULL),
(320, 16758, 'ZLATAN SATRIA ARFA', 'Laki-Laki', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('Admin','Operator','Guru') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Muhammad ma\'arif', 'arief@gmail.com', NULL, '$2y$10$Eiuk2R9NIWjVL8wm/PSI9.VUrM.bqMgWNYTEUk.S22FOrAPpD1asK', NULL, '2020-08-28 22:48:15', '2022-02-04 03:28:28', 'Admin'),
(3, 'Arief Muhammad', 'mmaarif36@gmail.com', NULL, '$2y$10$P34Xt6avXwkqeI19EajPMehylVaqgAqOGqA.Kt61LH.94n21Siiy6', NULL, '2020-08-31 03:20:09', '2020-10-27 08:11:09', 'Admin'),
(10, 'Yoga P Saputra', 'ypsaputra@gmail.com', NULL, '$2y$10$0vttj79M46waF6vEjloru.X3kUciFO6yLj9qF3FGlGwBvx5GMx.L.', NULL, '2020-09-18 05:03:22', '2020-10-03 12:46:26', 'Operator'),
(11, 'admin', 'dedtod@gmail.com', NULL, '$2y$10$6OTC7SGysEChxsBEyvHA0u5l7yR7tXKK.ScJkMFG51yMkoi21K8jS', NULL, '2022-02-05 04:45:33', '2023-01-26 08:03:08', 'Guru'),
(12, 'Bu Erni', 'erni@smpn1situbondo.sch.id', NULL, '$2y$10$My5SqnOgNsFfVqYPeB2ss.6XVEFgzQlWmgJOSzmzT/DsWsp1K4lQm', NULL, '2023-03-27 06:49:11', '2023-03-27 06:50:22', 'Operator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_ketegori` (`id_ketegori`),
  ADD KEY `id_rak` (`id_rak`),
  ADD KEY `id_kolom` (`id_kolom`);

--
-- Indeks untuk tabel `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `deadline`
--
ALTER TABLE `deadline`
  ADD PRIMARY KEY (`id_deadline`);

--
-- Indeks untuk tabel `detail_login`
--
ALTER TABLE `detail_login`
  ADD PRIMARY KEY (`id_detail_login`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_dealine` (`id_dealine`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `kolom_rak`
--
ALTER TABLE `kolom_rak`
  ADD PRIMARY KEY (`id_kolom`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `peminjaman_ibfk_4` (`id_siswa`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `pengembalian_ibfk_1` (`id_peminjaman`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rak_buku`
--
ALTER TABLE `rak_buku`
  ADD PRIMARY KEY (`id_rak`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2446;

--
-- AUTO_INCREMENT untuk tabel `buku_tamu`
--
ALTER TABLE `buku_tamu`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `deadline`
--
ALTER TABLE `deadline`
  MODIFY `id_deadline` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `detail_login`
--
ALTER TABLE `detail_login`
  MODIFY `id_detail_login` int(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id_kategori` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `kolom_rak`
--
ALTER TABLE `kolom_rak`
  MODIFY `id_kolom` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rak_buku`
--
ALTER TABLE `rak_buku`
  MODIFY `id_rak` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_ketegori`) REFERENCES `kategori_buku` (`id_kategori`),
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`id_rak`) REFERENCES `rak_buku` (`id_rak`),
  ADD CONSTRAINT `buku_ibfk_3` FOREIGN KEY (`id_kolom`) REFERENCES `kolom_rak` (`id_kolom`);

--
-- Ketidakleluasaan untuk tabel `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD CONSTRAINT `buku_tamu_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Ketidakleluasaan untuk tabel `detail_login`
--
ALTER TABLE `detail_login`
  ADD CONSTRAINT `detail_login_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD CONSTRAINT `kategori_buku_ibfk_1` FOREIGN KEY (`id_dealine`) REFERENCES `deadline` (`id_deadline`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_4` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `peminjaman_ibfk_6` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `peminjaman_ibfk_7` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_1` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
