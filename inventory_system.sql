-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 04:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_000000_create_users_table', 2),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(4, '2019_08_19_000000_create_failed_jobs_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(6, '2024_02_26_065657_create_user_data_table', 2),
(9, '2024_02_22_043024_create_posts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `mesin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No pictures',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `nama_barang`, `unit`, `harga_barang`, `quantity`, `mesin`, `lokasi`, `user`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Miss Leonor Cormier', 'Pcs', 6795382, 7, 'Bor', 'Pulogadung', 'Liana Koch', 'Tenetur ipsa sit amet enim laborum quasi est.', 'https://via.placeholder.com/640x480.png/00eecc?text=animals+perferendis', '2024-04-16 21:12:11', '2024-04-16 21:12:11'),
(2, 'Ulices Jakubowski', 'Unit', 1913248, 2, 'Pengelasan', 'Cikarang', 'Mr. Andrew Nicolas DDS', 'Atque quae eum et voluptatum animi quas.', 'https://via.placeholder.com/640x480.png/0011ff?text=animals+veritatis', '2024-04-16 21:12:11', '2024-04-16 21:12:11'),
(3, 'Yvonne Upton', 'Unit', 6448016, 10, 'Pengemasan', 'Pulomas', 'Sylvia Kuphal', 'Quaerat atque iste et animi pariatur illum laboriosam inventore.', 'https://via.placeholder.com/640x480.png/004455?text=animals+excepturi', '2024-04-16 21:12:11', '2024-04-16 21:12:11'),
(4, 'Dr. Samir Rath', 'Pcs', 2354329, 8, 'Pengemasan', 'Pulogadung', 'Daniella Rippin', 'Blanditiis doloribus nulla temporibus tenetur voluptates tempore quidem consectetur.', 'https://via.placeholder.com/640x480.png/0055dd?text=animals+et', '2024-04-16 21:12:11', '2024-04-16 21:12:11'),
(5, 'Miss Telly Heaney II', 'Pcs', 3628414, 4, 'Pengelasan', 'Pulogadung', 'Mr. Darrel Predovic', 'Sapiente molestiae ut non ut voluptas.', 'https://via.placeholder.com/640x480.png/004411?text=animals+natus', '2024-04-16 21:12:11', '2024-04-16 21:12:11'),
(6, 'Edgar Schiller', 'Unit', 9231848, 10, 'SVG', 'Pulogadung', 'Alec Gutmann', 'Ut ut deleniti nemo tenetur quos.', 'https://via.placeholder.com/640x480.png/007766?text=animals+aliquid', '2024-04-16 21:12:11', '2024-04-16 21:12:11'),
(7, 'Gerinda', 'Pcs', 4713396, 2, 'Pengelasan', 'Pulogadung', 'Sonia Fadel', 'Eum natus eligendi quasi dolorem. Quisquam sit corporis voluptas sit. Occaecati est aut doloremque ea a ut modi.', '/storage/images/1713335952michigan-state-university-akers-dining-life-safety-upgrades-41.jpg', '2024-04-16 21:17:31', '2024-04-16 23:39:12'),
(8, 'Gerinda', 'Pcs', 3904630, 9, 'Pengemasan', 'Cikarang', 'Rita Kertzmann', 'Modi odio enim quas quia. Nihil aperiam magni similique consequatur. Amet in vel ad hic. Voluptatem dolores repudiandae iusto. Delectus soluta unde in ut minus.', 'https://via.placeholder.com/640x480.png/00ffdd?text=animals+omnis', '2024-04-16 21:17:31', '2024-04-16 21:17:31'),
(9, 'Gear', 'Pcs', 4470680, 9, 'Pengelasan', 'Pulomas', 'Prof. Loyce Hackett I', 'Deserunt quos voluptas vel minima consequatur corporis error. Eveniet nihil eligendi placeat cumque occaecati. Eligendi non vero cum hic quas quia beatae.', 'https://via.placeholder.com/640x480.png/007777?text=animals+nobis', '2024-04-16 21:17:31', '2024-04-16 21:17:31'),
(10, 'Gerinda', 'Pcs', 2924822, 6, 'Bor', 'Pulogadung', 'Alexys Kiehn', 'Aut quo dolorem similique sunt fugit mollitia sit facilis. Hic nam dolores architecto voluptatem occaecati fugit. Rerum rerum dolores accusamus voluptatem.', 'https://via.placeholder.com/640x480.png/00cc11?text=animals+sed', '2024-04-16 21:17:31', '2024-04-16 21:17:31'),
(11, 'Filtrasi', 'Pcs', 6536877, 7, 'SVG', 'Cikarang', 'Dr. Liliane Gorczany II', 'Sed qui omnis cumque ab. Officia natus dolor nulla quidem aut culpa. Iste totam et quas eos alias qui. Quo provident ipsa optio velit eos quasi.', 'https://via.placeholder.com/640x480.png/0044dd?text=animals+voluptas', '2024-04-16 21:17:31', '2024-04-16 21:17:31'),
(12, 'Pendingin', 'Pcs', 220135, 4, 'Pengemasan', 'Pulogadung', 'Isaac Zulauf', 'Minus at minus voluptas magni et. Et in ducimus magnam nihil. Ut laboriosam voluptatem voluptatem dolorem mollitia distinctio et. Sint ex blanditiis dignissimos qui incidunt et sed.', 'https://via.placeholder.com/640x480.png/004488?text=animals+facilis', '2024-04-16 21:17:31', '2024-04-16 21:17:31'),
(13, 'Filtrasi', 'Unit', 5643846, 3, 'Pengelasan', 'Cikarang', 'Brendan Kuvalis', 'Ut reiciendis qui aspernatur accusantium voluptatum veniam. Quasi natus ipsum repellendus praesentium quibusdam expedita quis aut. Ut magni corrupti eos est adipisci a dolores quis.', 'https://via.placeholder.com/640x480.png/0022ee?text=animals+officia', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(14, 'Baut', 'Pcs', 1613080, 7, 'Pengemasan', 'Cikarang', 'Isabell Haley IV', 'Ea blanditiis impedit voluptatem excepturi. Cumque quos veritatis quia. Dolorem id iusto reiciendis est occaecati neque. Fuga blanditiis totam exercitationem nesciunt pariatur.', 'https://via.placeholder.com/640x480.png/00dd99?text=animals+ducimus', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(15, 'Gergaji', 'Unit', 7447037, 3, 'SVG', 'Cikarang', 'Bret Roob', 'Perferendis ab corporis perspiciatis a similique numquam. Ipsa vel a perspiciatis voluptates eos voluptatem. Dolores cum possimus dolor et quia consequatur quam. Ut voluptate illum ut voluptas. Aperiam aliquam ex sit consequatur recusandae voluptas.', 'https://via.placeholder.com/640x480.png/00aa00?text=animals+eveniet', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(16, 'Gerinda', 'Pcs', 6890416, 5, 'SVG', 'Cikarang', 'Jovani Hodkiewicz', 'Consequatur explicabo perspiciatis sunt rerum sed odit nihil. Ut eum debitis est nobis at consequatur. Repudiandae fugiat sit molestias sit.', 'https://via.placeholder.com/640x480.png/00dd00?text=animals+similique', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(17, 'Gerinda', 'Pcs', 4755434, 5, 'SVG', 'Pulomas', 'Jadon Purdy', 'Accusantium alias sed possimus et voluptas expedita doloribus placeat. Beatae molestiae et doloribus et. Nam id iste expedita dolorem quia eos.', 'https://via.placeholder.com/640x480.png/0011bb?text=animals+eaque', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(18, 'Gerinda', 'Pcs', 8331614, 8, 'SVG', 'Pulogadung', 'Arlene Cormier', 'Repellendus odit esse et. Nemo iusto nesciunt ut ut fuga quam et. Dolor dolores dolor qui nihil reiciendis similique. Non molestiae quisquam et quisquam cum.', 'https://via.placeholder.com/640x480.png/0099aa?text=animals+consequatur', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(19, 'Filtrasi', 'Pcs', 9834549, 6, 'SVG', 'Pulogadung', 'Felicia Hegmann', 'Autem velit est cum qui officiis. Maxime non ipsam et ratione unde vero sapiente. Aspernatur aliquam est repudiandae quas soluta esse. Nisi veniam quia nesciunt est labore illum.', 'https://via.placeholder.com/640x480.png/003388?text=animals+ratione', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(20, 'Pendingin', 'Pcs', 9541502, 10, 'Pengelasan', 'Cikarang', 'Adolphus Gutkowski', 'Vel at nihil velit non voluptates molestias. Quae velit et odit incidunt itaque dignissimos. Quam id voluptatum et consequatur aut.', 'https://via.placeholder.com/640x480.png/0044cc?text=animals+eum', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(21, 'Filtrasi', 'Pcs', 8573263, 2, 'SVG', 'Pulogadung', 'Prof. Rocky Rogahn Jr.', 'Aliquam ut impedit ea voluptatum eligendi veniam et. Vel asperiores possimus laboriosam natus hic qui soluta doloribus. Voluptas quis sit corrupti.', 'https://via.placeholder.com/640x480.png/00dddd?text=animals+omnis', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(22, 'Filtrasi', 'Pcs', 6334394, 9, 'Pengemasan', 'Pulomas', 'Ashlee Kunze', 'Cupiditate occaecati inventore sint ea molestiae architecto error. Cum nam quia consectetur ad vel. Sint doloremque qui inventore voluptas nihil dolores. Mollitia molestias magni et veniam tempora. Autem ea aliquam exercitationem quia laboriosam.', 'https://via.placeholder.com/640x480.png/007711?text=animals+est', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(23, 'Baut', 'Unit', 7182991, 1, 'SVG', 'Pulomas', 'Rosemary Kuphal', 'Molestiae eum iste ipsam quo deleniti nostrum. Eveniet numquam est aspernatur quia repudiandae perspiciatis id. Quibusdam quos autem quisquam ut ipsam. Pariatur ut hic aliquid aliquam.', 'https://via.placeholder.com/640x480.png/0055cc?text=animals+et', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(24, 'Gear', 'Pcs', 8722441, 3, 'Pengemasan', 'Pulomas', 'Jarret Hessel II', 'Aut fugiat qui eos. Dolorem voluptas quia commodi quas. Itaque vitae iste quis asperiores aut distinctio quia.', 'https://via.placeholder.com/640x480.png/008800?text=animals+exercitationem', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(25, 'Gergaji', 'Unit', 3760709, 4, 'SVG', 'Cikarang', 'Hilda Price I', 'Et illo expedita voluptate dolores accusantium nostrum nam. Deleniti officiis commodi voluptatem sit assumenda.', 'https://via.placeholder.com/640x480.png/0022bb?text=animals+quibusdam', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(26, 'Gerinda', 'Unit', 4637341, 5, 'Bor', 'Pulogadung', 'Dr. Trace Hackett PhD', 'Ut sint animi molestiae sunt. Repellendus sit iste qui laudantium animi molestiae consequuntur. Voluptas quis sit commodi est pariatur et perferendis.', 'https://via.placeholder.com/640x480.png/0066cc?text=animals+repellat', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(27, 'Baut', 'Pcs', 1860761, 2, 'SVG', 'Cikarang', 'Anais Grady Sr.', 'Quis ut alias eligendi saepe. Numquam dolor dolor ea eaque. Quae nemo et ab deserunt enim adipisci.', 'https://via.placeholder.com/640x480.png/00dd66?text=animals+accusamus', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(28, 'Gerinda', 'Unit', 6798023, 8, 'Pengemasan', 'Pulomas', 'Blaze Rath', 'Et maxime expedita laborum quia. Nobis ut minima ea corrupti ut saepe. Est eveniet aut facilis quam illo. Eum ea quia est quis voluptatibus.', 'https://via.placeholder.com/640x480.png/0033ff?text=animals+omnis', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(29, 'Pendingin', 'Unit', 7653785, 10, 'Bor', 'Cikarang', 'Mr. Herman Kirlin Sr.', 'Dolores sed fuga eum doloremque. Nostrum commodi laudantium eius explicabo nostrum similique ut. Soluta voluptatibus at sunt veritatis quia omnis omnis.', 'https://via.placeholder.com/640x480.png/0011ff?text=animals+dicta', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(30, 'Gergaji', 'Pcs', 2844463, 9, 'SVG', 'Pulomas', 'Dante Koelpin IV', 'Odio ut similique voluptatem in officia quia maxime molestias. Occaecati quis accusamus quis culpa nesciunt ut et. Ut ut quis quae eos veniam ipsum est recusandae. Consequuntur cumque suscipit libero cumque qui.', 'https://via.placeholder.com/640x480.png/009988?text=animals+dolore', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(31, 'Baut', 'Unit', 4633151, 9, 'Bor', 'Cikarang', 'Trinity Schulist', 'Ipsam quo dolores in error architecto. Ut minus voluptatum delectus praesentium. Rem dolorum deleniti error odio quasi omnis. Cupiditate ut dolor earum perspiciatis sint.', 'https://via.placeholder.com/640x480.png/00bb88?text=animals+eaque', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(32, 'Gerinda', 'Pcs', 5351618, 2, 'SVG', 'Pulogadung', 'Glenna Abbott II', 'Ut rem sunt provident quod ipsa sit. Recusandae esse provident perferendis sunt. Sit laudantium nihil in. Debitis fugit sed odio et velit.', 'https://via.placeholder.com/640x480.png/00cccc?text=animals+cumque', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(33, 'Gear', 'Pcs', 2712096, 4, 'Pengelasan', 'Pulogadung', 'Reese Gusikowski', 'Est qui eum maiores autem. Cupiditate praesentium quis non at repellat corporis tenetur. Quo aut ut distinctio cupiditate ipsum consequatur. Nesciunt eveniet corrupti assumenda voluptates id et porro.', 'https://via.placeholder.com/640x480.png/00ff55?text=animals+recusandae', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(34, 'Filtrasi', 'Pcs', 4933311, 8, 'Pengemasan', 'Cikarang', 'Tamara Green II', 'Labore consequatur facere inventore nisi. Nostrum esse neque incidunt dignissimos eum iste. Enim officiis consequuntur odio.', 'https://via.placeholder.com/640x480.png/00cc77?text=animals+animi', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(35, 'Filtrasi', 'Unit', 3622570, 6, 'Pengelasan', 'Cikarang', 'Ms. Melyssa Hermiston II', 'Sed voluptates porro et sit qui nostrum. Molestiae alias quas aperiam ducimus. Nostrum deserunt rem in dicta velit repudiandae.', 'https://via.placeholder.com/640x480.png/003388?text=animals+tempora', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(36, 'Pendingin', 'Unit', 7414184, 10, 'Pengelasan', 'Cikarang', 'Prof. Gavin Ritchie II', 'Mollitia nisi consequuntur quaerat voluptatum. Quae provident reiciendis rem minus fuga. Est hic debitis cumque autem laboriosam voluptas.', 'https://via.placeholder.com/640x480.png/001199?text=animals+et', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(37, 'Pendingin', 'Pcs', 527907, 8, 'Bor', 'Pulomas', 'Dortha Huel', 'Occaecati qui aut eum perspiciatis asperiores blanditiis impedit. Voluptatem in voluptatem rerum et qui. Placeat accusantium dignissimos magni voluptatem illo. Et sit ipsam voluptatem sit consequatur facilis dolor.', 'https://via.placeholder.com/640x480.png/002200?text=animals+non', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(38, 'Gerinda', 'Unit', 7001413, 7, 'Pengelasan', 'Pulogadung', 'Prof. Ezra Simonis', 'Minima molestiae aut assumenda hic asperiores aliquam aut maiores. Omnis dolores velit molestias dolorem culpa autem. Omnis iste harum et recusandae vel alias fugit ut. In autem quibusdam delectus animi labore nostrum.', 'https://via.placeholder.com/640x480.png/00ee88?text=animals+architecto', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(39, 'Filtrasi', 'Pcs', 7184356, 1, 'Pengelasan', 'Pulomas', 'Mrs. Creola Haag MD', 'Eveniet id vel ut tenetur. Et quia distinctio modi itaque. Aut quibusdam ut nobis quos adipisci rerum maxime. Quae qui est velit.', 'https://via.placeholder.com/640x480.png/00ddff?text=animals+officiis', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(40, 'Gerinda', 'Pcs', 5724136, 8, 'Pengelasan', 'Pulogadung', 'Gladyce Simonis', 'Delectus molestias nemo quae exercitationem et eos alias. Est mollitia soluta explicabo ipsa ad et animi. Enim nostrum commodi qui error.', 'https://via.placeholder.com/640x480.png/0033bb?text=animals+quia', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(41, 'Gerinda', 'Unit', 9726408, 3, 'Bor', 'Pulogadung', 'Ms. Makenzie Williamson', 'Sed repellendus corporis earum necessitatibus doloribus. Voluptatem autem minus qui facilis quas. Veritatis tempore ipsam voluptatem dolorum ipsam similique.', 'https://via.placeholder.com/640x480.png/006688?text=animals+rerum', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(42, 'Filtrasi', 'Pcs', 3553411, 5, 'SVG', 'Pulogadung', 'Jakob Schowalter DDS', 'At quam sequi voluptatem dolor enim fugit quo velit. Tempore maxime animi delectus ut odio aut. Voluptas natus aut dolorum officia officia occaecati. Voluptatem quo non sed.', 'https://via.placeholder.com/640x480.png/00ff33?text=animals+corporis', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(43, 'Gear', 'Pcs', 9861145, 9, 'Bor', 'Cikarang', 'Elliot Heidenreich Sr.', 'Tenetur temporibus eos a. Consequatur qui in suscipit et quia non architecto aliquam. Ut officia sapiente beatae a tempora.', 'https://via.placeholder.com/640x480.png/00dd22?text=animals+voluptatum', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(44, 'Baut', 'Unit', 778049, 6, 'Pengelasan', 'Pulogadung', 'Dr. Ellsworth Ratke', 'Aperiam explicabo dolore nihil est facere soluta. Nostrum rem impedit suscipit dolore ea voluptatum in. Consequuntur facilis nobis non quod dolor quam. Exercitationem vitae est qui repudiandae facilis. Mollitia ipsum totam dolor dolore aut tenetur.', 'https://via.placeholder.com/640x480.png/007799?text=animals+optio', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(45, 'Gergaji', 'Pcs', 832476, 2, 'SVG', 'Cikarang', 'Dr. Ahmad Cormier DDS', 'Quia amet est ab suscipit sunt. Voluptatem dolorum iusto rerum et explicabo rem nam doloremque. Soluta consectetur facere dolores molestias velit reiciendis. Consequuntur est nulla quis ipsa explicabo nulla aliquam. Aliquam nam voluptas laudantium et voluptas.', 'https://via.placeholder.com/640x480.png/005533?text=animals+cupiditate', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(46, 'Filtrasi', 'Unit', 6397570, 9, 'Pengemasan', 'Cikarang', 'Corine Lockman DDS', 'Occaecati explicabo illum placeat. Architecto molestiae asperiores dicta aut est. Sed eum ipsam qui quia delectus dolorem. Possimus incidunt delectus alias autem.', 'https://via.placeholder.com/640x480.png/00cc55?text=animals+quia', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(47, 'Gear', 'Pcs', 1238344, 7, 'Pengemasan', 'Pulomas', 'Ms. Abigale Tremblay II', 'Velit molestias reprehenderit illum mollitia velit. Aut aperiam eligendi ut distinctio voluptatem necessitatibus. Ea ducimus optio incidunt.', 'https://via.placeholder.com/640x480.png/006633?text=animals+doloribus', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(48, 'Gerinda', 'Pcs', 4070514, 3, 'SVG', 'Pulomas', 'Bryana Price', 'Dolor accusamus in vero praesentium voluptatem ab non cumque. Voluptas id cum ullam repudiandae perspiciatis facilis. Sed voluptatem libero aut qui ipsam eos. Consequatur rerum in voluptas doloribus voluptatem.', 'https://via.placeholder.com/640x480.png/003333?text=animals+ipsum', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(49, 'Gear', 'Pcs', 9703785, 3, 'Bor', 'Pulogadung', 'Prof. Orie Bins', 'Enim repellendus cupiditate repellendus optio et quia corrupti. Consequatur voluptate in saepe est. Ipsum et autem velit tempora harum ab est. Molestiae deserunt recusandae repudiandae consequatur cum velit et.', 'https://via.placeholder.com/640x480.png/00ff88?text=animals+officiis', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(50, 'Gear', 'Unit', 2187420, 1, 'SVG', 'Pulogadung', 'Jada Block', 'Et aut cum enim sequi consequatur soluta. Et quos qui velit rerum. Fugiat sint corrupti quasi nam.', 'https://via.placeholder.com/640x480.png/003300?text=animals+praesentium', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(51, 'Gergaji', 'Unit', 6314240, 9, 'SVG', 'Cikarang', 'Prof. Weldon O\'Conner III', 'Natus molestiae magnam aliquam consequatur facilis consequatur. Sed debitis aut fuga quis maiores. Possimus quo ut quaerat eius.', 'https://via.placeholder.com/640x480.png/00bb77?text=animals+minima', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(52, 'Gerinda', 'Pcs', 7368170, 7, 'Pengemasan', 'Pulogadung', 'Cecil Lind', 'Vel odio mollitia et. Sit reiciendis modi repudiandae non est recusandae. Maxime pariatur molestiae et est ab.', 'https://via.placeholder.com/640x480.png/002299?text=animals+neque', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(53, 'Gergaji', 'Pcs', 6242834, 1, 'Pengelasan', 'Pulogadung', 'Antonina Gerlach I', 'Labore ut maiores voluptatem et illo. Quia vero architecto rerum temporibus aliquid eos. Explicabo tempore dolores non ad officiis aut in.', 'https://via.placeholder.com/640x480.png/002277?text=animals+recusandae', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(54, 'Gergaji', 'Pcs', 9477109, 4, 'Bor', 'Cikarang', 'Adell Littel IV', 'Laboriosam similique atque ut in magnam asperiores. Et nam doloribus blanditiis rem odio et. Qui voluptatem est id nihil.', 'https://via.placeholder.com/640x480.png/003311?text=animals+eveniet', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(55, 'Baut', 'Unit', 339950, 7, 'Bor', 'Pulogadung', 'Rolando Lindgren', 'Modi accusamus quia eos autem est facilis laboriosam aut. Iusto quis sed iste qui exercitationem nihil et. Tempora praesentium magnam corrupti officiis ut non tenetur.', 'https://via.placeholder.com/640x480.png/001166?text=animals+sed', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(56, 'Baut', 'Pcs', 7470839, 5, 'Pengelasan', 'Cikarang', 'Porter Hansen', 'Aut sapiente ullam et harum quam doloribus et quasi. Reiciendis quam sed facere. Est sequi est molestiae eos eum sit modi qui.', 'https://via.placeholder.com/640x480.png/0077aa?text=animals+facere', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(57, 'Pendingin', 'Pcs', 2341281, 9, 'Pengelasan', 'Cikarang', 'Briana Kuhlman', 'Cupiditate eos velit nostrum. Ut quae vero cum delectus cumque architecto. Id est quasi architecto consequatur.', 'https://via.placeholder.com/640x480.png/00aa77?text=animals+odio', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(58, 'Pendingin', 'Pcs', 1545665, 3, 'Pengemasan', 'Cikarang', 'Cora Durgan', 'Exercitationem distinctio sint necessitatibus. Laborum nam ut in perferendis nobis est. Ratione et eaque eum voluptates ipsum.', 'https://via.placeholder.com/640x480.png/005500?text=animals+at', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(59, 'Gergaji', 'Unit', 3785360, 7, 'SVG', 'Cikarang', 'Mrs. Maye Rau', 'Consequatur id quas ut illo ab sit. Consectetur sit ullam expedita alias odit. Consectetur perferendis quibusdam et reprehenderit velit exercitationem deserunt. Aut a quos nostrum unde eos eius.', 'https://via.placeholder.com/640x480.png/00aaee?text=animals+et', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(60, 'Gergaji', 'Pcs', 8307294, 10, 'SVG', 'Pulomas', 'Mr. Otto Wunsch DDS', 'Rerum aut quis ut dolores omnis illum. Velit rerum non fugiat ullam. Earum fugit aliquid dolor voluptates et et.', 'https://via.placeholder.com/640x480.png/00ee55?text=animals+aut', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(61, 'Baut', 'Pcs', 9228782, 5, 'Pengelasan', 'Cikarang', 'Liam Parisian PhD', 'Eos quia sed quam asperiores nostrum expedita. Deleniti consequatur exercitationem adipisci eligendi. Numquam temporibus sunt possimus non veritatis voluptas.', 'https://via.placeholder.com/640x480.png/0066aa?text=animals+rem', '2024-04-16 23:01:55', '2024-04-16 23:01:55'),
(62, 'Baut', 'Pcs', 149066, 2, 'Pengelasan', 'Pulomas', 'Joannie Feest', 'Earum voluptatem iure temporibus ab. Ut libero labore consequatur soluta. Qui iure est magni optio temporibus in. Dolor expedita dolorem eum ratione vel.', 'https://via.placeholder.com/640x480.png/0066aa?text=animals+tempore', '2024-04-16 23:01:55', '2024-04-16 23:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$12$HhoALKANlQvkAWp4ryvK9OFY3CbDIhgrc7l4VK70fnPNa46xfRWp6', '2024-03-04 01:12:44', '2024-03-04 01:12:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
