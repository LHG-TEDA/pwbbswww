DROP TABLE IF EXISTS `pw_application`;
CREATE TABLE `pw_application` (
`app_id` CHAR(20) NOT NULL DEFAULT '',
`name` VARCHAR(100) NOT NULL DEFAULT '',
`alias` VARCHAR(100) NOT NULL DEFAULT '',
`logo` VARCHAR(100) NOT NULL DEFAULT '',
`author_name` VARCHAR(30) NOT NULL DEFAULT '',
`author_icon` VARCHAR(100) NOT NULL DEFAULT '',
`author_email` VARCHAR(200) NOT NULL DEFAULT '',
`website` VARCHAR(200) NOT NULL DEFAULT '',
`version` VARCHAR(50) NOT NULL DEFAULT '',
`pw_version` VARCHAR(50) NOT NULL DEFAULT '',
`created_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
`modified_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
`description` VARCHAR(255) NOT NULL DEFAULT '',
PRIMARY KEY (`app_id`),
UNIQUE (`alias`)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pw_application_log`;
CREATE TABLE `pw_application_log` (
`app_id` CHAR(20) NOT NULL DEFAULT '',
`log_type` CHAR(10) NOT NULL DEFAULT '',
`created_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
`modified_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
`data` TEXT NOT NULL DEFAULT '', 
UNIQUE (`app_id`,`log_type`)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pw_style`;
CREATE TABLE `pw_style` (
`app_id` CHAR(20) NOT NULL DEFAULT '',
`iscurrent` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
`style_type` CHAR(10) NOT NULL DEFAULT '',
`name` VARCHAR(100) NOT NULL DEFAULT '',
`alias` VARCHAR(100) NOT NULL DEFAULT '',
`logo` VARCHAR(100) NOT NULL DEFAULT '',
`author_name` VARCHAR(30) NOT NULL DEFAULT '',
`author_icon` VARCHAR(100) NOT NULL DEFAULT '',
`author_email` VARCHAR(200) NOT NULL DEFAULT '',
`website` VARCHAR(200) NOT NULL DEFAULT '',
`version` VARCHAR(50) NOT NULL DEFAULT '',
`pw_version` VARCHAR(50) NOT NULL DEFAULT '',
`created_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
`modified_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
`description` VARCHAR(255) NOT NULL DEFAULT '',
PRIMARY KEY (`app_id`)
)ENGINE=MYISAM DEFAULT CHARSET=UTF8;
