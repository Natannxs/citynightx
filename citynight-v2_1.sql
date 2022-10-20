-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Listage de la structure de la table corev2. accounts_panel
CREATE TABLE IF NOT EXISTS `accounts_panel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steamhex` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `last_connection` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. banking_account
CREATE TABLE IF NOT EXISTS `banking_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL DEFAULT '0',
  `uuid` varchar(255) NOT NULL DEFAULT '0',
  `coowner` longtext,
  `amount` int(11) NOT NULL DEFAULT '0',
  `iban` longtext,
  `todayratio` varchar(255) DEFAULT '{"remove":0,"deposit":0,"maxRemove":5000,"maxDeposit":5000}',
  `phone_number` int(11) DEFAULT NULL,
  `bloqued` varchar(50) DEFAULT 'false',
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  KEY `uuid_2` (`uuid`),
  KEY `uuid_3` (`uuid`),
  KEY `uuid_4` (`uuid`),
  KEY `uuid_5` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=415 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. banking_cards
CREATE TABLE IF NOT EXISTS `banking_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `uuid` varchar(50) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `number` varchar(50) NOT NULL DEFAULT '0',
  `current_ratio` varchar(120) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  KEY `account` (`account`),
  KEY `uuid_2` (`uuid`),
  KEY `account_2` (`account`),
  KEY `uuid_3` (`uuid`),
  KEY `account_3` (`account`),
  KEY `uuid_4` (`uuid`),
  KEY `account_4` (`account`),
  KEY `uuid_5` (`uuid`),
  KEY `account_5` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. banking_prets
CREATE TABLE IF NOT EXISTS `banking_prets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL DEFAULT '0',
  `account` int(11) NOT NULL DEFAULT '0',
  `total` int(11) NOT NULL DEFAULT '0',
  `current` int(11) NOT NULL DEFAULT '0',
  `percent` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `base_amount` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. banking_transactions
CREATE TABLE IF NOT EXISTS `banking_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(50) DEFAULT NULL,
  `dest` varchar(50) DEFAULT NULL,
  `montant` varchar(50) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `src` (`src`),
  KEY `dest` (`dest`),
  KEY `src_2` (`src`),
  KEY `dest_2` (`dest`),
  KEY `src_3` (`src`),
  KEY `dest_3` (`dest`),
  KEY `src_4` (`src`),
  KEY `dest_4` (`dest`)
) ENGINE=InnoDB AUTO_INCREMENT=6762 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. criminal_records
CREATE TABLE IF NOT EXISTS `criminal_records` (
  `id` int(11) NOT NULL,
  `title` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '0',
  `desc` varchar(255) NOT NULL DEFAULT '0',
  `coupable` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. darknet_messages
CREATE TABLE IF NOT EXISTS `darknet_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(50) NOT NULL DEFAULT '0',
  `dest` varchar(50) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  `date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `dest` (`dest`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. dpkeybinds
CREATE TABLE IF NOT EXISTS `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. lotery
CREATE TABLE IF NOT EXISTS `lotery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participants` longtext NOT NULL,
  `winner_number` int(11) NOT NULL DEFAULT '0',
  `winners` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. mailing
CREATE TABLE IF NOT EXISTS `mailing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailTo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `mailFrom` varchar(255) NOT NULL DEFAULT '0',
  `expeditor` varchar(255) NOT NULL DEFAULT '0',
  `receiver` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5769 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. migration
CREATE TABLE IF NOT EXISTS `migration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `migration_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. motos_sold
CREATE TABLE IF NOT EXISTS `motos_sold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `prices` varchar(50) NOT NULL DEFAULT '0',
  `vendor` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buyer` (`buyer`),
  KEY `vendor` (`vendor`),
  KEY `buyer_2` (`buyer`),
  KEY `vendor_2` (`vendor`),
  KEY `buyer_3` (`buyer`),
  KEY `vendor_3` (`vendor`),
  KEY `buyer_4` (`buyer`),
  KEY `vendor_4` (`vendor`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `num` (`num`),
  KEY `owner_2` (`owner`),
  KEY `num_2` (`num`),
  KEY `owner_3` (`owner`),
  KEY `num_3` (`num`),
  KEY `owner_4` (`owner`),
  KEY `num_4` (`num`),
  KEY `owner_5` (`owner`),
  KEY `num_5` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=45989 DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) DEFAULT NULL,
  `receiver` varchar(10) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `transmitter` (`transmitter`),
  KEY `receiver` (`receiver`),
  KEY `time` (`time`),
  KEY `transmitter_2` (`transmitter`),
  KEY `receiver_2` (`receiver`),
  KEY `time_2` (`time`),
  KEY `transmitter_3` (`transmitter`),
  KEY `receiver_3` (`receiver`),
  KEY `time_3` (`time`),
  KEY `transmitter_4` (`transmitter`),
  KEY `receiver_4` (`receiver`),
  KEY `time_4` (`time`),
  KEY `transmitter_5` (`transmitter`),
  KEY `receiver_5` (`receiver`),
  KEY `time_5` (`time`)
) ENGINE=MyISAM AUTO_INCREMENT=94157 DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4825 DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_appartement
CREATE TABLE IF NOT EXISTS `players_appartement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capacity` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pos` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `indexx` int(11) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `coowner` text,
  `table_index` int(11) DEFAULT NULL,
  `time` bigint(11) DEFAULT NULL,
  `garagePos` varchar(255) DEFAULT NULL,
  `garageMax` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_appearance
CREATE TABLE IF NOT EXISTS `players_appearance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL DEFAULT 'mp_m_freemode_01',
  `face` text,
  `outfit` text,
  `tattoo` text,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  KEY `uuid_2` (`uuid`),
  KEY `uuid_3` (`uuid`),
  KEY `uuid_4` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8mb4;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_bans
CREATE TABLE IF NOT EXISTS `players_bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `moderator` varchar(50) NOT NULL DEFAULT '0',
  `unbandate` varchar(50) NOT NULL DEFAULT '0',
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_computer_accounts
CREATE TABLE IF NOT EXISTS `players_computer_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '0',
  `perms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_identity
CREATE TABLE IF NOT EXISTS `players_identity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `face_picutre` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `birth_date` text NOT NULL,
  `origine` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  KEY `uuid_2` (`uuid`),
  KEY `uuid_3` (`uuid`),
  KEY `uuid_4` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8mb4;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_inventory
CREATE TABLE IF NOT EXISTS `players_inventory` (
  `id` int(11) DEFAULT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `inventory` longtext COLLATE utf8mb4_bin NOT NULL,
  KEY `uuid` (`uuid`),
  KEY `id` (`id`),
  KEY `uuid_2` (`uuid`),
  KEY `uuid_3` (`uuid`),
  KEY `uuid_4` (`uuid`),
  KEY `uuid_5` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_jobs
CREATE TABLE IF NOT EXISTS `players_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `rank` int(11) NOT NULL,
  `orga` text,
  `orga_rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  KEY `uuid_2` (`uuid`),
  KEY `uuid_3` (`uuid`),
  KEY `uuid_4` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8mb4;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_labo
CREATE TABLE IF NOT EXISTS `players_labo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `capacity` varchar(50) DEFAULT NULL,
  `entry` varchar(250) DEFAULT NULL,
  `indexx` int(11) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `coowner` varchar(255) DEFAULT NULL,
  `current` varchar(255) DEFAULT NULL,
  `workers` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_needs
CREATE TABLE IF NOT EXISTS `players_needs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `food` int(11) NOT NULL,
  `drink` int(11) NOT NULL,
  `sickness` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_parking
CREATE TABLE IF NOT EXISTS `players_parking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garage` varchar(50) NOT NULL DEFAULT '0',
  `vehicles` longtext NOT NULL,
  `uuid` varchar(255) NOT NULL DEFAULT '0',
  `label` varchar(50) NOT NULL DEFAULT '0',
  `plate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_settings
CREATE TABLE IF NOT EXISTS `players_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `bind` text NOT NULL,
  `colors` text NOT NULL,
  `outfit` text NOT NULL,
  `farm_limit` int(11) NOT NULL,
  `demarche` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_vehicles
CREATE TABLE IF NOT EXISTS `players_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `settings` longtext,
  `data` varchar(255) NOT NULL DEFAULT '',
  `pound` tinyint(1) DEFAULT '0',
  `label` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  KEY `plate` (`plate`),
  KEY `uuid_2` (`uuid`),
  KEY `plate_2` (`plate`),
  KEY `uuid_3` (`uuid`),
  KEY `plate_3` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_warns
CREATE TABLE IF NOT EXISTS `players_warns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `moderator` varchar(50) NOT NULL DEFAULT '0',
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. players_weapon
CREATE TABLE IF NOT EXISTS `players_weapon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` int(11) NOT NULL DEFAULT '0',
  `weapon_name` varchar(50) NOT NULL DEFAULT '0',
  `user` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=553 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. server_logs
CREATE TABLE IF NOT EXISTS `server_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. storages_inventory_accounts
CREATE TABLE IF NOT EXISTS `storages_inventory_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` int(11) NOT NULL DEFAULT '0',
  `dark_money` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. storages_inventory_items
CREATE TABLE IF NOT EXISTS `storages_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `itemName` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `metadata` longtext COLLATE utf8mb4_bin,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=402256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. storages_inventory_items2
CREATE TABLE IF NOT EXISTS `storages_inventory_items2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `storage_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) unsigned NOT NULL DEFAULT '1',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_storage_item` (`storage_name`,`item_name`)
) ENGINE=InnoDB AUTO_INCREMENT=75575 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `food` int(11) DEFAULT '100',
  `thirst` int(11) DEFAULT '100',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `money` int(11) DEFAULT '1500',
  `black_money` int(11) DEFAULT '0',
  `permission_level` int(11) DEFAULT '0',
  `xp` int(11) DEFAULT '0',
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `farm_limit` int(8) DEFAULT '0',
  `strength` int(11) NOT NULL DEFAULT '0',
  `colors` varchar(255) COLLATE utf8mb4_bin DEFAULT '[]',
  `demarche` int(11) NOT NULL DEFAULT '1',
  `binds` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  KEY `identifier` (`identifier`),
  KEY `identifier_2` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=674 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. vehicles_sold
CREATE TABLE IF NOT EXISTS `vehicles_sold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer` varchar(50) DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `prices` varchar(50) NOT NULL DEFAULT '0',
  `vendor` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buyer` (`buyer`),
  KEY `plate` (`plate`),
  KEY `vendor` (`vendor`),
  KEY `buyer_2` (`buyer`),
  KEY `plate_2` (`plate`),
  KEY `vendor_2` (`vendor`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. vehicles_sold_nord
CREATE TABLE IF NOT EXISTS `vehicles_sold_nord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `model` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `plate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `prices` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `vendor` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `date` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buyer` (`buyer`),
  KEY `plate` (`plate`),
  KEY `vendor` (`vendor`),
  KEY `buyer_2` (`buyer`),
  KEY `plate_2` (`plate`),
  KEY `vendor_2` (`vendor`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table corev2. whitelist
CREATE TABLE IF NOT EXISTS `whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` text NOT NULL,
  `character_count` int(11) NOT NULL DEFAULT '0',
  `character_limit` int(1) NOT NULL DEFAULT '1',
  `permanent_ban` tinyint(1) DEFAULT '0',
  `ban_expire_at` int(11) DEFAULT NULL,
  `reason` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=769 DEFAULT CHARSET=utf8mb4;

-- Les données exportées n'étaient pas sélectionnées.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
