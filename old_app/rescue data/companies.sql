SET NAMES latin1;
SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `companies` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  `created_on` datetime NOT NULL,
  `updated_on` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

insert into `companies` values('1','cpb','0000-00-00 00:00:00','2007-04-06 13:39:53'),
 ('2','skimatic','0000-00-00 00:00:00','2007-04-06 13:39:59');

SET FOREIGN_KEY_CHECKS = 1;
