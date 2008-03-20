SET NAMES latin1;
SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `projects` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  `company` varchar(64) NOT NULL default '',
  `created_on` datetime NOT NULL,
  `udpated_on` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into `projects` values('1','rubyamf','adakasoft','0000-00-00 00:00:00','0000-00-00 00:00:00'),
 ('2','manlaws','cpb','0000-00-00 00:00:00','0000-00-00 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
