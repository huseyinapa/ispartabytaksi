-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 17 Şub 2025, 02:58:51
-- Sunucu sürümü: 10.5.27-MariaDB-cll-lve
-- PHP Sürümü: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bubbles_general`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(55) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_firstname` varchar(55) NOT NULL,
  `admin_lastname` varchar(55) NOT NULL,
  `admin_phone` varchar(55) NOT NULL,
  `admin_mail` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`, `admin_firstname`, `admin_lastname`, `admin_phone`, `admin_mail`) VALUES
(1, 'Kaanisler', 'KaanBasAd', 'Kaan', 'İşler', '5533562801', 'kaanisler@outlook.com.tr'),
(2, 'altan', 'AltanBasAd', 'Altan', 'Sarpbaş', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basvuru`
--

CREATE TABLE `basvuru` (
  `basvuru_id` int(11) NOT NULL,
  `basvuru_ad` varchar(50) DEFAULT NULL,
  `basvuru_soyad` varchar(50) DEFAULT NULL,
  `basvuru_mail` varchar(255) DEFAULT NULL,
  `basvuru_tel` varchar(20) DEFAULT NULL,
  `basvuru_il` varchar(30) DEFAULT NULL,
  `basvuru_adres` text DEFAULT NULL,
  `basvuru_cv` varchar(255) DEFAULT NULL,
  `basvuru_pozisyon` varchar(255) DEFAULT NULL,
  `basvuru_message` text DEFAULT NULL,
  `basvuru_zamani` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin_aciklama` text DEFAULT NULL,
  `full_stack_fav` set('unfav','fav') NOT NULL DEFAULT 'unfav',
  `android_fav` set('unfav','fav') NOT NULL DEFAULT 'unfav',
  `ios_fav` set('unfav','fav') NOT NULL DEFAULT 'unfav',
  `grafik_fav` set('unfav','fav') NOT NULL DEFAULT 'unfav'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `basvuru`
--

INSERT INTO `basvuru` (`basvuru_id`, `basvuru_ad`, `basvuru_soyad`, `basvuru_mail`, `basvuru_tel`, `basvuru_il`, `basvuru_adres`, `basvuru_cv`, `basvuru_pozisyon`, `basvuru_message`, `basvuru_zamani`, `admin_aciklama`, `full_stack_fav`, `android_fav`, `ios_fav`, `grafik_fav`) VALUES
(28, 'Cansu', 'Kahraman', 'fatmacansukahraman@gmail.com', '5415260631', 'İzmir', 'Aliağa/İzmir ', 'cv_6703c378581832.45248342.pdf', 'iOS Developer', '', '2024-11-29 23:46:22', 'Şirket kuruluşu tamamlanınca alınacak ilk personel', 'unfav', 'unfav', 'fav', 'unfav');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `error_logs`
--

CREATE TABLE `error_logs` (
  `id` int(11) NOT NULL,
  `error_code` varchar(10) DEFAULT NULL,
  `error_type` varchar(50) DEFAULT NULL,
  `error_message` text DEFAULT NULL,
  `error_detail` text DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `reference_number` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `request_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`request_data`)),
  `response_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`response_data`)),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `group_members`
--

CREATE TABLE `group_members` (
  `group_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `joined_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `group_members`
--

INSERT INTO `group_members` (`group_id`, `user_id`, `joined_at`) VALUES
(1, 10113741857, '2025-01-16 23:54:18'),
(1, 53993740025, '2025-01-16 15:00:45'),
(1, 77346762780, '2025-01-16 22:25:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_hakkimizda_baslik` varchar(255) NOT NULL,
  `hakkimizda_hakkimizda_icerik` mediumtext NOT NULL,
  `hakkimizda_vizyon_baslik` varchar(255) NOT NULL,
  `hakkimizda_vizyon_icerik` mediumtext NOT NULL,
  `hakkimizda_misyon_baslik` varchar(255) NOT NULL,
  `hakkimizda_misyon_icerik` mediumtext NOT NULL,
  `hakkimizda_hakkimizda_baslik_en` varchar(255) NOT NULL,
  `hakkimizda_hakkimizda_icerik_en` longtext NOT NULL,
  `hakkimizda_vizyon_baslik_en` varchar(255) NOT NULL,
  `hakkimizda_vizyon_icerik_en` longtext NOT NULL,
  `hakkimizda_misyon_baslik_en` varchar(255) NOT NULL,
  `hakkimizda_misyon_icerik_en` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_hakkimizda_baslik`, `hakkimizda_hakkimizda_icerik`, `hakkimizda_vizyon_baslik`, `hakkimizda_vizyon_icerik`, `hakkimizda_misyon_baslik`, `hakkimizda_misyon_icerik`, `hakkimizda_hakkimizda_baslik_en`, `hakkimizda_hakkimizda_icerik_en`, `hakkimizda_vizyon_baslik_en`, `hakkimizda_vizyon_icerik_en`, `hakkimizda_misyon_baslik_en`, `hakkimizda_misyon_icerik_en`) VALUES
(1, 'Hakkımızda', 'Sosyal medyanın, insanların hayatlarını paylaşmak, bağlantı kurmak ve yaratıcılıklarını sergilemek için güçlü bir araç olduğuna inanıyoruz. Bu anlayışla yola çıkarak, platformumuzu sizlere daha fazla özgürlük, güvenlik ve keyifli bir deneyim sunacak şekilde tasarladık. Uygulamamızda, fotoğraf ve video paylaşımı ile anılarınızı ve en özel anlarınızı dünyayla paylaşabilirsiniz. Bunun yanı sıra, Ripple özelliğimiz sayesinde düşüncelerinizi, yazılarınızı ve fikirlerinizi özgürce ifade edebileceğiniz bir alan sunuyoruz. Ancak uygulamamız yalnızca içerik paylaşımından ibaret değil. Canlı yayın özelliğimizle topluluğunuzla gerçek zamanlı etkileşim kurabilir, izleyicilerinizden aldığınız desteklerle kazanç elde edebilirsiniz. İçerik üreticileri için sunduğumuz bu özellik, sosyal medya deneyiminizi daha kişisel ve interaktif hale getiriyor. Bizim önceliğimiz, sizlerin rahatı ve kesintisiz bir sosyal medya deneyimi yaşamanızdır. Bu yüzden hiçbir zaman reklamlarla dikkatinizi dağıtmıyoruz. İstiyoruz ki bu platformda vakit geçirirken tamamen içeriğe, etkileşime ve yaratıcılığa odaklanın. Reklamsız yapımız sayesinde, kullanıcılarımızın deneyimlerini her şeyin üzerinde tutuyor ve sizlerin en iyi şekilde faydalanabileceği bir alan yaratıyoruz. Platformumuzun her adımında sizlerin isteklerini, önerilerini ve geri bildirimlerini dikkate alıyoruz. Uygulama geliştirme sürecimizde sizinle birlikte adım atarak, sosyal medyayı sadece daha keyifli değil, aynı zamanda daha güvenli ve inovatif bir alan haline getirmeyi amaçlıyoruz.', 'Vizyonumuz', 'Sosyal medyada fark yaratan bir deneyim sunmayı hedefliyoruz. Amacımız, platformumuzu sürekli olarak geliştirerek, her geçen gün daha kullanıcı dostu, anlaşılır ve etkileyici bir hale getirmektir. Yenilikçi özellikler ile sosyal medyayı yeniden şekillendirmek ve insanların kendilerini özgürce ifade edebilecekleri bir dünya yaratmak istiyoruz.', 'Misyonumuz', 'Veri güvenliğini her şeyin üzerinde tutuyoruz. Kişisel bilgilerinizin güvenliği bizim en büyük sorumluluğumuzdur. Aynı zamanda platformumuzu her zaman anlaşılır, pratik ve kullanıcı dostu tutmak için çalışıyoruz. Reklamsız yapımızla dikkat dağınıklığı yaratmadan, sizlere sadece keyifli ve güvenli bir sosyal medya deneyimi sunmayı hedefliyoruz. Bu platformda herkesin sesi değerlidir, ve biz, her zaman yanınızda olacağız.', 'Aboust Us', 'We believe that social media is a powerful tool for people to share their lives, connect and showcase their creativity. With this in mind, we have designed our platform to offer you more freedom, security and an enjoyable experience. In our app, you can share your memories and most special moments with the world through photo and video sharing. We also offer a space where you can freely express your thoughts, writings and ideas through our Ripple feature. But our app is not just about sharing content. With our live streaming feature, you can interact with your community in real time and earn with the support you receive from your viewers. This feature for content creators makes your social media experience more personal and interactive. What\'s more, our app is completely ad-free. Our priority is your comfort and uninterrupted social media experience. That\'s why we never distract you with ads. We want you to focus entirely on content, interaction and creativity while spending time on this platform. Thanks to our ad-free structure, we prioritize the experience of our users above all else and create a space where you can make the most of it. We take your requests, suggestions and feedback into account at every step of our platform. &nbsp;By stepping together with you in our app development process, we aim to make social media not only more enjoyable, but also a safer and innovative space.', 'Our Vision', 'We aim to offer an experience that makes a difference on social media Our goal is to continuously improve our platform and make it more user-friendly, understandable and impressive every day. We want to reshape social media with innovative features and create a world where people can express themselves freely', 'Our Mission', '                                                    We prioritize data security above all else. The security of your personal information is our biggest responsibility. At the same time, we always strive to keep our platform understandable, practical and user-friendly. With our ad-free structure, we aim to offer you only a pleasant and safe social media experience without creating distractions. Everyone\'s voice is valuable on this platform, and we will always be there for you.\r\n                                                ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mainpage`
--

CREATE TABLE `mainpage` (
  `mp_id` int(11) NOT NULL,
  `mp_ust_baslik` varchar(255) NOT NULL,
  `mp_sub_baslik_1` varchar(255) NOT NULL,
  `mp_statistic_baslik` varchar(255) NOT NULL,
  `mp_statistic_user` varchar(255) NOT NULL,
  `mp_statistic_post` varchar(255) NOT NULL,
  `mp_statistic_location` varchar(255) NOT NULL,
  `mp_download_qr` varchar(255) NOT NULL,
  `mp_download_ps` varchar(255) NOT NULL,
  `mp_download_gs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mainpage`
--

INSERT INTO `mainpage` (`mp_id`, `mp_ust_baslik`, `mp_sub_baslik_1`, `mp_statistic_baslik`, `mp_statistic_user`, `mp_statistic_post`, `mp_statistic_location`, `mp_download_qr`, `mp_download_ps`, `mp_download_gs`) VALUES
(1, 'Bubbles ile Hayatınızı Renkli Bir Şekilde Paylaşın', 'Fotoğraflar, düşünceler, canlı yayınlar ve daha fazlasıyla dolu, eğlenceli ve interaktif bir dünyaya hoş geldiniz!', 'Bubbles\'ın Etkileyici İstatistikleri ', '1 Milyon+', '5 Milyon+', '150+', 'qr.png', 'yok', 'yok');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `sender_type` enum('user','support') DEFAULT NULL,
  `sender_id` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `request_id`, `sender_type`, `sender_id`, `message`, `timestamp`) VALUES
(29, 92840, 'user', '10113741857', 's', '2024-10-23 01:12:15'),
(30, 92840, 'user', '10113741857', 'a', '2024-10-23 01:12:16'),
(31, 92840, 'user', '10113741857', 'a', '2024-10-23 01:12:17'),
(32, 92840, 'user', '10113741857', 'f', '2024-10-23 01:12:17'),
(33, 92840, 'user', '10113741857', 'w', '2024-10-23 01:12:31'),
(34, 92840, 'user', '10113741857', 'w', '2024-10-23 01:13:05'),
(35, 92840, 'user', '10113741857', 'd', '2024-10-23 01:13:08'),
(36, 92840, 'user', '10113741857', 'd', '2024-10-23 01:14:22'),
(37, 92840, 'user', '10113741857', 'deneme', '2024-10-23 01:14:25'),
(38, 92840, 'user', '10113741857', 'qwe', '2024-10-23 01:14:27'),
(39, 92840, 'user', '10113741857', 'd', '2024-10-23 01:15:45'),
(40, 92840, 'user', '10113741857', 'qwe', '2024-10-23 01:15:50'),
(41, 92840, 'user', '10113741857', 'zxc', '2024-10-23 01:15:53'),
(42, 92840, 'user', '10113741857', 'qweeqwr', '2024-10-23 01:15:58'),
(43, 92840, 'user', '10113741857', 'qweqwe', '2024-10-23 01:16:47'),
(44, 92840, 'user', '10113741857', 'zxczxc', '2024-10-23 01:16:49'),
(45, 92840, 'user', '10113741857', 'qweasdf', '2024-10-23 01:16:51'),
(46, 92840, 'user', '10113741857', 'asdzxczxc', '2024-10-23 01:17:23'),
(47, 92840, 'user', '10113741857', 'zxczxc', '2024-10-23 01:17:26'),
(48, 92840, 'user', '10113741857', 's', '2024-10-23 01:18:18'),
(49, 92840, 'user', '10113741857', 's', '2024-10-23 01:18:21'),
(50, 92840, 'user', '10113741857', 'sda', '2024-10-23 01:19:10'),
(51, 75197, 'user', '10113741857', 'deneme', '2024-10-23 01:21:08'),
(52, 75197, 'user', '10113741857', '1', '2024-10-23 01:21:12'),
(53, 75197, 'support', '10113741857', 'deneme', '2024-10-23 01:36:07'),
(54, 51552, 'support', '53993740025', 'Merhaba', '2024-10-23 11:52:43'),
(55, 51552, 'user', '53993740025', 'Test', '2024-10-23 11:53:30'),
(56, 51552, 'support', '53993740025', 'Çok güzel olmuş', '2024-10-23 11:53:55'),
(57, 61497, 'support', '10113741857', 'deneme', '2024-10-23 17:15:40'),
(58, 61497, 'support', '10113741857', 'deneme', '2024-10-23 17:15:42'),
(59, 61497, 'support', '51308411270', '1', '2024-10-23 21:42:36'),
(60, 75197, 'user', '10113741857', '.', '2025-01-01 03:07:06'),
(61, 63945, 'user', '10113741857', 'aa', '2025-02-14 17:35:38');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `otp_requests`
--

CREATE TABLE `otp_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reference_number` varchar(50) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `remaining_retry_count` tinyint(4) DEFAULT 3,
  `expire_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `paketler`
--

CREATE TABLE `paketler` (
  `paket_id` int(11) NOT NULL,
  `paket_1_jeton` int(11) NOT NULL,
  `paket_1_TL` int(11) NOT NULL,
  `paket_2_jeton` int(11) NOT NULL,
  `paket_2_TL` int(11) NOT NULL,
  `paket_3_jeton` int(11) NOT NULL,
  `paket_3_TL` int(11) NOT NULL,
  `paket_4_jeton` int(11) NOT NULL,
  `paket_4_TL` int(11) NOT NULL,
  `paket_5_jeton` int(11) NOT NULL,
  `paket_5_TL` int(11) NOT NULL,
  `paket_6_jeton` int(11) NOT NULL,
  `paket_6_TL` int(11) NOT NULL,
  `paket_7_jeton` int(11) NOT NULL,
  `paket_7_TL` int(11) NOT NULL,
  `paket_8_jeton` int(11) NOT NULL,
  `paket_8_TL` int(11) NOT NULL,
  `paket_9_jeton` int(11) NOT NULL,
  `paket_9_TL` int(11) NOT NULL,
  `paket_10_jeton` int(11) NOT NULL,
  `paket_10_TL` int(11) NOT NULL,
  `paket_11_jeton` int(11) NOT NULL,
  `paket_11_TL` int(11) NOT NULL,
  `paket_12_jeton` int(11) NOT NULL,
  `paket_12_TL` int(11) NOT NULL,
  `paket_13_jeton` int(11) NOT NULL,
  `paket_13_TL` int(11) NOT NULL,
  `paket_14_jeton` int(11) NOT NULL,
  `paket_14_TL` int(11) NOT NULL,
  `paket_15_jeton` int(11) NOT NULL,
  `paket_15_TL` int(11) NOT NULL,
  `paket_16_jeton` int(11) NOT NULL,
  `paket_16_TL` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `paketler`
--

INSERT INTO `paketler` (`paket_id`, `paket_1_jeton`, `paket_1_TL`, `paket_2_jeton`, `paket_2_TL`, `paket_3_jeton`, `paket_3_TL`, `paket_4_jeton`, `paket_4_TL`, `paket_5_jeton`, `paket_5_TL`, `paket_6_jeton`, `paket_6_TL`, `paket_7_jeton`, `paket_7_TL`, `paket_8_jeton`, `paket_8_TL`, `paket_9_jeton`, `paket_9_TL`, `paket_10_jeton`, `paket_10_TL`, `paket_11_jeton`, `paket_11_TL`, `paket_12_jeton`, `paket_12_TL`, `paket_13_jeton`, `paket_13_TL`, `paket_14_jeton`, `paket_14_TL`, `paket_15_jeton`, `paket_15_TL`, `paket_16_jeton`, `paket_16_TL`) VALUES
(1, 25, 25, 50, 50, 100, 100, 150, 150, 250, 250, 500, 500, 750, 750, 1000, 1000, 2500, 2500, 5000, 5000, 10000, 10000, 15000, 15000, 25000, 25000, 50000, 50000, 100000, 100000, 200000, 200000);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL COMMENT 'ödeme id numarası',
  `user_id` bigint(20) DEFAULT NULL,
  `coin_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `order_id` int(11) NOT NULL COMMENT 'sipariş id numarası',
  `amount` double NOT NULL COMMENT 'ödeme miktarı',
  `currency` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL COMMENT 'para birimi',
  `description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL COMMENT 'açıklama',
  `payment_gateway` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL COMMENT 'ödeme sağlayan kurum',
  `payment_status` set('başarılı','başarısız','beklemede','') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL COMMENT 'ödeme durumu',
  `transaction_id` int(11) NOT NULL COMMENT 'ödeme sağlayıcıdan gelen işlem numarası',
  `transaction_type` set('satın alma','iade','ödeme yenileme','') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL COMMENT 'satın alma türü',
  `payment_date` timestamp NULL DEFAULT NULL COMMENT 'ödeme zamanı',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'ödeme emir zamanı',
  `update_up` timestamp NULL DEFAULT NULL COMMENT 'güncelleme zamanı',
  `total_paid_amount` double DEFAULT NULL,
  `payment_show` enum('show','hidden','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='yapılan ödemeler';

--
-- Tablo döküm verisi `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `coin_id`, `user_name`, `order_id`, `amount`, `currency`, `description`, `payment_gateway`, `payment_status`, `transaction_id`, `transaction_type`, `payment_date`, `created_date`, `update_up`, `total_paid_amount`, `payment_show`) VALUES
(6, 53993740025, 0, 'altan', 6, 5800, 'TL', 'Deneme', 'İş bankası', 'başarılı', 4, 'ödeme yenileme', '2024-09-30 23:16:21', '2024-09-30 23:16:21', '2024-09-30 23:16:21', NULL, 'show');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `paycell_transaction_id` varchar(100) DEFAULT NULL,
  `coin_amount` int(11) NOT NULL,
  `price_tl` decimal(10,2) DEFAULT NULL,
  `price_total` decimal(10,2) DEFAULT NULL,
  `currency` varchar(3) DEFAULT 'TRY' CHECK (`currency` in ('TRY','USD','EUR','GBP')),
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `status` enum('pending','success','failed','error') DEFAULT 'pending',
  `response_code` varchar(10) DEFAULT NULL,
  `response_message` text DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT 'credit_card',
  `installment_count` tinyint(4) DEFAULT 1,
  `previous_balance` int(11) DEFAULT 0,
  `new_balance` int(11) DEFAULT 0,
  `billing_name` varchar(255) DEFAULT NULL,
  `card_holder_name` varchar(255) DEFAULT NULL,
  `card_number_masked` varchar(20) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(20) DEFAULT NULL,
  `billing_address` mediumtext DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_district` varchar(100) DEFAULT NULL,
  `billing_postal_code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `hidden` enum('show','hide') NOT NULL DEFAULT 'show',
  `completion_date` timestamp NULL DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `payment_reference` varchar(100) DEFAULT NULL,
  `payment_message` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `social`
--

CREATE TABLE `social` (
  `social_id` int(11) NOT NULL,
  `social_twitter` varchar(255) DEFAULT NULL,
  `social_instagram` varchar(255) DEFAULT NULL,
  `social_facebook` varchar(255) DEFAULT NULL,
  `social_youtube` varchar(255) DEFAULT NULL,
  `social_google` varchar(255) DEFAULT NULL,
  `social_mail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `social`
--

INSERT INTO `social` (`social_id`, `social_twitter`, `social_instagram`, `social_facebook`, `social_youtube`, `social_google`, `social_mail`) VALUES
(1, '11', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `support_requests`
--

CREATE TABLE `support_requests` (
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_firstname` varchar(255) NOT NULL,
  `status` enum('açık','kapalı','çözüldü','') NOT NULL DEFAULT 'açık',
  `title` varchar(255) NOT NULL,
  `user_mail` varchar(255) NOT NULL,
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `id` int(5) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `responses` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `support_requests`
--

INSERT INTO `support_requests` (`created_at`, `user_firstname`, `status`, `title`, `user_mail`, `user_id`, `id`, `timestamp`, `description`, `responses`) VALUES
('2025-02-05 13:27:46', 'test', 'açık', 'Şikayet', 'type.com@hotmail.com.tr', '86853436249', 14795, '2025-02-05 16:27:46', '123', NULL),
('2025-01-05 17:01:57', 'Kaan', 'kapalı', 'Öneri', 'kaanisler@outlook.com.tr', '143347', 47461, '2025-01-05 20:01:57', 'deneme4', NULL),
('2024-10-23 08:54:04', 'Altan', 'çözüldü', 'Hesap İşlemleri', 'alt4ns@icloud.com', '53993740025', 51552, '2024-10-23 11:54:04', 'Test', NULL),
('2024-12-30 03:42:19', 'test', 'kapalı', 'Ödeme Sorunları', 'type.com@hotmail.com.tr', '86853436249', 58039, '2024-12-30 06:42:19', 'deneme', NULL),
('2024-11-06 20:10:59', 'Altan', 'kapalı', 'Ödeme Sorunları', 'alt4ns@icloud.com', '53993740025', 58288, '2024-11-06 23:10:59', 'sa', NULL),
('2024-10-22 22:01:44', 'Kaan', 'açık', 'Öneri', 'kaanisler@outlook.com.tr', '143347', 61497, '2024-10-23 01:01:44', 'deneme3', NULL),
('2024-10-22 23:45:24', 'Kaan', 'çözüldü', 'Şikayet', 'kaanisler@outlook.com.tr', '10113741857', 62637, '2024-10-23 02:45:24', 'şikayet deneme', NULL),
('2025-01-01 00:07:16', 'Kaan', 'açık', 'Hesap İşlemleri', 'kaanisler@outlook.com.tr', '10113741857', 63945, '2025-01-01 03:07:16', 'deneme', NULL),
('2024-10-22 22:05:54', 'Kaan', 'açık', 'Ödeme Sorunları', 'kaanisler@outlook.com.tr', '10113741857', 75197, '2024-10-23 01:05:54', 'denemeee', NULL),
('2025-02-05 13:17:42', 'test', 'açık', 'Bilgi', 'type.com@hotmail.com.tr', '86853436249', 76088, '2025-02-05 16:17:42', 'deneme132', NULL),
('2024-10-22 22:01:30', 'Kaan', 'açık', 'Ödeme Sorunları', 'kaanisler@outlook.com.tr', '10113741857', 92840, '2024-10-23 01:01:30', 'deneme', NULL),
('2025-02-05 13:18:21', 'test', 'açık', 'Bilgi', 'type.com@hotmail.com.tr', '86853436249', 95491, '2025-02-05 16:18:21', 'deneme123213', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `three_d_sessions`
--

CREATE TABLE `three_d_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reference_number` varchar(50) NOT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `card_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `user_coin_balance` int(11) NOT NULL DEFAULT 0,
  `user_profile_photo` varchar(250) DEFAULT NULL,
  `user_cover_photo` varchar(250) DEFAULT NULL,
  `user_firstname` varchar(50) NOT NULL,
  `user_lastname` varchar(50) DEFAULT NULL,
  `user_location` varchar(250) DEFAULT NULL,
  `user_created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `user_mail` varchar(100) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_birthdate` varchar(20) DEFAULT NULL,
  `is_verified` enum('pending','active','passive','waiting') NOT NULL DEFAULT 'pending',
  `user_durum` enum('0','1') NOT NULL DEFAULT '1',
  `user_yetki` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `user_db` enum('standart','premium','admin','hidden') NOT NULL DEFAULT 'standart',
  `verification_code` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expiry` datetime DEFAULT NULL,
  `total_paid_amount` double DEFAULT NULL,
  `is_deactivated` tinyint(1) DEFAULT 0,
  `deactivation_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_coin_balance`, `user_profile_photo`, `user_cover_photo`, `user_firstname`, `user_lastname`, `user_location`, `user_created_at`, `user_mail`, `user_password`, `user_phone`, `user_birthdate`, `is_verified`, `user_durum`, `user_yetki`, `user_db`, `verification_code`, `reset_token`, `reset_token_expiry`, `total_paid_amount`, `is_deactivated`, `deactivation_date`) VALUES
(0, 'arrdda05', 0, 'https://firebasestorage.googleapis.com:443/v0/b/bubbles-87f52.appspot.com/o/profile_images%2FwsnAzQEGBUf9GMlEU5nEIPKkXEt2.jpg?alt=media&token=23521586-ee40-4426-abb6-f86be20314d1', '', 'Arda', 'Ögey', NULL, '2025-01-20 19:36:52', 'ardaogey@gmail.com', NULL, NULL, NULL, 'pending', '1', '0', 'standart', NULL, NULL, NULL, NULL, 0, NULL),
(10113741857, 'Kaanisler', 686525, '/assets/images/profile_images/uploaded_images/10113741857_1729114308.png', NULL, 'Kaan', 'İşler', 'Türkiye', '2024-10-01 19:52:10', 'kaanisler@outlook.com.tr', '$2y$10$EM3YV5eabYDsewQs3X1uYuogoq/5Lyl939ZWBaZK3Sr9ebYFangQC', '5533562801', '', 'active', '1', '3', 'admin', '371943', NULL, '2024-10-02 00:54:12', 1100, 0, NULL),
(53993740025, 'altan', 0, '/assets/images/profile_images/uploaded_images/53993740025_1727807063.png', NULL, 'Altan', 'Sarpbaş', 'Türkiye', '2024-09-28 06:39:23', 'alt4ns@icloud.com', '$2y$10$ooYbNsjvBDwLZN8Da2TKrumkNZlVzE8XPifR9J9esUNIEWrOgJPRC', '', '', 'active', '1', '3', 'hidden', '582935', NULL, NULL, NULL, 0, NULL),
(77346762780, 'Burak', 0, NULL, NULL, 'Burak', 'Orduhan', 'Türkiye', '2025-01-05 21:24:09', 'burakorduhan@hotmail.com', '$2y$10$vznEcmIs4wFi2zWc6BNTm.xSVHEWK62tbIVD9k/.gizheW8nAiBfm', '05528151818', '', 'active', '1', '1', 'admin', '591820', NULL, NULL, NULL, 0, NULL),
(86853436249, 'test1', 1709515881, NULL, NULL, 'test', 'hesabı', 'Türkiye', '2024-12-26 00:07:50', 'type.com@hotmail.com.tr', '$2y$10$0wup1X61uw2dZbJV5w9P/OcNJgRgZO9moRmNYs3pznVZkQNmmBbnm', '5454534434', '1970-01-01', 'active', '1', '1', 'hidden', '800468', NULL, NULL, 0, 0, NULL),
(87208899873, 'batu932', 0, NULL, NULL, 'Batuhan', 'Mentesoglu', 'Türkiye', '2025-01-05 19:59:48', 'batuhan1542@gmail.com', '$2y$10$1LAb7oAg4DZMh9S8r74s..nGsu8VZcynuQny778ODX6ZTAjKYJSNW', '05399336675', '', 'active', '1', '1', 'admin', '857731', NULL, NULL, NULL, 0, NULL),
(96379690696, 'altan1', 0, NULL, NULL, 'altan', 'sarpbaş', 'Türkiye', '2025-02-11 23:59:23', 'alasd@gmail.com', '$2y$10$sLs9eitZMzoLPUcBKZiTE.BKLsZgDbPBwP0O1/.2TOyYP6L/hTg8q', '05414643005', NULL, 'active', '1', '0', 'standart', '360058', NULL, NULL, NULL, 0, NULL),
(955282973525019424, 'test_user', 0, '', '', 'Test', 'User', NULL, '2025-01-20 19:53:54', 'test@example.com', NULL, NULL, NULL, 'pending', '1', '0', 'standart', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_groups`
--

CREATE TABLE `user_groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_owner_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `user_groups`
--

INSERT INTO `user_groups` (`group_id`, `group_name`, `group_owner_id`, `created_at`) VALUES
(1, 'adminler', 10113741857, '2025-01-16 00:26:26');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Tablo için indeksler `basvuru`
--
ALTER TABLE `basvuru`
  ADD PRIMARY KEY (`basvuru_id`);

--
-- Tablo için indeksler `error_logs`
--
ALTER TABLE `error_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_error_code` (`error_code`),
  ADD KEY `idx_reference` (`reference_number`),
  ADD KEY `idx_user` (`user_id`);

--
-- Tablo için indeksler `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`group_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `mainpage`
--
ALTER TABLE `mainpage`
  ADD PRIMARY KEY (`mp_id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `otp_requests`
--
ALTER TABLE `otp_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reference` (`reference_number`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_status` (`status`);

--
-- Tablo için indeksler `paketler`
--
ALTER TABLE `paketler`
  ADD PRIMARY KEY (`paket_id`);

--
-- Tablo için indeksler `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Tablo için indeksler `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`social_id`);

--
-- Tablo için indeksler `support_requests`
--
ALTER TABLE `support_requests`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `three_d_sessions`
--
ALTER TABLE `three_d_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reference` (`reference_number`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_status` (`status`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `idx_user_mail` (`user_mail`),
  ADD KEY `idx_reset_token` (`reset_token`);

--
-- Tablo için indeksler `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `group_owner_id` (`group_owner_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `basvuru`
--
ALTER TABLE `basvuru`
  MODIFY `basvuru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `error_logs`
--
ALTER TABLE `error_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `hakkimizda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `mainpage`
--
ALTER TABLE `mainpage`
  MODIFY `mp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Tablo için AUTO_INCREMENT değeri `otp_requests`
--
ALTER TABLE `otp_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `paketler`
--
ALTER TABLE `paketler`
  MODIFY `paket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ödeme id numarası', AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `social`
--
ALTER TABLE `social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `three_d_sessions`
--
ALTER TABLE `three_d_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `group_members`
--
ALTER TABLE `group_members`
  ADD CONSTRAINT `group_members_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `user_groups` (`group_id`),
  ADD CONSTRAINT `group_members_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Tablo kısıtlamaları `user_groups`
--
ALTER TABLE `user_groups`
  ADD CONSTRAINT `user_groups_ibfk_1` FOREIGN KEY (`group_owner_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
