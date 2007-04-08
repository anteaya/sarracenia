SET NAMES latin1;
SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `users` (
  `id` int(20) NOT NULL auto_increment,
  `company_id` int(20) NOT NULL,
  `user_type` int(1) default NULL,
  `user_name` varchar(64) default '',
  `first_name` varchar(128) default '',
  `last_name` varchar(128) default '',
  `email` varchar(128) default '',
  `phone` varchar(20) default '',
  `password` varchar(1024) default '',
  `should_notify` int(1) default NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into `users` values('1','0','0','asmith','Aaron','Smith','beingthexemplary@gmail.com','7863741852','smithers','1','0000-00-00 00:00:00','2007-04-06 13:36:15'),
 ('2','0','0','davidh','David','Hasselhoff','hasselhoffary@gmail.com','8004567834','davidh','0','0000-00-00 00:00:00','0000-00-00 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
