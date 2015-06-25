-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jun 2015 pada 09.16
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms_bo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-06-12 12:11:46', '2015-06-12 12:11:46', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_newsletter`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter` (
`id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `surname` varchar(100) NOT NULL DEFAULT '',
  `sex` char(1) NOT NULL DEFAULT 'n',
  `status` char(1) NOT NULL DEFAULT 'S',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(50) NOT NULL DEFAULT '',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `country` varchar(4) NOT NULL DEFAULT '',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) NOT NULL DEFAULT '',
  `profile_2` varchar(255) NOT NULL DEFAULT '',
  `profile_3` varchar(255) NOT NULL DEFAULT '',
  `profile_4` varchar(255) NOT NULL DEFAULT '',
  `profile_5` varchar(255) NOT NULL DEFAULT '',
  `profile_6` varchar(255) NOT NULL DEFAULT '',
  `profile_7` varchar(255) NOT NULL DEFAULT '',
  `profile_8` varchar(255) NOT NULL DEFAULT '',
  `profile_9` varchar(255) NOT NULL DEFAULT '',
  `profile_10` varchar(255) NOT NULL DEFAULT '',
  `profile_11` varchar(255) NOT NULL DEFAULT '',
  `profile_12` varchar(255) NOT NULL DEFAULT '',
  `profile_13` varchar(255) NOT NULL DEFAULT '',
  `profile_14` varchar(255) NOT NULL DEFAULT '',
  `profile_15` varchar(255) NOT NULL DEFAULT '',
  `profile_16` varchar(255) NOT NULL DEFAULT '',
  `profile_17` varchar(255) NOT NULL DEFAULT '',
  `profile_18` varchar(255) NOT NULL DEFAULT '',
  `profile_19` varchar(255) NOT NULL DEFAULT '',
  `profile_20` varchar(255) NOT NULL DEFAULT '',
  `referrer` varchar(50) NOT NULL DEFAULT '',
  `http_referer` varchar(255) NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0',
  `flow` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_newsletter_emails`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter_emails` (
`id` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `message_text` longtext COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `send_on` int(11) NOT NULL DEFAULT '0',
  `track` tinyint(4) NOT NULL DEFAULT '0',
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_ci,
  `preferences` longtext COLLATE utf8mb4_unicode_ci,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `token` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_newsletter_stats`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter_stats` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` int(11) NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `anchor` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=447 ;

--
-- Dumping data untuk tabel `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/voltusfx', 'yes'),
(2, 'home', 'http://localhost/voltusfx', 'yes'),
(3, 'blogname', 'Voltus Fx', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'anggakesuma@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:21:"newsletter/plugin.php";i:1;s:43:"wp-customer-reviews/wp-customer-reviews.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'ta-magazine', 'yes'),
(42, 'stylesheet', 'ta-magazine', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31535', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:3:{i:0;i:4;i:1;i:20;i:2;i:25;}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:43:"testimonials-widget/testimonials-widget.php";a:2:{i:0;s:19:"Testimonials_Widget";i:1;s:9:"uninstall";}}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31535', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:13:"sidebar-right";a:1:{i:0;s:31:"ta_magazine_slide_show_widget-2";}s:15:"footer-widget-1";a:0:{}s:15:"footer-widget-2";a:0:{}s:15:"footer-widget-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:7:{i:1434698203;a:1:{s:10:"newsletter";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"newsletter";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1434699180;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1434715907;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1434716416;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1434723062;a:1:{s:14:"redux_tracking";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1434723338;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1434683643;s:15:"version_checked";s:5:"4.2.2";s:12:"translations";a:0:{}}', 'yes'),
(106, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1434683647;s:7:"checked";a:5:{s:11:"ta-magazine";s:5:"1.0.1";s:20:"twentyfifteen - Copy";s:3:"1.2";s:13:"twentyfifteen";s:3:"1.2";s:14:"twentyfourteen";s:3:"1.4";s:14:"twentythirteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(108, '_transient_random_seed', '5e7afee20ea83adfb9b743a889c97995', 'yes'),
(109, '_site_transient_timeout_browser_4c1c60c037ba64c127d1bedad364a790', '1434716406', 'yes'),
(110, '_site_transient_browser_4c1c60c037ba64c127d1bedad364a790', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"37.0.2062.120";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(111, 'can_compress_scripts', '1', 'yes'),
(116, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(127, '_transient_twentyfifteen_categories', '1', 'yes'),
(141, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1434117988;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(142, 'current_theme', 'TA Magazine', 'yes'),
(143, 'theme_mods_ta-magazine', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'redux-framework-tracking', 'a:3:{s:8:"dev_mode";b:0;s:4:"hash";s:32:"24d2aee892848ab6744332a6b153eb2c";s:14:"allow_tracking";s:3:"yes";}', 'yes'),
(146, 'redux_version_upgraded_from', '3.4.3.8', 'yes'),
(147, '_transient_timeout__redux_activation_redirect', '1434698019', 'no'),
(148, '_transient__redux_activation_redirect', '1', 'no'),
(149, 'ta_option', 'a:37:{s:8:"last_tab";s:1:"1";s:11:"custom_logo";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:14:"custom_favicon";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:19:"disable_header_info";s:1:"0";s:17:"disable_header_ad";s:1:"1";s:21:"disable_header_social";s:1:"1";s:13:"disable_login";s:1:"1";s:17:"header_info_title";s:13:"Announcements";s:11:"header_info";s:0:"";s:14:"disable_slider";s:1:"1";s:14:"disable_modern";s:1:"0";s:10:"modern_cat";a:1:{i:0;s:1:"1";}s:12:"modern_posts";s:1:"3";s:11:"disable_tab";s:1:"1";s:7:"tab_cat";a:1:{i:0;s:1:"5";}s:12:"disable_blog";s:1:"1";s:8:"blog_cat";a:1:{i:0;s:1:"5";}s:10:"blog_posts";s:1:"5";s:21:"disable_listing_style";s:1:"1";s:14:"read_more_text";s:9:"Read More";s:14:"load_more_text";s:11:"+ Load More";s:13:"related_title";s:13:"Related Posts";s:20:"disable_featured_img";s:1:"1";s:16:"disable_post_nav";s:1:"1";s:12:"social_icons";a:5:{s:7:"Twitter";s:7:"Twitter";s:8:"Facebook";s:8:"Facebook";s:11:"Google Plus";s:11:"Google Plus";s:9:"Pinterest";s:9:"Pinterest";s:3:"RSS";s:3:"RSS";}s:9:"ad_header";s:36:"                                    ";s:7:"ad_left";s:36:"                                    ";s:11:"ad_post_top";s:36:"                                    ";s:14:"ad_post_bottom";s:36:"                                    ";s:16:"custom_copyright";s:393:"Copyright © 2015 - <a title="TA Magazine Free WordPress Theme" href="http://themeart.co/free-theme/ta-magazine/" target="_blank">TA Magazine</a>. Powered by <a title="Downlod Free Premium WordPress Themes &amp; Templates" href="http://themeart.co/" target="_blank">ThemeArt</a> and <a title="Blog Tool, Publishing Platform, and CMS" href="http://wordpress.org/" target="_blank">WordPress</a>.";s:11:"disable_map";s:1:"1";s:8:"map_code";s:418:"                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1584.2679903399307!2d-122.09496935581758!3d37.42444119584552!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fba1a7f2db7e7%3A0x59c3e570fe8e0c73!2sGoogle+West+Campus+6%2C+2350+Bayshore+Pkwy%2C+Mountain+View%2C+CA+94043%2C+USA!5e0!3m2!1sen!2s!4v1422891258666" width="600" height="450" frameborder="0" style="border:0"></iframe>                ";s:13:"contact_email";s:23:"yourname@yourdomain.com";s:15:"contact_subject";a:1:{i:0;s:5:"Aloha";}s:9:"404_image";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:8:"404_info";s:216:"We\\\\\\\\''re sorry, but we can\\\\\\\\''t find the page you were looking for. It\\\\\\\\''s probably some thing we\\\\\\\\''ve done wrong but now we know about it and we\\\\\\\\''ll try to fix it. In the meantime, try one of these options:";s:10:"custom_css";s:36:"                                    ";}', 'yes'),
(150, 'ta_option-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1434689983;}', 'yes'),
(151, 'widget_ta_magazine_about_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(152, 'widget_ta_magazine_comments_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'widget_ta_magazine_mailchimp_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(154, 'widget_ta_magazine_popular_posts_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(155, 'widget_ta_magazine_posts_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(156, 'widget_ta_magazine_post_tabs_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(157, 'widget_ta_magazine_slide_show_widget', 'a:3:{i:1;a:0:{}i:2;a:5:{s:5:"title";s:0:"";s:9:"posts_num";s:1:"5";s:12:"posts_cat_id";s:1:"1";s:13:"posts_orderby";s:4:"date";s:10:"posts_time";s:1:"0";}s:12:"_multiwidget";i:1;}', 'yes'),
(158, 'widget_ta_magazine_social_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(159, 'recently_activated', 'a:1:{s:43:"testimonials-widget/testimonials-widget.php";i:1434683386;}', 'yes'),
(161, '_transient_timeout_redux_tracking_cache', '1434723065', 'no'),
(162, '_transient_redux_tracking_cache', '1', 'no'),
(175, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:3;}}', 'yes'),
(229, '_site_transient_timeout_available_translations', '1434648690', 'yes'),
(230, '_site_transient_available_translations', 'a:56:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:57:37";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-01 14:30:22";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-27 06:36:25";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-25 18:55:51";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-24 05:23:15";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-30 08:59:10";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-03 00:26:43";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-12 09:28:00";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-01 09:29:51";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-25 13:39:01";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-04 14:48:26";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-29 17:53:27";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-16 10:01:41";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-15 10:49:37";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-12 09:59:32";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.5/haz.zip";s:3:"iso";a:1:{i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 19:32:58";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-27 08:22:08";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:43:50";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 07:07:32";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-27 11:14:20";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-31 19:34:18";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-07 07:33:53";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:57:22";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-27 10:29:43";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:59:29";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-08 07:10:14";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-10 17:07:58";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-09 10:15:05";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-27 09:25:14";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-12 01:38:15";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-21 15:14:01";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-31 11:58:44";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 09:29:23";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-29 08:27:12";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-04 20:54:02";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 07:08:28";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 15:16:26";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 07:01:28";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-28 13:43:48";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-29 06:37:03";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(231, 'WPLANG', '', 'yes'),
(234, '_transient_timeout_settings_errors', '1434637951', 'no'),
(235, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no'),
(248, '_transient_timeout_plugin_slugs', '1434770249', 'no'),
(249, '_transient_plugin_slugs', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:21:"newsletter/plugin.php";i:3;s:43:"testimonials-widget/testimonials-widget.php";i:4;s:43:"wp-customer-reviews/wp-customer-reviews.php";}', 'no'),
(259, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1434724637', 'no'),
(260, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(262, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1434692306', 'yes'),
(263, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5223";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3269";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3204";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2734";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2503";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2001";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1906";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1836";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1787";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1769";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1738";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1728";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1621";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1419";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1357";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1299";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1207";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1165";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1150";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1021";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"975";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"942";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"932";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"896";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"865";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"853";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"806";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"791";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"767";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"743";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"738";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"736";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"695";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"687";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"682";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"669";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"649";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"645";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"640";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"639";}}', 'yes'),
(265, 'newsletter_logger_secret', '3968871c', 'yes'),
(266, 'newsletter_main', 'a:9:{s:12:"smtp_enabled";i:0;s:11:"return_path";s:0:"";s:8:"reply_to";s:0:"";s:12:"sender_email";s:20:"newsletter@localhost";s:11:"sender_name";s:9:"Voltus Fx";s:6:"editor";i:0;s:13:"scheduler_max";i:100;s:12:"lock_message";s:120:"<p>This content is protected, only newsletter subscribers can access it. Subscribe now!</p>\r\n        {subscription_form}";s:7:"api_key";s:10:"9c87b4fa74";}', 'yes'),
(267, 'newsletter_extension_versions', 'a:0:{}', 'no'),
(268, 'newsletter_main_version', '1.2.2', 'yes'),
(269, 'newsletter', 'a:18:{s:12:"profile_text";s:305:"<p>Change your subscription preferences to get what you are most interested in.</p>\r\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\r\n    </p>\r\n    {profile_form}\r\n    <p>To cancel your subscription, <a href=''{unsubscription_confirm_url}''>click here</a>.</p>";s:21:"profile_email_changed";s:123:"Your email has been changed, an activation email has been sent. Please follow the instructions to activate the new address.";s:13:"profile_error";s:147:"Your email is not valid or already in use by another subscriber or another generic error has been found. Check your data or contact the site owner.";s:10:"error_text";s:173:"<p>This subscription can''t be completed, sorry. The email address is blocked or already subscribed. You should contact the owner to unlock that email address. Thank you.</p>";s:22:"already_confirmed_text";s:99:"<p>This email address is already subscribed, anyway a welcome email has been resent. Thank you.</p>";s:18:"subscribe_wp_users";i:0;s:17:"subscription_text";s:19:"{subscription_form}";s:17:"confirmation_text";s:271:"<p>You have successfully subscribed to the newsletter. You''ll\r\nreceive a confirmation email in few minutes. Please follow the\r\nlink in it to confirm your subscription. If the email takes\r\nmore than 15 minutes to appear in your mailbox, please check\r\nyour spam folder.</p>";s:20:"confirmation_subject";s:53:"Please confirm subscription - {blog_title} newsletter";s:20:"confirmation_message";s:434:"<p>Hi {name},</p>\r\n<p>A newsletter subscription request for this email address was\r\nreceived. Please confirm it by <a href="{subscription_confirm_url}"><strong>clicking here</strong></a>. If you cannot\r\nclick the link, please use the following link:</p>\r\n\r\n<p>{subscription_confirm_url}</p>\r\n\r\n<p>If you did not make this subscription request, just ignore this\r\nmessage.</p>\r\n<p>Thank you!<br>\r\n<a href=''{blog_url}''>{blog_url}</a></p>";s:14:"confirmed_text";s:62:"<p>Your subscription has been confirmed! Thank you {name}!</p>";s:17:"confirmed_subject";s:22:"Welcome aboard, {name}";s:17:"confirmed_message";s:281:"<p>This message confirms your subscription to the {blog_title} newsletter.</p>\r\n<p>Thank you!<br>\r\n<a href=''{blog_url}''>{blog_url}</a></p>\r\n<p>To unsubscribe, <a href=''{unsubscription_url}''>click here</a>.  To change subscriber options,\r\n<a href=''{profile_url}''>click here</a>.</p>";s:18:"confirmed_tracking";s:0:"";s:19:"unsubscription_text";s:111:"<p>Please confirm that you want to unsubscribe by <a href=''{unsubscription_confirm_url}''>clicking here</a>.</p>";s:17:"unsubscribed_text";s:53:"<p>Your subscription has been deleted. Thank you.</p>";s:20:"unsubscribed_subject";s:15:"Goodbye, {name}";s:20:"unsubscribed_message";s:198:"<p>This message confirms that you have unsubscribed from the {blog_title} newsletter.</p>\r\n<p>You''re welcome to sign up again anytime.</p>\r\n<p>Thank you!<br>\r\n<a href=''{blog_url}''>{blog_url}</a></p>";}', 'yes'),
(270, 'newsletter_profile', 'a:61:{s:5:"email";s:5:"Email";s:11:"email_error";s:24:"The email is not correct";s:4:"name";s:4:"Name";s:10:"name_error";s:23:"The name is not correct";s:11:"name_status";i:0;s:10:"name_rules";i:0;s:7:"surname";s:9:"Last name";s:13:"surname_error";s:28:"The last name is not correct";s:14:"surname_status";i:0;s:3:"sex";s:3:"I''m";s:7:"privacy";s:51:"Subscribing I accept the privacy rules of this site";s:13:"privacy_error";s:37:"You must accept the privacy statement";s:14:"privacy_status";i:0;s:9:"subscribe";s:9:"Subscribe";s:4:"save";s:4:"Save";s:12:"title_female";s:4:"Mrs.";s:10:"title_male";s:3:"Mr.";s:10:"title_none";s:4:"Dear";s:8:"sex_male";s:3:"Man";s:10:"sex_female";s:5:"Woman";s:8:"sex_none";s:4:"None";s:13:"list_1_status";i:0;s:13:"list_2_status";i:0;s:13:"list_3_status";i:0;s:13:"list_4_status";i:0;s:13:"list_5_status";i:0;s:13:"list_6_status";i:0;s:13:"list_7_status";i:0;s:13:"list_8_status";i:0;s:13:"list_9_status";i:0;s:14:"list_10_status";i:0;s:14:"list_11_status";i:0;s:14:"list_12_status";i:0;s:14:"list_13_status";i:0;s:14:"list_14_status";i:0;s:14:"list_15_status";i:0;s:14:"list_16_status";i:0;s:14:"list_17_status";i:0;s:14:"list_18_status";i:0;s:14:"list_19_status";i:0;s:14:"list_20_status";i:0;s:16:"profile_1_status";i:0;s:16:"profile_2_status";i:0;s:16:"profile_3_status";i:0;s:16:"profile_4_status";i:0;s:16:"profile_5_status";i:0;s:16:"profile_6_status";i:0;s:16:"profile_7_status";i:0;s:16:"profile_8_status";i:0;s:16:"profile_9_status";i:0;s:17:"profile_10_status";i:0;s:17:"profile_11_status";i:0;s:17:"profile_12_status";i:0;s:17:"profile_13_status";i:0;s:17:"profile_14_status";i:0;s:17:"profile_15_status";i:0;s:17:"profile_16_status";i:0;s:17:"profile_17_status";i:0;s:17:"profile_18_status";i:0;s:17:"profile_19_status";i:0;s:17:"profile_20_status";i:0;}', 'yes'),
(271, 'newsletter_subscription_version', '1.1.4', 'yes'),
(272, 'newsletter_emails', 'a:1:{s:5:"theme";s:7:"default";}', 'yes'),
(273, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(274, 'newsletter_emails_version', '1.1.1', 'yes'),
(275, 'newsletter_users', 'a:0:{}', 'yes'),
(276, 'newsletter_users_version', '1.0.4', 'yes'),
(277, 'newsletter_statistics', 'a:0:{}', 'yes'),
(278, 'newsletter_statistics_version', '1.1.0', 'yes'),
(279, 'newsletter_feed', 'a:0:{}', 'yes'),
(280, 'newsletter_feed_version', '1.0.0', 'yes'),
(282, '_transient_timeout_tw_requirements_check', '1434685580', 'no'),
(283, '_transient_tw_requirements_check', '1', 'no'),
(285, 'testimonialswidget_settings', 'a:74:{s:5:"title";s:12:"Testimonials";s:10:"title_link";s:0:"";s:15:"adaptive_height";i:1;s:11:"bottom_text";s:0:"";s:10:"char_limit";s:0:"";s:15:"keep_whitespace";s:0:"";s:16:"refresh_interval";i:5;s:15:"show_start_stop";i:1;s:11:"slide_width";i:0;s:15:"transition_mode";s:4:"fade";s:17:"widget_expand_all";s:0:"";s:20:"general_expand_begin";s:0:"";s:13:"item_reviewed";s:9:"Voltus Fx";s:17:"item_reviewed_url";s:25:"http://localhost/voltusfx";s:14:"disable_quotes";s:0:"";s:14:"hide_not_found";s:0:"";s:6:"paging";i:1;s:13:"enable_schema";i:1;s:12:"do_shortcode";i:1;s:12:"enable_video";s:0:"";s:20:"exclude_bxslider_css";s:0:"";s:11:"exclude_css";s:0:"";s:13:"remove_hentry";i:1;s:6:"target";s:0:"";s:13:"use_quote_tag";s:0:"";s:18:"general_expand_end";s:0:"";s:19:"fields_expand_begin";s:0:"";s:11:"hide_source";s:0:"";s:12:"hide_company";s:0:"";s:12:"hide_content";s:0:"";s:10:"hide_email";i:1;s:13:"hide_gravatar";s:0:"";s:10:"hide_image";s:0:"";s:17:"hide_image_single";s:0:"";s:10:"hide_title";s:0:"";s:13:"hide_location";s:0:"";s:8:"hide_url";s:0:"";s:17:"fields_expand_end";s:0:"";s:22:"selection_expand_begin";s:0:"";s:8:"category";s:0:"";s:7:"exclude";s:0:"";s:3:"ids";s:0:"";s:5:"limit";i:10;s:8:"tags_all";s:0:"";s:4:"tags";s:0:"";s:20:"selection_expand_end";s:0:"";s:21:"ordering_expand_begin";s:0:"";s:7:"orderby";s:2:"ID";s:8:"meta_key";s:0:"";s:5:"order";s:4:"DESC";s:6:"random";s:0:"";s:19:"ordering_expand_end";s:0:"";s:14:"allow_comments";s:0:"";s:11:"has_archive";s:20:"testimonials-archive";s:16:"use_cpt_taxonomy";s:0:"";s:15:"enable_archives";s:0:"";s:12:"rewrite_slug";s:11:"testimonial";s:14:"columns_author";i:1;s:15:"columns_company";i:1;s:13:"columns_email";i:1;s:10:"columns_id";i:1;s:17:"columns_thumbnail";s:0:"";s:17:"columns_job_title";i:1;s:16:"columns_location";i:1;s:17:"columns_shortcode";s:0:"";s:11:"columns_url";i:1;s:18:"reset_expand_begin";s:0:"";s:6:"import";s:0:"";s:11:"delete_data";s:0:"";s:14:"reset_defaults";s:0:"";s:16:"reset_expand_end";s:0:"";s:13:"admin_notices";N;s:7:"version";s:5:"3.1.1";s:14:"donate_version";s:5:"3.1.1";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(289, 'newsletter_diagnostic_cron_calls', 'a:50:{i:0;i:1434682041;i:1;i:1434682347;i:2;i:1434682604;i:3;i:1434682903;i:4;i:1434683224;i:5;i:1434683513;i:6;i:1434683828;i:7;i:1434684106;i:8;i:1434684413;i:9;i:1434684717;i:10;i:1434685004;i:11;i:1434685007;i:12;i:1434685007;i:13;i:1434685020;i:14;i:1434685103;i:15;i:1434685408;i:16;i:1434685648;i:17;i:1434685904;i:18;i:1434686060;i:19;i:1434686211;i:20;i:1434686518;i:21;i:1434686834;i:22;i:1434687195;i:23;i:1434687435;i:24;i:1434687594;i:25;i:1434687720;i:26;i:1434687877;i:27;i:1434688031;i:28;i:1434688044;i:29;i:1434688053;i:30;i:1434688082;i:31;i:1434688298;i:32;i:1434688348;i:33;i:1434688614;i:34;i:1434688904;i:35;i:1434689845;i:36;i:1434690117;i:37;i:1434690417;i:38;i:1434690718;i:39;i:1434695423;i:40;i:1434695517;i:41;i:1434695553;i:42;i:1434695844;i:43;i:1434696153;i:44;i:1434696410;i:45;i:1434696753;i:46;i:1434697009;i:47;i:1434697353;i:48;i:1434697606;i:49;i:1434697953;}', 'no'),
(304, '_site_transient_timeout_theme_roots', '1434684889', 'yes'),
(305, '_site_transient_theme_roots', 'a:5:{s:11:"ta-magazine";s:7:"/themes";s:20:"twentyfifteen - Copy";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(306, 'widget_tw_recent_testimonials_widget', 'a:2:{i:2;a:4:{s:5:"title";s:19:"Recent Testimonials";s:10:"title_link";s:0:"";s:6:"number";s:1:"5";s:9:"show_date";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(310, 'rewrite_rules', 'a:102:{s:60:"testimonials-archive/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:93:"index.php?post_type=testimonials-widget&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:90:"testimonials-archive/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:110:"index.php?post_type=testimonials-widget&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:85:"testimonials-archive/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:110:"index.php?post_type=testimonials-widget&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:77:"testimonials-archive/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/([0-9]{1,})/?$";s:111:"index.php?post_type=testimonials-widget&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:47:"testimonials-archive/([0-9]{4})/([0-9]{1,2})/?$";s:77:"index.php?post_type=testimonials-widget&year=$matches[1]&monthnum=$matches[2]";s:77:"testimonials-archive/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:94:"index.php?post_type=testimonials-widget&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:72:"testimonials-archive/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:94:"index.php?post_type=testimonials-widget&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:64:"testimonials-archive/([0-9]{4})/([0-9]{1,2})/page/([0-9]{1,})/?$";s:95:"index.php?post_type=testimonials-widget&year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:34:"testimonials-archive/([0-9]{4})/?$";s:56:"index.php?post_type=testimonials-widget&year=$matches[1]";s:64:"testimonials-archive/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:73:"index.php?post_type=testimonials-widget&year=$matches[1]&feed=$matches[2]";s:59:"testimonials-archive/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:73:"index.php?post_type=testimonials-widget&year=$matches[1]&feed=$matches[2]";s:51:"testimonials-archive/([0-9]{4})/page/([0-9]{1,})/?$";s:74:"index.php?post_type=testimonials-widget&year=$matches[1]&paged=$matches[2]";s:23:"testimonials-archive/?$";s:39:"index.php?post_type=testimonials-widget";s:53:"testimonials-archive/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=testimonials-widget&feed=$matches[1]";s:48:"testimonials-archive/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=testimonials-widget&feed=$matches[1]";s:40:"testimonials-archive/page/([0-9]{1,})/?$";s:57:"index.php?post_type=testimonials-widget&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:39:"testimonial/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"testimonial/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"testimonial/([^/]+)/trackback/?$";s:46:"index.php?testimonials-widget=$matches[1]&tb=1";s:52:"testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?testimonials-widget=$matches[1]&feed=$matches[2]";s:47:"testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?testimonials-widget=$matches[1]&feed=$matches[2]";s:40:"testimonial/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?testimonials-widget=$matches[1]&paged=$matches[2]";s:47:"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?testimonials-widget=$matches[1]&cpage=$matches[2]";s:32:"testimonial/([^/]+)(/[0-9]+)?/?$";s:58:"index.php?testimonials-widget=$matches[1]&page=$matches[2]";s:28:"testimonial/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"testimonial/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(316, 'wpcr_options', 'a:33:{s:9:"act_email";s:21:"anggakesuma@gmail.com";s:8:"act_uniq";s:36:"0d1b2a87-7399-478f-b4a2-c16fa3f1c0bb";s:8:"activate";i:1;s:10:"ask_custom";a:1:{i:0;i:1;}s:10:"ask_fields";a:6:{s:5:"fname";i:1;s:6:"femail";i:0;s:8:"fwebsite";i:0;s:6:"ftitle";i:0;s:4:"fage";i:0;s:7:"fgender";i:0;}s:13:"business_city";s:0:"";s:16:"business_country";s:3:"USA";s:14:"business_email";s:0:"";s:13:"business_name";s:9:"Voltus Fx";s:14:"business_phone";s:0:"";s:14:"business_state";s:0:"";s:15:"business_street";s:0:"";s:12:"business_url";s:25:"http://localhost/voltusfx";s:12:"business_zip";s:0:"";s:9:"dbversion";i:248;s:20:"enable_posts_default";i:0;s:20:"enable_pages_default";i:0;s:12:"field_custom";a:6:{i:0;s:11:"Member Code";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";}s:13:"form_location";i:0;s:15:"goto_leave_text";s:16:"Give Testimonial";s:16:"goto_show_button";i:1;s:12:"hreview_type";s:8:"business";s:10:"leave_text";s:18:"Submit your review";s:14:"require_custom";a:1:{i:0;i:1;}s:14:"require_fields";a:6:{s:5:"fname";i:1;s:6:"femail";i:0;s:8:"fwebsite";i:0;s:6:"ftitle";i:0;s:4:"fage";i:0;s:7:"fgender";i:0;}s:16:"reviews_per_page";i:10;s:11:"show_custom";a:1:{i:0;i:1;}s:11:"show_fields";a:6:{s:5:"fname";i:1;s:6:"femail";i:0;s:8:"fwebsite";i:0;s:6:"ftitle";i:0;s:4:"fage";i:0;s:7:"fgender";i:0;}s:10:"show_hcard";i:1;s:13:"show_hcard_on";i:0;s:18:"submit_button_text";s:23:"Submit your Testimonial";s:10:"support_us";i:0;s:9:"title_tag";s:2:"h2";}', 'yes'),
(317, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1434683847;s:7:"checked";a:5:{s:19:"akismet/akismet.php";s:5:"3.1.1";s:9:"hello.php";s:3:"1.6";s:21:"newsletter/plugin.php";s:5:"3.8.2";s:43:"testimonials-widget/testimonials-widget.php";s:5:"3.1.1";s:43:"wp-customer-reviews/wp-customer-reviews.php";s:5:"2.4.8";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.2.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:21:"newsletter/plugin.php";O:8:"stdClass":6:{s:2:"id";s:4:"8171";s:4:"slug";s:10:"newsletter";s:6:"plugin";s:21:"newsletter/plugin.php";s:11:"new_version";s:5:"3.8.2";s:3:"url";s:41:"https://wordpress.org/plugins/newsletter/";s:7:"package";s:53:"https://downloads.wordpress.org/plugin/newsletter.zip";}s:43:"testimonials-widget/testimonials-widget.php";O:8:"stdClass":6:{s:2:"id";s:5:"24817";s:4:"slug";s:19:"testimonials-widget";s:6:"plugin";s:43:"testimonials-widget/testimonials-widget.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:50:"https://wordpress.org/plugins/testimonials-widget/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/testimonials-widget.3.1.1.zip";}s:43:"wp-customer-reviews/wp-customer-reviews.php";O:8:"stdClass":6:{s:2:"id";s:5:"20525";s:4:"slug";s:19:"wp-customer-reviews";s:6:"plugin";s:43:"wp-customer-reviews/wp-customer-reviews.php";s:11:"new_version";s:5:"2.4.8";s:3:"url";s:50:"https://wordpress.org/plugins/wp-customer-reviews/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wp-customer-reviews.zip";}}}', 'yes'),
(330, 'widget_newsletterwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(358, 'category_children', 'a:0:{}', 'yes'),
(422, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=208 ;

--
-- Dumping data untuk tabel `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_wp_attached_file', '2015/06/11189196_401901016661647_1369192602_n.jpg'),
(3, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:306;s:6:"height";i:306;s:4:"file";s:49:"2015/06/11189196_401901016661647_1369192602_n.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:49:"11189196_401901016661647_1369192602_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:49:"11189196_401901016661647_1369192602_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-sm";a:4:{s:4:"file";s:49:"11189196_401901016661647_1369192602_n-165x165.jpg";s:5:"width";i:165;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"slide-show";a:4:{s:4:"file";s:49:"11189196_401901016661647_1369192602_n-306x265.jpg";s:5:"width";i:306;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-lg";a:4:{s:4:"file";s:49:"11189196_401901016661647_1369192602_n-306x165.jpg";s:5:"width";i:306;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-md";a:4:{s:4:"file";s:49:"11189196_401901016661647_1369192602_n-270x250.jpg";s:5:"width";i:270;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-sm";a:4:{s:4:"file";s:47:"11189196_401901016661647_1369192602_n-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:10:"gallery-sm";a:4:{s:4:"file";s:49:"11189196_401901016661647_1369192602_n-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:7:"related";a:4:{s:4:"file";s:49:"11189196_401901016661647_1369192602_n-270x170.jpg";s:5:"width";i:270;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(4, 6, '_wp_attached_file', '2015/06/11189289_1568007853480086_1500705106_n.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:306;s:6:"height";i:306;s:4:"file";s:50:"2015/06/11189289_1568007853480086_1500705106_n.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"11189289_1568007853480086_1500705106_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"11189289_1568007853480086_1500705106_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-sm";a:4:{s:4:"file";s:50:"11189289_1568007853480086_1500705106_n-165x165.jpg";s:5:"width";i:165;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"slide-show";a:4:{s:4:"file";s:50:"11189289_1568007853480086_1500705106_n-306x265.jpg";s:5:"width";i:306;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-lg";a:4:{s:4:"file";s:50:"11189289_1568007853480086_1500705106_n-306x165.jpg";s:5:"width";i:306;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-md";a:4:{s:4:"file";s:50:"11189289_1568007853480086_1500705106_n-270x250.jpg";s:5:"width";i:270;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-sm";a:4:{s:4:"file";s:48:"11189289_1568007853480086_1500705106_n-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:10:"gallery-sm";a:4:{s:4:"file";s:50:"11189289_1568007853480086_1500705106_n-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:7:"related";a:4:{s:4:"file";s:50:"11189289_1568007853480086_1500705106_n-270x170.jpg";s:5:"width";i:270;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(6, 7, '_wp_attached_file', '2015/06/11190230_1828412207383805_1380420252_n.jpg'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:306;s:6:"height";i:306;s:4:"file";s:50:"2015/06/11190230_1828412207383805_1380420252_n.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"11190230_1828412207383805_1380420252_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"11190230_1828412207383805_1380420252_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-sm";a:4:{s:4:"file";s:50:"11190230_1828412207383805_1380420252_n-165x165.jpg";s:5:"width";i:165;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"slide-show";a:4:{s:4:"file";s:50:"11190230_1828412207383805_1380420252_n-306x265.jpg";s:5:"width";i:306;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-lg";a:4:{s:4:"file";s:50:"11190230_1828412207383805_1380420252_n-306x165.jpg";s:5:"width";i:306;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-md";a:4:{s:4:"file";s:50:"11190230_1828412207383805_1380420252_n-270x250.jpg";s:5:"width";i:270;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-sm";a:4:{s:4:"file";s:48:"11190230_1828412207383805_1380420252_n-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:10:"gallery-sm";a:4:{s:4:"file";s:50:"11190230_1828412207383805_1380420252_n-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:7:"related";a:4:{s:4:"file";s:50:"11190230_1828412207383805_1380420252_n-270x170.jpg";s:5:"width";i:270;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(8, 8, '_wp_attached_file', '2015/06/11191612_102380533428612_618137740_n.jpg'),
(9, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:306;s:6:"height";i:306;s:4:"file";s:48:"2015/06/11191612_102380533428612_618137740_n.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"11191612_102380533428612_618137740_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"11191612_102380533428612_618137740_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-sm";a:4:{s:4:"file";s:48:"11191612_102380533428612_618137740_n-165x165.jpg";s:5:"width";i:165;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"slide-show";a:4:{s:4:"file";s:48:"11191612_102380533428612_618137740_n-306x265.jpg";s:5:"width";i:306;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-lg";a:4:{s:4:"file";s:48:"11191612_102380533428612_618137740_n-306x165.jpg";s:5:"width";i:306;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-md";a:4:{s:4:"file";s:48:"11191612_102380533428612_618137740_n-270x250.jpg";s:5:"width";i:270;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-sm";a:4:{s:4:"file";s:46:"11191612_102380533428612_618137740_n-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:10:"gallery-sm";a:4:{s:4:"file";s:48:"11191612_102380533428612_618137740_n-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:7:"related";a:4:{s:4:"file";s:48:"11191612_102380533428612_618137740_n-270x170.jpg";s:5:"width";i:270;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(10, 4, '_edit_last', '1'),
(13, 4, '_edit_lock', '1434685021:1'),
(69, 20, '_edit_last', '1'),
(70, 20, '_edit_lock', '1434685013:1'),
(71, 22, '_wp_attached_file', '2015/06/759_276_cup_.jpg'),
(72, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:759;s:6:"height";i:276;s:4:"file";s:24:"2015/06/759_276_cup_.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"759_276_cup_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"759_276_cup_-300x109.jpg";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-lg";a:4:{s:4:"file";s:24:"759_276_cup_-750x276.jpg";s:5:"width";i:750;s:6:"height";i:276;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-sm";a:4:{s:4:"file";s:24:"759_276_cup_-165x165.jpg";s:5:"width";i:165;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"slide-show";a:4:{s:4:"file";s:24:"759_276_cup_-360x265.jpg";s:5:"width";i:360;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-lg";a:4:{s:4:"file";s:24:"759_276_cup_-360x165.jpg";s:5:"width";i:360;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-md";a:4:{s:4:"file";s:24:"759_276_cup_-270x250.jpg";s:5:"width";i:270;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-sm";a:4:{s:4:"file";s:22:"759_276_cup_-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:10:"gallery-sm";a:4:{s:4:"file";s:24:"759_276_cup_-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:7:"related";a:4:{s:4:"file";s:24:"759_276_cup_-270x170.jpg";s:5:"width";i:270;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(73, 20, '_thumbnail_id', '22'),
(74, 23, '_wp_attached_file', '2015/06/759_276_samurai_.jpg'),
(75, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:759;s:6:"height";i:246;s:4:"file";s:28:"2015/06/759_276_samurai_.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"759_276_samurai_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"759_276_samurai_-300x97.jpg";s:5:"width";i:300;s:6:"height";i:97;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-lg";a:4:{s:4:"file";s:28:"759_276_samurai_-750x246.jpg";s:5:"width";i:750;s:6:"height";i:246;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-sm";a:4:{s:4:"file";s:28:"759_276_samurai_-165x165.jpg";s:5:"width";i:165;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"slide-show";a:4:{s:4:"file";s:28:"759_276_samurai_-360x246.jpg";s:5:"width";i:360;s:6:"height";i:246;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-lg";a:4:{s:4:"file";s:28:"759_276_samurai_-360x165.jpg";s:5:"width";i:360;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-md";a:4:{s:4:"file";s:28:"759_276_samurai_-270x246.jpg";s:5:"width";i:270;s:6:"height";i:246;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-sm";a:4:{s:4:"file";s:26:"759_276_samurai_-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:10:"gallery-sm";a:4:{s:4:"file";s:28:"759_276_samurai_-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:7:"related";a:4:{s:4:"file";s:28:"759_276_samurai_-270x170.jpg";s:5:"width";i:270;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(76, 4, '_thumbnail_id', '23'),
(79, 25, '_edit_last', '1'),
(80, 25, '_edit_lock', '1434685005:1'),
(81, 26, '_wp_attached_file', '2015/06/a-lot_.jpg'),
(82, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:759;s:6:"height";i:276;s:4:"file";s:18:"2015/06/a-lot_.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"a-lot_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"a-lot_-300x109.jpg";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-lg";a:4:{s:4:"file";s:18:"a-lot_-750x276.jpg";s:5:"width";i:750;s:6:"height";i:276;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-sm";a:4:{s:4:"file";s:18:"a-lot_-165x165.jpg";s:5:"width";i:165;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"slide-show";a:4:{s:4:"file";s:18:"a-lot_-360x265.jpg";s:5:"width";i:360;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-lg";a:4:{s:4:"file";s:18:"a-lot_-360x165.jpg";s:5:"width";i:360;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-md";a:4:{s:4:"file";s:18:"a-lot_-270x250.jpg";s:5:"width";i:270;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-sm";a:4:{s:4:"file";s:16:"a-lot_-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:10:"gallery-sm";a:4:{s:4:"file";s:18:"a-lot_-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:7:"related";a:4:{s:4:"file";s:18:"a-lot_-270x170.jpg";s:5:"width";i:270;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(83, 25, '_thumbnail_id', '26'),
(90, 29, '_wp_attached_file', '2015/06/best_broker_.jpg'),
(91, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:297;s:6:"height";i:121;s:4:"file";s:24:"2015/06/best_broker_.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"best_broker_-150x121.jpg";s:5:"width";i:150;s:6:"height";i:121;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-sm";a:4:{s:4:"file";s:24:"best_broker_-165x121.jpg";s:5:"width";i:165;s:6:"height";i:121;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-md";a:4:{s:4:"file";s:24:"best_broker_-270x121.jpg";s:5:"width";i:270;s:6:"height";i:121;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-sm";a:4:{s:4:"file";s:22:"best_broker_-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:10:"gallery-sm";a:4:{s:4:"file";s:24:"best_broker_-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:7:"related";a:4:{s:4:"file";s:24:"best_broker_-270x121.jpg";s:5:"width";i:270;s:6:"height";i:121;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(95, 32, '_wp_attached_file', '2015/06/s_.jpg'),
(96, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:297;s:6:"height";i:121;s:4:"file";s:14:"2015/06/s_.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"s_-150x121.jpg";s:5:"width";i:150;s:6:"height";i:121;s:9:"mime-type";s:10:"image/jpeg";}s:9:"slider-sm";a:4:{s:4:"file";s:14:"s_-165x121.jpg";s:5:"width";i:165;s:6:"height";i:121;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-md";a:4:{s:4:"file";s:14:"s_-270x121.jpg";s:5:"width";i:270;s:6:"height";i:121;s:9:"mime-type";s:10:"image/jpeg";}s:10:"feature-sm";a:4:{s:4:"file";s:12:"s_-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:10:"gallery-sm";a:4:{s:4:"file";s:14:"s_-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:7:"related";a:4:{s:4:"file";s:14:"s_-270x121.jpg";s:5:"width";i:270;s:6:"height";i:121;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(106, 2, '_edit_lock', '1434652341:1'),
(107, 33, '_menu_item_type', 'post_type'),
(108, 33, '_menu_item_menu_item_parent', '0'),
(109, 33, '_menu_item_object_id', '2'),
(110, 33, '_menu_item_object', 'page'),
(111, 33, '_menu_item_target', ''),
(112, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 33, '_menu_item_xfn', ''),
(114, 33, '_menu_item_url', ''),
(115, 33, '_menu_item_orphaned', '1434682722'),
(116, 2, '_wp_trash_meta_status', 'publish'),
(117, 2, '_wp_trash_meta_time', '1434682764'),
(118, 35, '_edit_last', '1'),
(119, 35, '_edit_lock', '1434684414:1'),
(120, 35, '_wp_page_template', 'default'),
(121, 36, '_menu_item_type', 'post_type'),
(122, 36, '_menu_item_menu_item_parent', '0'),
(123, 36, '_menu_item_object_id', '35'),
(124, 36, '_menu_item_object', 'page'),
(125, 36, '_menu_item_target', ''),
(126, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 36, '_menu_item_xfn', ''),
(128, 36, '_menu_item_url', ''),
(129, 39, '_edit_last', '1'),
(130, 39, '_edit_lock', '1434682759:1'),
(131, 39, '_wp_page_template', 'default'),
(132, 40, '_menu_item_type', 'post_type'),
(133, 40, '_menu_item_menu_item_parent', '0'),
(134, 40, '_menu_item_object_id', '39'),
(135, 40, '_menu_item_object', 'page'),
(136, 40, '_menu_item_target', ''),
(137, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(138, 40, '_menu_item_xfn', ''),
(139, 40, '_menu_item_url', ''),
(149, 45, '_edit_last', '1'),
(150, 45, '_edit_lock', '1434684390:1'),
(151, 45, '_wp_page_template', 'default'),
(152, 46, 'wpcr_enable', '1'),
(153, 46, 'wpcr_product_name', 'Voltus Fx'),
(154, 46, '_menu_item_type', 'post_type'),
(155, 46, '_menu_item_menu_item_parent', '0'),
(156, 46, '_menu_item_object_id', '45'),
(157, 46, '_menu_item_object', 'page'),
(158, 46, '_menu_item_target', ''),
(159, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(160, 46, '_menu_item_xfn', ''),
(161, 46, '_menu_item_url', ''),
(162, 45, 'wpcr_enable', '1'),
(163, 45, 'wpcr_product_name', 'Voltus Fx'),
(164, 50, '_thumbnail_id', '32'),
(165, 50, '_edit_last', '1'),
(166, 50, '_edit_lock', '1434684653:1'),
(173, 1, '_wp_trash_meta_status', 'publish'),
(174, 1, '_wp_trash_meta_time', '1434685042'),
(175, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(176, 52, '_edit_last', '1'),
(177, 52, '_edit_lock', '1434685730:1'),
(178, 52, '_thumbnail_id', '32'),
(181, 55, '_edit_last', '1'),
(182, 55, '_edit_lock', '1434686000:1'),
(185, 57, '_edit_last', '1'),
(186, 57, '_edit_lock', '1434687717:1'),
(189, 59, '_edit_last', '1'),
(190, 59, '_edit_lock', '1434687888:1'),
(193, 61, '_edit_last', '1'),
(194, 61, '_edit_lock', '1434695548:1'),
(199, 63, '_edit_last', '1'),
(200, 63, '_edit_lock', '1434695375:1'),
(203, 63, '_thumbnail_id', '32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=65 ;

--
-- Dumping data untuk tabel `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-06-12 12:11:46', '2015-06-12 12:11:46', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2015-06-19 03:37:22', '2015-06-19 03:37:22', '', 0, 'http://localhost/bestopportunity/?p=1', 0, 'post', '', 1),
(2, 1, '2015-06-12 12:11:46', '2015-06-12 12:11:46', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/bestopportunity/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-06-19 02:59:24', '2015-06-19 02:59:24', '', 0, 'http://localhost/bestopportunity/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-06-12 12:20:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-06-12 12:20:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/bestopportunity/?p=3', 0, 'post', '', 0),
(4, 1, '2015-06-12 14:18:23', '2015-06-12 14:18:23', '', 'oke juga', '', 'publish', 'open', 'open', '', '4', '', '', '2015-06-19 03:37:01', '2015-06-19 03:37:01', '', 0, 'http://localhost/bestopportunity/?p=4', 0, 'post', '', 0),
(5, 1, '2015-06-12 14:17:07', '2015-06-12 14:17:07', '', '11189196_401901016661647_1369192602_n', '', 'inherit', 'open', 'open', '', '11189196_401901016661647_1369192602_n', '', '', '2015-06-12 14:17:07', '2015-06-12 14:17:07', '', 4, 'http://localhost/bestopportunity/wp-content/uploads/2015/06/11189196_401901016661647_1369192602_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2015-06-12 14:17:13', '2015-06-12 14:17:13', '', '11189289_1568007853480086_1500705106_n', '', 'inherit', 'open', 'open', '', '11189289_1568007853480086_1500705106_n', '', '', '2015-06-12 14:17:13', '2015-06-12 14:17:13', '', 4, 'http://localhost/bestopportunity/wp-content/uploads/2015/06/11189289_1568007853480086_1500705106_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2015-06-12 14:17:15', '2015-06-12 14:17:15', '', '11190230_1828412207383805_1380420252_n', '', 'inherit', 'open', 'open', '', '11190230_1828412207383805_1380420252_n', '', '', '2015-06-12 14:17:15', '2015-06-12 14:17:15', '', 4, 'http://localhost/bestopportunity/wp-content/uploads/2015/06/11190230_1828412207383805_1380420252_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2015-06-12 14:17:16', '2015-06-12 14:17:16', '', '11191612_102380533428612_618137740_n', '', 'inherit', 'open', 'open', '', '11191612_102380533428612_618137740_n', '', '', '2015-06-12 14:17:16', '2015-06-12 14:17:16', '', 4, 'http://localhost/bestopportunity/wp-content/uploads/2015/06/11191612_102380533428612_618137740_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2015-06-12 14:18:23', '2015-06-12 14:18:23', '[gallery ids="5,6,7,8"]', '', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-06-12 14:18:23', '2015-06-12 14:18:23', '', 4, 'http://localhost/bestopportunity/2015/06/12/4-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2015-06-12 14:20:08', '2015-06-12 14:20:08', '<a href="http://localhost/bestopportunity/wp-content/uploads/2015/06/11191612_102380533428612_618137740_n.jpg"><img class="alignnone size-medium wp-image-8" src="http://localhost/bestopportunity/wp-content/uploads/2015/06/11191612_102380533428612_618137740_n-300x300.jpg" alt="11191612_102380533428612_618137740_n" width="300" height="300" /></a>', 'oke juga', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-06-12 14:20:08', '2015-06-12 14:20:08', '', 4, 'http://localhost/bestopportunity/2015/06/12/4-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2015-06-12 14:22:12', '2015-06-12 14:22:12', 'asdadasdasdad', 'oke juga', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-06-12 14:22:12', '2015-06-12 14:22:12', '', 4, 'http://localhost/bestopportunity/2015/06/12/4-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2015-06-12 14:23:35', '2015-06-12 14:23:35', '', 'oke juga', '', 'inherit', 'open', 'open', '', '4-autosave-v1', '', '', '2015-06-12 14:23:35', '2015-06-12 14:23:35', '', 4, 'http://localhost/bestopportunity/2015/06/12/4-autosave-v1/', 0, 'revision', '', 0),
(13, 1, '2015-06-12 14:24:14', '2015-06-12 14:24:14', '<a href="http://localhost/bestopportunity/wp-content/uploads/2015/06/11191612_102380533428612_618137740_n.jpg"><img class="alignnone size-medium wp-image-8" src="http://localhost/bestopportunity/wp-content/uploads/2015/06/11191612_102380533428612_618137740_n-300x300.jpg" alt="11191612_102380533428612_618137740_n" width="300" height="300" /></a>', 'oke juga', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-06-12 14:24:14', '2015-06-12 14:24:14', '', 4, 'http://localhost/bestopportunity/2015/06/12/4-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2015-06-12 14:32:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-06-12 14:32:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/bestopportunity/?page_id=14', 0, 'page', '', 0),
(20, 1, '2015-06-12 17:44:10', '2015-06-12 17:44:10', '', 'uhuhu', '', 'publish', 'open', 'open', '', 'uhuhu', '', '', '2015-06-19 03:36:53', '2015-06-19 03:36:53', '', 0, 'http://localhost/bestopportunity/?p=20', 0, 'post', '', 0),
(21, 1, '2015-06-12 17:44:10', '2015-06-12 17:44:10', '', 'uhuhu', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-06-12 17:44:10', '2015-06-12 17:44:10', '', 20, 'http://localhost/bestopportunity/2015/06/12/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2015-06-13 11:27:46', '2015-06-13 11:27:46', '', '759_276_cup_', '', 'inherit', 'open', 'open', '', '759_276_cup_', '', '', '2015-06-13 11:27:46', '2015-06-13 11:27:46', '', 20, 'http://localhost/bestopportunity/wp-content/uploads/2015/06/759_276_cup_.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2015-06-13 13:04:27', '2015-06-13 13:04:27', '', '759_276_samurai_', '', 'inherit', 'open', 'open', '', '759_276_samurai_', '', '', '2015-06-13 13:04:27', '2015-06-13 13:04:27', '', 4, 'http://localhost/bestopportunity/wp-content/uploads/2015/06/759_276_samurai_.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2015-06-13 13:04:38', '2015-06-13 13:04:38', '', 'oke juga', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-06-13 13:04:38', '2015-06-13 13:04:38', '', 4, 'http://localhost/bestopportunity/2015/06/13/4-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2015-06-14 05:50:12', '2015-06-14 05:50:12', '', 'akk', '', 'publish', 'open', 'open', '', 'akk', '', '', '2015-06-19 03:36:45', '2015-06-19 03:36:45', '', 0, 'http://localhost/bestopportunity/?p=25', 0, 'post', '', 0),
(26, 1, '2015-06-14 05:50:01', '2015-06-14 05:50:01', '', 'a-lot_', '', 'inherit', 'open', 'open', '', 'a-lot_', '', '', '2015-06-14 05:50:01', '2015-06-14 05:50:01', '', 25, 'http://localhost/bestopportunity/wp-content/uploads/2015/06/a-lot_.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2015-06-14 05:50:12', '2015-06-14 05:50:12', '', 'akk', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-06-14 05:50:12', '2015-06-14 05:50:12', '', 25, 'http://localhost/bestopportunity/2015/06/14/25-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2015-06-14 05:51:17', '2015-06-14 05:51:17', '', 'best_broker_', '', 'inherit', 'open', 'open', '', 'best_broker_', '', '', '2015-06-14 05:51:17', '2015-06-14 05:51:17', '', 0, 'http://localhost/bestopportunity/wp-content/uploads/2015/06/best_broker_.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2015-06-14 05:52:56', '2015-06-14 05:52:56', '', 's_', '', 'inherit', 'open', 'open', '', 's_', '', '', '2015-06-19 03:32:31', '2015-06-19 03:32:31', '', 50, 'http://localhost/bestopportunity/wp-content/uploads/2015/06/s_.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2015-06-19 02:58:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-19 02:58:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/voltusfx/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2015-06-19 02:59:24', '2015-06-19 02:59:24', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/bestopportunity/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-06-19 02:59:24', '2015-06-19 02:59:24', '', 2, 'http://localhost/voltusfx/2015/06/19/2-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2015-06-19 03:00:21', '2015-06-19 03:00:21', 'Cara bergabung menjadi member', 'How To Joint', '', 'publish', 'open', 'closed', '', 'joint-meber', '', '', '2015-06-19 03:26:54', '2015-06-19 03:26:54', '', 0, 'http://localhost/voltusfx/?page_id=35', 0, 'page', '', 0),
(36, 1, '2015-06-19 03:00:21', '2015-06-19 03:00:21', ' ', '', '', 'publish', 'open', 'open', '', '36', '', '', '2015-06-19 03:04:19', '2015-06-19 03:04:19', '', 0, 'http://localhost/voltusfx/2015/06/19/36/', 1, 'nav_menu_item', '', 0),
(37, 1, '2015-06-19 03:00:21', '2015-06-19 03:00:21', 'Cara bergabung menjadi member', 'Menjadi Meber', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2015-06-19 03:00:21', '2015-06-19 03:00:21', '', 35, 'http://localhost/voltusfx/2015/06/19/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2015-06-19 03:00:29', '2015-06-19 03:00:29', 'Cara bergabung menjadi member', 'Menjadi Member', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2015-06-19 03:00:29', '2015-06-19 03:00:29', '', 35, 'http://localhost/voltusfx/2015/06/19/35-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2015-06-19 03:01:22', '2015-06-19 03:01:22', 'Cara marketing plan', 'Marketing Plan', '', 'publish', 'open', 'open', '', 'marketing-plan', '', '', '2015-06-19 03:01:22', '2015-06-19 03:01:22', '', 0, 'http://localhost/voltusfx/?page_id=39', 0, 'page', '', 0),
(40, 1, '2015-06-19 03:01:22', '2015-06-19 03:01:22', ' ', '', '', 'publish', 'open', 'open', '', '40', '', '', '2015-06-19 03:04:19', '2015-06-19 03:04:19', '', 0, 'http://localhost/voltusfx/2015/06/19/40/', 2, 'nav_menu_item', '', 0),
(41, 1, '2015-06-19 03:01:22', '2015-06-19 03:01:22', 'Cara marketing plan', 'Marketing Plan', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-06-19 03:01:22', '2015-06-19 03:01:22', '', 39, 'http://localhost/voltusfx/2015/06/19/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2015-06-19 03:02:01', '2015-06-19 03:02:01', 'Cara bergabung menjadi member', 'Joint Member', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2015-06-19 03:02:01', '2015-06-19 03:02:01', '', 35, 'http://localhost/voltusfx/2015/06/19/35-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2015-06-19 03:07:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-06-19 03:07:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/voltusfx/?post_type=testimonials-widget&p=44', 0, 'testimonials-widget', '', 0),
(45, 1, '2015-06-19 03:19:09', '2015-06-19 03:19:09', '', 'Testimonial', '', 'publish', 'open', 'closed', '', 'give-testimonial', '', '', '2015-06-19 03:26:29', '2015-06-19 03:26:29', '', 0, 'http://localhost/voltusfx/?page_id=45', 0, 'page', '', 0),
(46, 1, '2015-06-19 03:19:09', '2015-06-19 03:19:09', ' ', '', '', 'publish', 'open', 'open', '', '46', '', '', '2015-06-19 03:19:09', '2015-06-19 03:19:09', '', 0, 'http://localhost/voltusfx/2015/06/19/46/', 3, 'nav_menu_item', '', 0),
(47, 1, '2015-06-19 03:19:09', '2015-06-19 03:19:09', '', 'Give Testimonial', '', 'inherit', 'open', 'open', '', '45-revision-v1', '', '', '2015-06-19 03:19:09', '2015-06-19 03:19:09', '', 45, 'http://localhost/voltusfx/2015/06/19/45-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-06-19 03:26:29', '2015-06-19 03:26:29', '', 'Testimonial', '', 'inherit', 'open', 'open', '', '45-revision-v1', '', '', '2015-06-19 03:26:29', '2015-06-19 03:26:29', '', 45, 'http://localhost/voltusfx/2015/06/19/45-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2015-06-19 03:26:54', '2015-06-19 03:26:54', 'Cara bergabung menjadi member', 'How To Joint', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2015-06-19 03:26:54', '2015-06-19 03:26:54', '', 35, 'http://localhost/voltusfx/2015/06/19/35-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-06-19 03:31:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-06-19 03:31:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/voltusfx/?p=50', 0, 'post', '', 0),
(51, 1, '2015-06-19 03:37:22', '2015-06-19 03:37:22', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-06-19 03:37:22', '2015-06-19 03:37:22', '', 1, 'http://localhost/voltusfx/2015/06/19/1-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2015-06-19 03:38:21', '2015-06-19 03:38:21', '', 'Raih Income Milyaran', '', 'publish', 'open', 'open', '', 'raih-income-milyaran', '', '', '2015-06-19 03:38:21', '2015-06-19 03:38:21', '', 0, 'http://localhost/voltusfx/?p=52', 0, 'post', '', 0),
(53, 1, '2015-06-19 03:38:21', '2015-06-19 03:38:21', '', 'Raih Income Milyaran', '', 'inherit', 'open', 'open', '', '52-revision-v1', '', '', '2015-06-19 03:38:21', '2015-06-19 03:38:21', '', 52, 'http://localhost/voltusfx/2015/06/19/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2015-06-19 03:51:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-06-19 03:51:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/voltusfx/?p=54', 0, 'post', '', 0),
(55, 1, '2015-06-19 03:54:19', '2015-06-19 03:54:19', 'Isi berita / informasi 1\r\n\r\ngunakan kategori berita', 'Berita 1', '', 'publish', 'open', 'open', '', 'berita-1', '', '', '2015-06-19 03:54:19', '2015-06-19 03:54:19', '', 0, 'http://localhost/voltusfx/?p=55', 0, 'post', '', 0),
(56, 1, '2015-06-19 03:54:19', '2015-06-19 03:54:19', 'Isi berita / informasi 1\r\n\r\ngunakan kategori berita', 'Berita 1', '', 'inherit', 'open', 'open', '', '55-revision-v1', '', '', '2015-06-19 03:54:19', '2015-06-19 03:54:19', '', 55, 'http://localhost/voltusfx/2015/06/19/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2015-06-19 04:19:52', '2015-06-19 04:19:52', 'Isi kategori berita 2', 'Berita 2', '', 'publish', 'open', 'open', '', 'berita-2', '', '', '2015-06-19 04:19:52', '2015-06-19 04:19:52', '', 0, 'http://localhost/voltusfx/?p=57', 0, 'post', '', 0),
(58, 1, '2015-06-19 04:19:52', '2015-06-19 04:19:52', 'Isi kategori berita 2', 'Berita 2', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-06-19 04:19:52', '2015-06-19 04:19:52', '', 57, 'http://localhost/voltusfx/2015/06/19/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2015-06-19 04:24:35', '2015-06-19 04:24:35', 'sdfsdfs', 'berita 3', '', 'publish', 'open', 'open', '', 'berita-3', '', '', '2015-06-19 04:24:35', '2015-06-19 04:24:35', '', 0, 'http://localhost/voltusfx/?p=59', 0, 'post', '', 0),
(60, 1, '2015-06-19 04:24:35', '2015-06-19 04:24:35', 'sdfsdfs', 'berita 3', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2015-06-19 04:24:35', '2015-06-19 04:24:35', '', 59, 'http://localhost/voltusfx/2015/06/19/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-06-19 04:27:23', '2015-06-19 04:27:23', 'asdasd', 'berita 3', '', 'publish', 'open', 'open', '', 'berita-3-2', '', '', '2015-06-19 06:32:28', '2015-06-19 06:32:28', '', 0, 'http://localhost/voltusfx/?p=61', 0, 'post', '', 0),
(62, 1, '2015-06-19 04:27:23', '2015-06-19 04:27:23', 'asdasd', 'berita 3', '', 'inherit', 'open', 'open', '', '61-revision-v1', '', '', '2015-06-19 04:27:23', '2015-06-19 04:27:23', '', 61, 'http://localhost/voltusfx/2015/06/19/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-06-19 04:28:01', '2015-06-19 04:28:01', 'aa ans na asd', 'berita 4', '', 'publish', 'open', 'open', '', 'berita-4', '', '', '2015-06-19 04:31:36', '2015-06-19 04:31:36', '', 0, 'http://localhost/voltusfx/?p=63', 0, 'post', '', 0),
(64, 1, '2015-06-19 04:28:01', '2015-06-19 04:28:01', 'aa ans na asd', 'berita 4', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2015-06-19 04:28:01', '2015-06-19 04:28:01', '', 63, 'http://localhost/voltusfx/2015/06/19/63-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'post-format-gallery', 'post-format-gallery', 0),
(3, 'menu_utama', 'menu_utama', 0),
(4, 'Banner', 'banner', 0),
(5, 'Berita', 'berita', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 2, 0),
(4, 4, 0),
(20, 4, 0),
(25, 4, 0),
(36, 3, 0),
(40, 3, 0),
(46, 3, 0),
(52, 1, 0),
(55, 5, 0),
(57, 5, 0),
(59, 5, 0),
(61, 5, 0),
(63, 5, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'post_format', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1434118700'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(20, 1, 'session_tokens', 'a:7:{s:64:"2b8bc0a3b3e2787724ab72cdfa4d374507462717c66662b47fff2252e388d4ae";a:4:{s:10:"expiration";i:1434810619;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36";s:5:"login";i:1434637819;}s:64:"17a6f235c42c64948010ac4a9c1f35b02a3d4db56da711ff6bce7791c4dd9dba";a:4:{s:10:"expiration";i:1434810630;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36";s:5:"login";i:1434637830;}s:64:"830d95e07e2ee4e5e0deab9553698837f1debe1e35ed261299ad233621ee843e";a:4:{s:10:"expiration";i:1434810640;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36";s:5:"login";i:1434637840;}s:64:"415c91ae8d61496c0187d09ec273415ae4eaf7db1c1aabce5b9c8be72541088e";a:4:{s:10:"expiration";i:1434810664;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36";s:5:"login";i:1434637864;}s:64:"eac6af08ba998b6181f01b14a1490c8cd0a5b6ef44228b333014954bc7181b19";a:4:{s:10:"expiration";i:1434810746;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36";s:5:"login";i:1434637946;}s:64:"87d1adac1203c5a2d02904c398ca5dcf9d423682722bfe4b0eb6447e060c0b53";a:4:{s:10:"expiration";i:1434810753;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36";s:5:"login";i:1434637953;}s:64:"d3495057fdb52e076523d2163aedb797b14206bd67d6be29f7526ad3bfc698fa";a:4:{s:10:"expiration";i:1434810780;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36";s:5:"login";i:1434637980;}}'),
(21, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BPwqANecvXCTaI3lFU4MujjrrP9BnK.', 'admin', 'anggakesuma@gmail.com', '', '2015-06-12 12:11:45', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_wpcreviews`
--

CREATE TABLE IF NOT EXISTS `wp_wpcreviews` (
`id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `reviewer_name` varchar(150) DEFAULT NULL,
  `reviewer_email` varchar(150) DEFAULT NULL,
  `reviewer_ip` varchar(15) DEFAULT NULL,
  `review_title` varchar(150) DEFAULT NULL,
  `review_text` text,
  `review_response` text,
  `status` tinyint(1) DEFAULT '0',
  `review_rating` tinyint(2) DEFAULT '0',
  `reviewer_url` varchar(255) NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `custom_fields` text
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `wp_wpcreviews`
--

INSERT INTO `wp_wpcreviews` (`id`, `date_time`, `reviewer_name`, `reviewer_email`, `reviewer_ip`, `review_title`, `review_text`, `review_response`, `status`, `review_rating`, `reviewer_url`, `page_id`, `custom_fields`) VALUES
(1, '2015-06-19 03:20:16', 'ananasdamn', 'as@asda.com', '::1', 'as', 'asasasasjd asdjnjansd kjasndjansd', NULL, 1, 3, 'http://asdasd.com', 45, 'a:1:{s:11:"Member Code";s:2:"As";}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
 ADD PRIMARY KEY (`id`), ADD KEY `email_id` (`email_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `wp_wpcreviews`
--
ALTER TABLE `wp_wpcreviews`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`), ADD KEY `page_id` (`page_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=447;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wpcreviews`
--
ALTER TABLE `wp_wpcreviews`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
