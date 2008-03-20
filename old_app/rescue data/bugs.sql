SET NAMES latin1;
SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `bugs` (
  `id` int(20) NOT NULL auto_increment,
  `user_id` int(20) NOT NULL,
  `project_id` int(20) NOT NULL,
  `title` varchar(500) NOT NULL default '',
  `description` text NOT NULL,
  `level` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `feedback` int(1) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into `bugs` values('1','1','1','rubyamf webrick not working correclty on windows','same as title','0','0','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),
 ('2','2','2','manlaws needs to be ripped down','same as title and stuff','0','0','0','0000-00-00 00:00:00','0000-00-00 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
